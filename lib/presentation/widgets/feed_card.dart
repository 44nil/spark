import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_colors.dart';
import '../../data/models/feed_item.dart';
import 'glass_container.dart';
import 'read_time_chip.dart';
import 'source_badge.dart';

class FeedCard extends StatelessWidget {
  final FeedItem item;
  final bool isRead;
  final VoidCallback onTap;
  final VoidCallback onMarkRead;
  final int index;

  const FeedCard({
    super.key,
    required this.item,
    required this.isRead,
    required this.onTap,
    required this.onMarkRead,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Animate(
        effects: [
          FadeEffect(
            delay: Duration(milliseconds: index * 60),
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOutCubic,
          ),
          SlideEffect(
            delay: Duration(milliseconds: index * 60),
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOutCubic,
            begin: const Offset(0, 0.08),
            end: Offset.zero,
          ),
        ],
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GestureDetector(
            onTap: onTap,
            child: GlassContainer(
              padding: const EdgeInsets.all(18),
              borderColor: isRead
                  ? AppColors.cardBorder.withValues(alpha: 0.3)
                  : item.sourceColor.withValues(alpha: 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SourceBadge(
                        label: item.sourceName,
                        color: item.sourceColor,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          item.category,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.textTertiary,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Spacer(),
                      _ReadButton(isRead: isRead, onTap: onMarkRead),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item.title,
                    style: GoogleFonts.plusJakartaSans(
                      color: isRead
                          ? AppColors.textTertiary
                          : AppColors.textPrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (item.description.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(
                      _stripHtml(item.description),
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                        height: 1.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  const SizedBox(height: 12),
                  ReadTimeChip(
                    minutes: item.estimatedMinutes,
                    type: item.contentType,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _stripHtml(String html) {
    return html
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }
}

class _ReadButton extends StatelessWidget {
  final bool isRead;
  final VoidCallback onTap;

  const _ReadButton({required this.isRead, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isRead
              ? AppColors.lavender.withValues(alpha: 0.2)
              : Colors.white.withValues(alpha: 0.05),
          border: Border.all(
            color: isRead ? AppColors.lavender : AppColors.cardBorder,
            width: 1.5,
          ),
        ),
        child: Icon(
          isRead ? Icons.check_rounded : Icons.radio_button_unchecked_rounded,
          size: 16,
          color: isRead ? AppColors.lavender : AppColors.textTertiary,
        ),
      ),
    );
  }
}
