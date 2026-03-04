import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: const Color(0xFFFFF3F8), // Soft pink
    modalBackgroundColor: const Color(0xFFFFF3F8),
    dragHandleColor: const Color(0xFFE91E63), // Pink handle
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: const Color(0xFF2A003F), // Deep purple
    modalBackgroundColor: const Color(0xFF2A003F),
    dragHandleColor: Colors.amber, // Gold handle,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}