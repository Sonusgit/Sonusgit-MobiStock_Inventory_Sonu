import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobistock/utils/app_colors.dart';

class AppStyles {
  static TextStyle _roboto({
    required Color color,
    required double size,
    required FontWeight weight,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }

  // Black styles
  static final black_12_400 = _roboto(color: AppColors.black, size: 12, weight: FontWeight.w400);
  static final black_14_400 = _roboto(color: AppColors.black, size: 14, weight: FontWeight.w400);
  static final black_14_600 = _roboto(color: AppColors.black, size: 14, weight: FontWeight.w600);

  static final black_20_300 = _roboto(color: AppColors.black, size: 20, weight: FontWeight.w300);
  static final black_30_600 = _roboto(color: AppColors.black, size: 30, weight: FontWeight.w600);

  // Add all other styles similarly...

  // White styles
  static final white_14_400 = _roboto(color: AppColors.white, size: 14, weight: FontWeight.w400);
  static final white_18_600 = _roboto(color: AppColors.white, size: 18, weight: FontWeight.w600);

  // Custom color styles
  static TextStyle custom({
    required Color color,
    required double size,
    required FontWeight weight,
  }) =>
      _roboto(color: color, size: size, weight: weight);
}
