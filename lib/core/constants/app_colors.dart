import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0F0E17);
  static const surface = Color(0xFF1A1826);
  static const cardBorder = Color(0x30FFFFFF);

  static const lavender = Color(0xFFB8A9F0);
  static const lavenderSoft = Color(0xFF9B8BC7);
  static const pink = Color(0xFFF0C4D4);
  static const mint = Color(0xFFA8D8C8);
  static const peach = Color(0xFFF5C5A3);
  static const skyBlue = Color(0xFFA8C8E8);

  static const textPrimary = Color(0xFFF0EEF8);
  static const textSecondary = Color(0xFF8B89A0);
  static const textTertiary = Color(0xFF5A5870);

  static const progressTrack = Color(0xFF2A2838);
  static const progressFill = LinearGradient(
    colors: [lavender, pink],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const sourceColors = {
    'yc': Color(0xFFFF6B35),
    'a16z': Color(0xFF6B9FFF),
    'paul_graham': Color(0xFFFFB347),
    'pragmatic_engineer': Color(0xFF7EC8A4),
    'fireship': Color(0xFFFF4757),
    'lenny': Color(0xFFFF6B9D),
    'acquired': Color(0xFF9B8BC7),
    'lex_fridman': Color(0xFF5BC0EB),
  };
}
