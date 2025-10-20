import 'package:flutter/material.dart';

import '../colors/app_color_scheme.dart';
import 'app_text_styles.dart';

class AppFonts {
  static const String alex = 'Alexandria';
  static const String notoKufiArabic = 'NotoKufiArabic';
}

// Regular: FontWeight.normal or FontWeight.w400
// Medium: FontWeight.w500
// SemiBold: FontWeight.w600
abstract class AppTextStylesScheme {
  static AppTextStyles light = AppTextStyles(
    h1: TextStyle(
      fontSize: 28,
      height: 1.29, // 36/28 = 1.29
      fontWeight: FontWeight.w600,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h2: TextStyle(
      fontSize: 22,
      height: 1.55, // 34/22 = 1.55
      fontWeight: FontWeight.w500,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h3: TextStyle(
      fontSize: 19,
      height: 1.58, // 30/19 = 1.58
      fontWeight: FontWeight.w600,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h4: TextStyle(
      fontSize: 16,
      height: 1.5, // 24/16 = 1.5
      fontWeight: FontWeight.w600,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h4SemiBold: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    p: TextStyle(
      fontSize: 14,
      height: 1.57, // 22/14 = 1.57
      fontWeight: FontWeight.normal,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    caption: TextStyle(
      fontSize: 10,
      height: 1.6, // 16/10 = 1.6
      fontWeight: FontWeight.normal,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    buttons: TextStyle(
      fontSize: 12,
      height: 1.42, // 17/12 = 1.42
      fontWeight: FontWeight.w500,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    desktopLead: TextStyle(
      fontSize: 12,
      height: 1.5, // 18/12 = 1.5
      fontWeight: FontWeight.w400,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pSmallMid: TextStyle(
      fontSize: 12,
      height: 1.67, // 20/12 = 1.67
      fontWeight: FontWeight.w500,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pSemiBold: TextStyle(
      fontSize: 14,
      height: 1.57,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pBold: TextStyle(
      fontSize: 14,
      height: 1.57,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    small: TextStyle(
      fontSize: 12,
      height: 1.5, // 18/12 = 1.5
      fontWeight: FontWeight.normal,
      color: AppColorScheme.light.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
  );

  static AppTextStyles dark = AppTextStyles(
    h1: TextStyle(
      fontSize: 28,
      height: 1.29,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h2: TextStyle(
      fontSize: 22,
      height: 1.55,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h3: TextStyle(
      fontSize: 19,
      height: 1.58,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h4: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    h4SemiBold: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    p: TextStyle(
      fontSize: 14,
      height: 1.57,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    caption: TextStyle(
      fontSize: 10,
      height: 1.6,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    buttons: TextStyle(
      fontSize: 12,
      height: 1.42,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    desktopLead: TextStyle(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pSmallMid: TextStyle(
      fontSize: 12,
      height: 1.67,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pSemiBold: TextStyle(
      fontSize: 14,
      height: 1.57,
      fontWeight: FontWeight.w500,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    pBold: TextStyle(
      fontSize: 14,
      height: 1.57,
      fontWeight: FontWeight.w600,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
    small: TextStyle(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.normal,
      color: AppColorScheme.dark.foreground,
      fontFamily: AppFonts.notoKufiArabic,
    ),
  );
}
