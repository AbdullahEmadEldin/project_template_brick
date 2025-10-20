import 'package:flutter/material.dart';

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h4SemiBold;
  final TextStyle p;
  final TextStyle caption;
  final TextStyle buttons;
  final TextStyle desktopLead;
  final TextStyle pSmallMid;
  final TextStyle pSemiBold;
  final TextStyle pBold;
  final TextStyle small;

  AppTextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h4SemiBold,
    required this.p,
    required this.caption,
    required this.buttons,
    required this.desktopLead,
    required this.pSmallMid,
    required this.pSemiBold,
    required this.pBold,
    required this.small,
  });
  @override
  ThemeExtension<AppTextStyles> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
      covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      h4SemiBold: TextStyle.lerp(h4SemiBold, other.h4SemiBold, t)!,
      p: TextStyle.lerp(p, other.p, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      buttons: TextStyle.lerp(buttons, other.buttons, t)!,
      pSmallMid: TextStyle.lerp(pSmallMid, other.pSmallMid, t)!,
      pSemiBold: TextStyle.lerp(pSemiBold, other.pSemiBold, t)!,
      pBold: TextStyle.lerp(pBold, other.pBold, t)!,
      small: TextStyle.lerp(small, other.small, t)!,
      desktopLead: TextStyle.lerp(desktopLead, other.desktopLead, t)!,
    );
  }
}
