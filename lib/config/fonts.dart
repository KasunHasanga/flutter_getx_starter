import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppFonts {
  static const gilroy = 'Gilroy';

  /// Gilroy light style. Default font size is 10, default color White.
  static TextStyle styleWithGilroySemiBoldText(
          {Color color = Colors.white, double fSize = 3.2}) =>
      TextStyle(
          fontSize: fSize * (Get.width * 0.01),
          color: color,
          fontWeight: FontWeight.w600,
          fontFamily: gilroy);

  ///
  static TextStyle styleWithGilroyMediumText({
    Color color = Colors.white,
    double fSize = 3.2,
    fontWeight = FontWeight.w500,
  }) =>
      TextStyle(
          fontSize: fSize * (Get.width * 0.01),
          color: color,
          fontWeight: FontWeight.w500,
          fontFamily: gilroy);

  ///
  static TextStyle styleWithGilroyRegularText(
          {Color color = Colors.black, double fSize = 3.2}) =>
      TextStyle(
          fontSize: fSize * (Get.width * 0.01),
          color: color,
          fontFamily: gilroy);

  ///
  static TextStyle styleWithGilroyBoldText(
          {Color color = Colors.black, double fSize = 3.2}) =>
      TextStyle(
          fontSize: fSize * (Get.width * 0.01),
          color: color,
          fontWeight: FontWeight.w700,
          fontFamily: gilroy);

  static TextStyle styleWithGilroyMediumTextStrikeThrough({
    Color color = Colors.white,
    double fSize = 3.2,
    fontWeight = FontWeight.w500,
  }) =>
      TextStyle(
          fontSize: fSize * (Get.width * 0.01),
          color: color,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.lineThrough,
          fontFamily: gilroy);
}
