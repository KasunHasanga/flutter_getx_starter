import 'package:flutter_getx_starter/config/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.kPrimary,
          onPrimary: AppColors.kOnPrimary,
          secondary: AppColors.kSecondary,
          onSecondary: AppColors.kOnSecondary,
          error: AppColors.kRed,
          outline:AppColors. kOutlineColor,
          shadow: AppColors.kShadowColor,
          onError: AppColors.kRed,
          // background: AppColors.kThemeBackgroundLight,
          // onBackground: AppColors.kThemeBackgroundDark,
          surface: AppColors.kThemeBackgroundLight,
          onSurface: AppColors.kThemeBackgroundDark),
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      textTheme: CustomTextTheme.textThemeLight,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(linearTrackColor: Colors.black12),
      inputDecorationTheme: InputDecorationTheme(
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: AppColors.kRed)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.kBorderColor),
              borderRadius: BorderRadius.circular(14)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.kBorderColor),
              borderRadius: BorderRadius.circular(14)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: AppColors.kPrimary)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.kBorderColor),
              borderRadius: BorderRadius.circular(14))),
      timePickerTheme: const TimePickerThemeData(
        backgroundColor: AppColors.kThemeBackgroundLight,
        dayPeriodTextColor: AppColors.kBlack,
        dialTextColor: AppColors.kBlack,
        hourMinuteTextColor: AppColors.kBlack,
      ));
}
