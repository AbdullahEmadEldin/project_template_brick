import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppColorScheme {
  static final AppColors light = AppColors(
    primary: const Color(0xFF7B57FC),
    secondary: const Color(0xFF7B57FC),
    secondaryForeground: Colors.white,
    foreground: const Color(0xFF001B36),
    destructive: const Color(0xFFFF357B),
    errorBg: const Color(0xFFFFF0F0),
    errorBorder: const Color(0xFFFFE0E1),
    successText: const Color(0xFF008A2E),
    successBg: const Color(0xFFECFDF2),
    successBorder: const Color(0xFFD3FDE5),
    infoBg: const Color(0xffF0F8FF),
    infoBorder: const Color(0xffD3E0FD),
    infoText: const Color(0xff0973DC),
    warningBg: const Color(0xffFFFCF0),
    warningBorder: const Color(0xffFDF5D3),
    warningText: const Color(0xffDC7609),
  );

  ///
  static final AppColors dark = AppColors(
    primary: const Color(0xFF7B57FC),
    secondary: const Color.fromARGB(255, 15, 21, 30),
    secondaryForeground: const Color(0xFFf8fafc),
    foreground: const Color(0xFF001B36),
    destructive: const Color(0xFFFF357B),
    errorBg: const Color(0xFFFFF0F0),
    errorBorder: const Color(0xFFFFE0E1),
    successText: const Color(0xFF008A2E),
    successBg: const Color(0xFFECFDF2),
    successBorder: const Color(0xFFD3FDE5),
    infoBg: const Color(0xffF0F8FF),
    infoBorder: const Color(0xffD3E0FD),
    infoText: const Color(0xff0973DC),
    warningBg: const Color(0xffFFFCF0),
    warningBorder: const Color(0xffFDF5D3),
    warningText: const Color(0xffDC7609),
  );
}
