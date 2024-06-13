import 'package:flutter_getx_starter/config/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

ThemeData LightThemeData() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.kGreen,
          onPrimary: AppColors.kLightGreen,
          secondary: AppColors.kSeaGreen,
          onSecondary: AppColors.kPastelMintGreen,
          error: AppColors.kRed,
          onError: AppColors.kLightOrange,
          background: AppColors.kThemeBackgroundLight,
          onBackground: AppColors.kThemeBackgroundDark,
          surface: AppColors.kThemeBackgroundLight,
          onSurface: AppColors.kThemeBackgroundLight),
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
              borderSide: const BorderSide(color: AppColors.kGreen)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.kBorderColor),
              borderRadius: BorderRadius.circular(14))),
      timePickerTheme: const TimePickerThemeData(
        backgroundColor: AppColors.kWhite,
        dayPeriodTextColor: AppColors.kBlack,
        dialTextColor: AppColors.kBlack,
        hourMinuteTextColor: AppColors.kBlack,
      ));
}
