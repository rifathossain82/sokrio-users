import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // Semantic / status
  static const success = Color(0xFF28A745);
  static const error = Color(0xFFE53935);
  static const warning = Color(0xFFFFC107);
  static const info = Color(0xFF17A2B8);

  // Enum-based mapping (see below)
  static const pending = Color(0xFF00BCD4);
  static const delivered = Color(0xFF4CAF50);
  static const cancelled = Color(0xFFF44336);

  // Branding / other
  static const facebookBlue = Color(0xFF1877F2);
  static const googleRed = Color(0xFFEA4335);

  // Standard colors
  static const transparent = Colors.transparent;
  static const white = Colors.white;
  static const black = Colors.black;
  static const inputFieldFillColor = Color(0xFFFFFFFF);
  static const borderColor = Color(0xFFE5E7EB);
}
