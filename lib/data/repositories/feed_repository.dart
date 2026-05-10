import 'package:hive_flutter/hive_flutter.dart';
import '../../core/constants/feed_sources.dart';
import '../models/feed_item.dart';
import '../models/feed_source.dart';
import '../sources/content_extractor.dart';
import '../sources/rss_feed_source.dart';

class FeedRepository {
  static const _feedBox = 'feed_items';
  static const _contentBox = 'article_content';
  static const _keepDays = 5;

  Future<List<FeedItem>> fetchAll() async {
    final results = await Future.wait(
      kFeedSources.map(
        (s) => RssFeedSource.fetch(s).catchError((_) => <FeedItem>[]),
      ),
    );

    final all = results.expand((items) => items).toList();
    final deduplicated = _deduplicate(all);

    await _persistItems(deduplicated);
    await _pruneOldItems();

    // Pre-fetch article content for articles (not podcasts/videos)
    _prefetchContent(deduplicated);

    return deduplicated;
  }

  Future<List<FeedItem>> getCached() async {
    final box = await _openFeedBox();
    return box.values
        .map((raw) => FeedItem.fromMap(raw))
        .toList()
        .cast<FeedItem>();
  }

  Future<FeedItem> loadContent(FeedItem item) async {
    if (item.hasContent) return item;
    if (item.contentType != ContentType.article) return item;

    final contentBox = await _openContentBox();
    final cached = contentBox.get(item.id);
    if (cached != null) {
      return item.copyWith(content: cached as String);
    }

    final extracted = await ContentExtractor.extract(item.url);
    if (extracted != null) {
      await contentBox.put(item.id, extracted);
      return item.copyWith(content: extracted);
    }

    return item;
  }

  void _prefetchContent(List<FeedItem> items) {
    final articles = items.where((i) => i.contentType == ContentType.article);
    for (final item in articles) {
      loadContent(item);
    }
  }

  List<FeedItem> _deduplicate(List<FeedItem> items) {
    final seen = <String>{};
    return items.where((item) => seen.add(item.id)).toList();
  }

  Future<void> _persistItems(List<FeedItem> items) async {
    final box = await _openFeedBox();
    final updates = {for (final i in items) i.id: i.toMap()};
    await box.putAll(updates);
  }

  Future<void> _pruneOldItems() async {
    final box = await _openFeedBox();
    final cutoff = DateTime.now().subtract(Duration(days: _keepDays));
    final toDelete = <String>[];

    for (final key in box.keys) {
      final raw = box.get(key);
      if (raw == null) continue;
      final ms = (raw as Map)['publishedAt'] as int?;
      if (ms == null) continue;
      final date = DateTime.fromMillisecondsSinceEpoch(ms);
      if (date.isBefore(cutoff)) toDelete.add(key as String);
    }

    await box.deleteAll(toDelete);
  }

  Future<Box<dynamic>> _openFeedBox() async {
    if (Hive.isBoxOpen(_feedBox)) return Hive.box(_feedBox);
    return Hive.openBox(_feedBox);
  }

  Future<Box<dynamic>> _openContentBox() async {
    if (Hive.isBoxOpen(_contentBox)) return Hive.box(_contentBox);
    return Hive.openBox(_contentBox);
  }
}
