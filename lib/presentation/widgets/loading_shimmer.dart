import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../core/constants/app_colors.dart';
import 'glass_container.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (i) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GlassContainer(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _shimmerBox(width: 90, height: 24, radius: 20),
                    const SizedBox(width: 8),
                    _shimmerBox(width: 60, height: 24, radius: 12),
                  ],
                ),
                const SizedBox(height: 12),
                _shimmerBox(width: double.infinity, height: 18, radius: 6),
                const SizedBox(height: 6),
                _shimmerBox(width: 200, height: 18, radius: 6),
                const SizedBox(height: 12),
                _shimmerBox(width: 80, height: 14, radius: 6),
              ],
            ),
          )
              .animate(onPlay: (c) => c.repeat())
              .shimmer(
                delay: Duration(milliseconds: i * 200),
                duration: const Duration(milliseconds: 1200),
                color: Colors.white.withValues(alpha: 0.07),
              ),
        ),
      ),
    );
  }

  Widget _shimmerBox({
    required double width,
    required double height,
    required double radius,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
