import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/app_colors.dart';
import '../../data/models/feed_source.dart';

class ReadTimeChip extends StatelessWidget {
  final int minutes;
  final ContentType type;

  const ReadTimeChip({super.key, required this.minutes, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          _icon,
          size: 12,
          color: AppColors.textSecondary,
        ),
        const SizedBox(width: 4),
        Text(
          '$minutes ${_label}',
          style: GoogleFonts.plusJakartaSans(
            color: AppColors.textSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  IconData get _icon {
    switch (type) {
      case ContentType.article:
        return Icons.menu_book_rounded;
      case ContentType.podcast:
        return Icons.headphones_rounded;
      case ContentType.video:
        return Icons.play_circle_outline_rounded;
    }
  }

  String get _label {
    switch (type) {
      case ContentType.article:
        return 'dk okuma';
      case ContentType.podcast:
        return 'dk dinleme';
      case ContentType.video:
        return 'dk video';
    }
  }
}
