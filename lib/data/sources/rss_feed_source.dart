import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import 'package:webfeed/webfeed.dart';

import '../../core/utils/time_estimator.dart';
import '../models/feed_item.dart';
import '../models/feed_source.dart';

class RssFeedSource {
  static const _uuid = Uuid();
  static const _timeout = Duration(seconds: 15);

  static Future<List<FeedItem>> fetch(FeedSource source) async {
    try {
      final response = await http
          .get(Uri.parse(source.url))
          .timeout(_timeout);

      if (response.statusCode != 200) return [];

      final items = <FeedItem>[];

      if (source.isAtom) {
        final feed = AtomFeed.parse(response.body);
        for (final entry in feed.items ?? []) {
          final item = _fromAtomEntry(entry, source);
          if (item != null) items.add(item);
        }
      } else {
        final feed = RssFeed.parse(response.body);
        for (final rssItem in feed.items ?? []) {
          final item = _fromRssItem(rssItem, source);
          if (item != null) items.add(item);
        }
      }

      return items.take(5).toList();
    } catch (_) {
      return [];
    }
  }

  static FeedItem? _fromRssItem(RssItem item, FeedSource source) {
    final url = item.link?.trim() ?? item.guid;
    if (url == null || url.isEmpty) return null;

    final title = item.title ?? 'Başlıksız';

    // content:encoded → tam makale HTML'i (Substack, WordPress vs.)
    // description → özet veya fallback
    final fullContent = item.content?.value ?? '';
    final description = item.description ?? '';

    // Okuma süresi için en zengin metni kullan
    final textForEstimate = fullContent.isNotEmpty ? fullContent : description;

    final minutes = TimeEstimator.estimateMinutes(
      type: source.type,
      description: textForEstimate,
      itunesDuration: item.itunes?.duration,
      maxMinutes: source.maxMinutes,
    );

    return FeedItem(
      id: _uuid.v5(Namespace.url.value, url),
      title: title,
      url: url,
      description: description,
      // Yeterince içerik varsa content:encoded'ı doğrudan kullan
      content: fullContent.length > 300 ? fullContent : null,
      publishedAt: item.pubDate,
      sourceId: source.id,
      sourceName: source.name,
      sourceColor: source.color,
      category: source.category,
      contentType: source.type,
      estimatedMinutes: minutes,
    );
  }

  static FeedItem? _fromAtomEntry(AtomItem entry, FeedSource source) {
    final url = entry.links?.firstOrNull?.href ?? entry.id;
    if (url == null || url.isEmpty) return null;

    final title = entry.title ?? 'Başlıksız';
    final fullContent = entry.content ?? '';
    final description = entry.summary ?? '';

    final textForEstimate = fullContent.isNotEmpty ? fullContent : description;

    final minutes = TimeEstimator.estimateMinutes(
      type: source.type,
      description: textForEstimate,
      maxMinutes: source.maxMinutes,
    );

    return FeedItem(
      id: _uuid.v5(Namespace.url.value, url),
      title: title,
      url: url,
      description: description,
      content: fullContent.length > 300 ? fullContent : null,
      publishedAt: entry.updated,
      sourceId: source.id,
      sourceName: source.name,
      sourceColor: source.color,
      category: source.category,
      contentType: source.type,
      estimatedMinutes: minutes,
    );
  }
}

extension _ListExt<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
