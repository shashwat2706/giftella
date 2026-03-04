import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.pink.shade100,
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: const Color(0xFFE91E63), // Pink
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.purple,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Color(0xFF8E24AA), // Purple
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.amber,
  );
}