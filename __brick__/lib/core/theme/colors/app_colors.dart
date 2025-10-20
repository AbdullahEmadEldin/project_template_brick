import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color primary;
  final Color secondary;
  final Color secondaryForeground;
  final Color foreground;
  final Color successBg;
  final Color successText;
  final Color successBorder;

  final Color infoBg;
  final Color infoText;
  final Color infoBorder;

  final Color errorBg;
  final Color errorBorder;
  final Color destructive;

  final Color warningBg;
  final Color warningText;
  final Color warningBorder;

  AppColors({
    required this.primary,
    required this.secondary,
    required this.foreground,
    required this.secondaryForeground,
    required this.destructive,
    required this.errorBorder,
    required this.errorBg,
    required this.successText,
    required this.successBg,
    required this.successBorder,
    required this.infoBg,
    required this.infoText,
    required this.infoBorder,
    required this.warningBg,
    required this.warningText,
    required this.warningBorder,
  });
  @override
  ThemeExtension<AppColors> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    } else {
      return AppColors(
        primary: Color.lerp(primary, other.primary, t)!,
        secondary: Color.lerp(secondary, other.secondary, t)!,
        secondaryForeground: Color.lerp(
          secondaryForeground,
          other.secondaryForeground,
          t,
        )!,
        foreground: Color.lerp(foreground, other.foreground, t)!,
        destructive: Color.lerp(destructive, other.destructive, t)!,
        errorBorder: Color.lerp(errorBorder, other.errorBorder, t)!,
        errorBg: Color.lerp(errorBg, other.errorBg, t)!,
        successText: Color.lerp(successText, other.successText, t)!,
        successBg: Color.lerp(successBg, other.successBg, t)!,
        successBorder: Color.lerp(successBorder, other.successBorder, t)!,
        infoBg: Color.lerp(infoBg, other.infoBg, t)!,
        infoText: Color.lerp(infoText, other.infoText, t)!,
        infoBorder: Color.lerp(infoBorder, other.infoBorder, t)!,
        warningBg: Color.lerp(warningBg, other.warningBg, t)!,
        warningText: Color.lerp(warningText, other.warningText, t)!,
        warningBorder: Color.lerp(warningBorder, other.warningBorder, t)!,
      );
    }
  }
}
