import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_colors.dart';
import '../settings/settings_screen.dart';

class HomeHeader extends StatelessWidget {
  final int minutesRemaining;
  final int itemCount;

  const HomeHeader({
    super.key,
    required this.minutesRemaining,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final greeting = _greeting(now.hour);
    final dateStr = DateFormat('d MMMM, EEEE', 'tr_TR').format(now);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('✦',
                    style: TextStyle(color: AppColors.lavender, fontSize: 18)),
                const SizedBox(width: 8),
                Text('Spark',
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColors.lavender,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.3,
                    )),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const SettingsScreen())),
              child: const Icon(Icons.tune_rounded,
                  color: AppColors.textSecondary, size: 22),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          greeting,
          style: GoogleFonts.plusJakartaSans(
            color: AppColors.textPrimary,
            fontSize: 28,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          dateStr,
          style: GoogleFonts.plusJakartaSans(
            color: AppColors.textSecondary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.textSecondary,
              fontSize: 13,
            ),
            children: [
              TextSpan(text: '$itemCount içerik · '),
              TextSpan(
                text: '$minutesRemaining dk',
                style: const TextStyle(
                  color: AppColors.lavender,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(text: ' okuma süresi'),
            ],
          ),
        ),
      ],
    );
  }

  String _greeting(int hour) {
    if (hour < 12) return 'Günaydın ☀️';
    if (hour < 17) return 'İyi öğleden sonralar';
    if (hour < 21) return 'İyi akşamlar';
    return 'İyi geceler 🌙';
  }
}
