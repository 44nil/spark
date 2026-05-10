import '../../data/models/feed_source.dart';

class TimeEstimator {
  static int estimateMinutes({
    required ContentType type,
    String? description,
    Duration? itunesDuration,
    int? maxMinutes,
  }) {
    int minutes;

    switch (type) {
      case ContentType.article:
        final wordCount = _countWords(description ?? '');
        minutes = (wordCount / 200).ceil().clamp(2, 60);
        break;

      case ContentType.podcast:
        minutes = itunesDuration != null
            ? (itunesDuration.inSeconds / 60).round()
            : 45;
        break;

      case ContentType.video:
        minutes = itunesDuration != null
            ? (itunesDuration.inSeconds / 60).round()
            : 12;
        break;
    }

    if (maxMinutes != null) {
      minutes = minutes.clamp(1, maxMinutes);
    }

    return minutes.clamp(1, 180);
  }

  static int _countWords(String text) {
    final cleaned = text.replaceAll(RegExp(r'<[^>]*>'), '');
    if (cleaned.trim().isEmpty) return 400;
    return cleaned.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length;
  }
}
