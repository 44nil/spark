import 'package:flutter/material.dart';
import 'feed_item.dart';
import 'feed_source.dart';

class StaticArticle {
  final String id;
  final String title;
  final String category;
  final int estimatedMinutes;
  final String content;

  const StaticArticle({
    required this.id,
    required this.title,
    required this.category,
    required this.estimatedMinutes,
    required this.content,
  });

  static const _categoryColors = {
    'Startup': Color(0xFFB8A9F0),
    'Kodlama': Color(0xFFA8D8C8),
    'Pazarlama': Color(0xFFF0C4D4),
    'Vizyon': Color(0xFFA8C8E8),
  };

  FeedItem toFeedItem() {
    return FeedItem(
      id: id,
      title: title,
      url: '',
      description: '',
      content: content,
      publishedAt: null,
      sourceId: 'spark_original',
      sourceName: 'Spark',
      sourceColor: _categoryColors[category] ?? const Color(0xFFB8A9F0),
      category: category,
      contentType: ContentType.article,
      estimatedMinutes: estimatedMinutes,
    );
  }
}
