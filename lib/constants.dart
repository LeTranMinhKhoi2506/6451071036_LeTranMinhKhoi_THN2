import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF130160);
  static const Color secondary = Color(0xFFFCA34D);
  static const Color background = Color(0xFFF9F9F9);
  static const Color white = Colors.white;
  static const Color textMain = Color(0xFF150B3D);
  static const Color textSecondary = Color(0xFF524B6B);
  static const Color buttonLight = Color(0xFFD6CDFE);
  static const Color googleButton = Color(0xFFF3F2F2);
  static const Color grey = Color(0xFFAAA6B9);
}

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );
}
