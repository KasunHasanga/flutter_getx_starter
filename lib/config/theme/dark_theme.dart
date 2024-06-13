
import 'package:flutter/material.dart';
import 'package:flutter_getx_starter/config/theme/text_theme.dart';

import '../colors.dart';

ThemeData DarkThemeData() {
  return ThemeData(
      //! You Can Set All Your Custom Dark Theme Here
      scaffoldBackgroundColor: AppColors.kBlack,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.kGreen,
        onPrimary: AppColors.kLightGreen,
        secondary: AppColors.kSeaGreen,
        onSecondary: AppColors.kPastelMintGreen,
        error: AppColors.kRed,
        onError: AppColors.kLightOrange,
        background: AppColors.kThemeBackgroundDark,
        onBackground: AppColors.kThemeBackgroundLight,
        surface: AppColors.kThemeBackgroundDark,
        onSurface: AppColors.kThemeBackgroundDark,
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(linearTrackColor: Colors.white24),
      textTheme: CustomTextTheme.textThemeDark,
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
        backgroundColor: AppColors.kBlack,
        dayPeriodTextColor: AppColors.kWhite,
        dialTextColor: AppColors.kWhite,
        hourMinuteTextColor: AppColors.kWhite,
      ));
}
