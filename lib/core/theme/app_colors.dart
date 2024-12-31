import 'package:flutter/material.dart';

/// A utility class for app colors. Should not be instantiated.
class AppColors {
  AppColors._();
  //? Primary Colors
  static const Color mainBlue = Color(0xFF247CFF); // Main primary color
  static const Color blue = Color(0xFF216FE2); // Secondary blue
  static const Color lightBlue = Color(0xFFF4F8FF); // Background light blue
  static const Color darkBlue = Color(0xFF242424); // Dark blue for text

  //? Gray Scale
  static const Color gray = Color(0xFF757575); // Neutral gray for text
  static const Color lightGray =
      Color(0xFFEDEDED); // Light gray for borders/backgrounds
  static const Color extraLightGray =
      Color(0xFFFDFDFF); // Extra light background

  //? Black Scale
  static const Color lighterBlack =
      Color(0xFF121212); // For dark mode backgrounds

  //? Text Colors
  static const Color textPrimary = darkBlue; // Primary text color
  static const Color textSecondary = gray; // Secondary text color
  static const Color textInverse = Colors.white; // Text on dark backgrounds

  //? Background Colors
  static const Color backgroundPrimary =
      extraLightGray; // Primary light background
  static const Color backgroundSecondary = lightBlue; // Secondary background

  //? Border Colors
  static const Color borderGray = lightGray; // Light gray for borders

  //? Button Colors
  static const Color buttonPrimary = mainBlue; // Primary button color
  static const Color buttonSecondary = blue; // Secondary button color
}
