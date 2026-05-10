import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../models/feed_item.dart';

class QueueRepository {
  static const _queueBox = 'daily_queue';
  static const _readBox = 'read_status';
  static const _targetMinutes = 60;

  String get _todayKey => DateFormat('yyyy-MM-dd').format(DateTime.now());

  Future<List<FeedItem>> buildDailyQueue(List<FeedItem> allItems) async {
    // Her gün farklı sıralama için tarihi seed olarak kullan
    final dayOfYear = DateTime.now().difference(DateTime(DateTime.now().year)).inDays;
    final shuffled = List<FeedItem>.from(allItems);

    // Kategorilere göre dengeli dağılım: her kategoriden eşit say
    final byCategory = <String, List<FeedItem>>{};
    for (final item in shuffled) {
      byCategory.putIfAbsent(item.category, () => []).add(item);
    }

    // Her kategoriden sıralı seç (gün bazlı offset ile farklılaştır)
    final queue = <FeedItem>[];
    int totalMinutes = 0;

    while (totalMinutes < _targetMinutes) {
      bool added = false;
      for (final category in byCategory.keys) {
        final catItems = byCategory[category]!;
        final offset = dayOfYear % catItems.length;
        // Henüz eklenmemiş ilk uygun elemanı bul
        for (int i = 0; i < catItems.length; i++) {
          final idx = (offset + i + queue.where((q) => q.category == category).length) % catItems.length;
          final item = catItems[idx];
          if (!queue.contains(item)) {
            queue.add(item);
            totalMinutes += item.estimatedMinutes;
            added = true;
            break;
          }
        }
        if (totalMinutes >= _targetMinutes) break;
      }
      if (!added) break;
    }

    await _saveQueue(queue);
    return queue;
  }

  Future<List<FeedItem>?> getTodayQueue(List<FeedItem> allItems) async {
    final box = await _openQueueBox();
    final raw = box.get(_todayKey);
    if (raw == null) return null;

    final ids = List<String>.from(raw as List);
    final itemMap = {for (final i in allItems) i.id: i};
    final queue = ids.map((id) => itemMap[id]).whereType<FeedItem>().toList();

    return queue.isEmpty ? null : queue;
  }

  Future<void> _saveQueue(List<FeedItem> queue) async {
    final box = await _openQueueBox();
    await box.put(_todayKey, queue.map((i) => i.id).toList());
  }

  Future<void> markRead(String itemId) async {
    final box = await _openReadBox();
    await box.put(itemId, true);
  }

  Future<void> markUnread(String itemId) async {
    final box = await _openReadBox();
    await box.delete(itemId);
  }

  Future<Map<String, bool>> getReadStatus() async {
    final box = await _openReadBox();
    return {for (final key in box.keys) key as String: box.get(key) as bool};
  }

  Future<Box<dynamic>> _openQueueBox() async {
    if (Hive.isBoxOpen(_queueBox)) return Hive.box(_queueBox);
    return Hive.openBox(_queueBox);
  }

  Future<Box<dynamic>> _openReadBox() async {
    if (Hive.isBoxOpen(_readBox)) return Hive.box(_readBox);
    return Hive.openBox(_readBox);
  }
}
