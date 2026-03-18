import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // ---------------- App Basic Colors ----------------
  static const Color primary   = Color(0xFFE91E63); // Pink
  static const Color secondary = Color(0xFF8E24AA); // Purple
  static const Color accent    = Color(0xFFFFC107); // Gold

  // ---------------- Text Colors ----------------
  static const Color textPrimary   = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite     = Colors.white;

  // ---------------- Background Colors ----------------
  static const Color light             = Color(0xFFFFF8FB); // Soft pink
  static const Color dark              = Color(0xFF1A001F); // Deep purple
  static const Color primaryBackground = Color(0xFFFFF3F8);

  // ---------------- Background Container Colors ----------------
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withValues(alpha: 0.1);

  // ---------------- Button Colors ----------------
  static const Color buttonPrimary   = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled  = Color(0xFFBDBDBD);

  // ---------------- Border Colors ----------------
  static const Color borderPrimary   = Color(0xFFFFC1E3);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // ---------------- Error & Validation Colors ----------------
  static const Color error   = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFFF9800);
  static const Color info    = Color(0xFF8E24AA);

  // ---------------- Neutral Shades ----------------
  static const Color black      = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey   = Color(0xFF939393);
  static const Color grey       = Color(0xFFE0E0E0);
  static const Color softGrey   = Color(0xFFF4F4F4);
  static const Color lightGrey  = Color(0xFFF9F9F9);
  static const Color white      = Colors.white;
}