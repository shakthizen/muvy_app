import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundDark = Color(0xFF0A0A0F);
  static const Color surfaceDark = Color(0xFF12121A);
  static const Color surfaceGlass = Color(0xFF1A1A2E);
  static const Color purplePrimary = Color(0xFF8B5CF6);
  static const Color purpleLight = Color(0xFFA78BFA);
  static const Color purpleDeep = Color(0xFF6D28D9);
  static const Color pinkAccent = Color(0xFFEC4899);
  static const Color redAccent = Color(0xFFEF4444);
  
  // Aliases
  static const Color background = backgroundDark;
  static const Color surface = surfaceDark;
  static const Color primary = purplePrimary;
  
  static const Color textPrimary = Color(0xFFF1F5F9);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textMuted = Color(0xFF64748B);

  static const LinearGradient gradientPrimary = LinearGradient(
    colors: [purplePrimary, pinkAccent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient gradientGlow = LinearGradient(
    colors: [purpleLight, Color(0xFFF472B6)], // pinkAccent lighter
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
