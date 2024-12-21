import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Text Styles
/// 
/// This class centralizes all the text styles used in the app to ensure consistency and easy maintenance.
/// 
/// Text styles available:
/// * [h1]: `24` - Large title text style.
/// * [h2]: `20` - Medium title text style.
/// * [h3]: `16` - Small title text style.
/// * [subtitleText]: `14` - Subtitle text style.
/// * [largeSubtitle]: `18` - Large subtitle text style.
/// 
/// Author: Gonzalo Quedena
@immutable
class TextStyles {
  static const h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static const h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const h3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const subtitleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static const largeSubtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
  );
}
