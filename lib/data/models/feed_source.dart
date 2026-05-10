import 'package:flutter/material.dart';

enum ContentType { article, podcast, video }

class FeedSource {
  final String id;
  final String name;
  final String url;
  final ContentType type;
  final Color color;
  final String category;
  final int maxMinutes;
  final bool isAtom;

  const FeedSource({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.color,
    required this.category,
    required this.maxMinutes,
    this.isAtom = false,
  });
}
