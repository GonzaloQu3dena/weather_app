import 'package:flutter/material.dart';

/// App Colors
///
/// This class centralizes all the colors used in the app to ensure consistency and easy maintenance. 
/// Each color is named semantically to represent its role in the design system.
///
/// Colors:
/// * [Dark Blue]: `#0A0B39` - Primary background color for dark themes or headers.
/// * [White]: `#FFFFFF` - Primary text color on dark backgrounds and general usage.
/// * [Grey]: `#B7B6C4` - Used for disabled text, placeholders, and secondary content.
/// * [Black]: `#000000` - Used for primary text on light backgrounds and general usage.
/// * [Light Blue]: `#1D85E4` - Primary action color for buttons and interactive elements.
/// * [Blue Grey]: `#0A0B39` - Alternative to `darkBlue` for subtle variations in dark themes.
/// * [Accent Blue]: `#23224A` - Secondary background or accent color for cards and highlights.
/// * [Secondary Black]: `#060620` - A softer black for overlays, shadows, or secondary elements.
///
/// Author: Gonzalo Quedena
@immutable
class AppColors {

  static const Color darkBlue = Color(0xFF0A0B39);
  static const Color lightBlue = Color(0xFF1D85E4);
  static const Color accentBlue = Color(0xFF23224A);

  static const Color grey = Color(0xFFB7B6C4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blueGrey = Color(0xFF0A0B39);

  static const Color black = Color(0xFF000000);
  static const Color secondaryBlack = Color(0xFF060620);
}
