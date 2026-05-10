import 'package:flutter/material.dart';
import 'feed_source.dart';

class FeedItem {
  final String id;
  final String title;
  final String url;
  final String description;
  final String? content; // extracted full article HTML
  final DateTime? publishedAt;
  final String sourceId;
  final String sourceName;
  final Color sourceColor;
  final String category;
  final ContentType contentType;
  final int estimatedMinutes;

  const FeedItem({
    required this.id,
    required this.title,
    required this.url,
    required this.description,
    this.content,
    required this.publishedAt,
    required this.sourceId,
    required this.sourceName,
    required this.sourceColor,
    required this.category,
    required this.contentType,
    required this.estimatedMinutes,
  });

  bool get hasContent => content != null && content!.trim().isNotEmpty;

  FeedItem copyWith({int? estimatedMinutes, String? content}) {
    return FeedItem(
      id: id,
      title: title,
      url: url,
      description: description,
      content: content ?? this.content,
      publishedAt: publishedAt,
      sourceId: sourceId,
      sourceName: sourceName,
      sourceColor: sourceColor,
      category: category,
      contentType: contentType,
      estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'url': url,
      'description': description,
      'content': content,
      'publishedAt': publishedAt?.millisecondsSinceEpoch,
      'sourceId': sourceId,
      'sourceName': sourceName,
      'sourceColor': sourceColor.toARGB32(),
      'category': category,
      'contentType': contentType.index,
      'estimatedMinutes': estimatedMinutes,
    };
  }

  factory FeedItem.fromMap(Map<dynamic, dynamic> map) {
    return FeedItem(
      id: map['id'] as String,
      title: map['title'] as String,
      url: map['url'] as String,
      description: map['description'] as String,
      content: map['content'] as String?,
      publishedAt: map['publishedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['publishedAt'] as int)
          : null,
      sourceId: map['sourceId'] as String,
      sourceName: map['sourceName'] as String,
      sourceColor: Color(map['sourceColor'] as int),
      category: map['category'] as String,
      contentType: ContentType.values[map['contentType'] as int],
      estimatedMinutes: map['estimatedMinutes'] as int,
    );
  }
}
