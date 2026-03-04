import 'package:flutter/material.dart';

// -- Light & Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // To avoid creating instances

  // -- Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 3,
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xFFE91E63),
      disabledForegroundColor: Colors.white70,
      disabledBackgroundColor: Colors.pink.shade200,
      side: const BorderSide(color: Color(0xFFFF9800)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  // -- Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 3,
      foregroundColor: Colors.white,
      backgroundColor: const Color(0xFF8E24AA),
      disabledForegroundColor: Colors.white70,
      disabledBackgroundColor: Colors.purple.shade200,
      side: const BorderSide(color: Color(0xFFFFC107)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}