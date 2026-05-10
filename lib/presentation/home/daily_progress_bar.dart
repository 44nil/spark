import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_colors.dart';
import '../widgets/glass_container.dart';

class DailyProgressBar extends StatelessWidget {
  final int completedMinutes;
  final int totalMinutes;
  final int minutesRemaining;
  final double progress;

  const DailyProgressBar({
    super.key,
    required this.completedMinutes,
    required this.totalMinutes,
    required this.minutesRemaining,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Günlük İlerleme',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.textSecondary,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$completedMinutes / $totalMinutes dk',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColors.lavender,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _ProgressTrack(progress: progress),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.access_time_rounded,
                size: 13,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: 4),
              Text(
                minutesRemaining > 0
                    ? '$minutesRemaining dk kaldı'
                    : 'Harika! Bugünkü hedefine ulaştın',
                style: GoogleFonts.plusJakartaSans(
                  color: minutesRemaining > 0
                      ? AppColors.textSecondary
                      : AppColors.mint,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressTrack extends StatelessWidget {
  final double progress;
  const _ProgressTrack({required this.progress});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final trackWidth = constraints.maxWidth;
        final fillWidth = (trackWidth * progress).clamp(0.0, trackWidth);

        return Stack(
          children: [
            Container(
              height: 6,
              width: trackWidth,
              decoration: BoxDecoration(
                color: AppColors.progressTrack,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutCubic,
              height: 6,
              width: fillWidth,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.lavender, AppColors.pink],
                ),
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lavender.withValues(alpha: 0.4),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            )
                .animate(onPlay: (c) => c.repeat(reverse: true))
                .shimmer(
                  duration: const Duration(milliseconds: 2000),
                  color: Colors.white.withValues(alpha: 0.3),
                ),
          ],
        );
      },
    );
  }
}
