import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common_widget/default_alert_view.dart';

// NumberFormat oCcy = NumberFormat("#,##0.00", "en_UK");
NumberFormat oCcy = NumberFormat("#,##0.00", "da_DK");

class Helper {
  static final Helper _helper = Helper._internal();

  factory Helper() {
    return _helper;
  }

  Helper._internal();

  ///Password validation
  bool validateStructure(String value) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[0-9]).{6,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  ///credit card mask
  String maskCardNumber(String cardNumber) {
    String firstFour = cardNumber.substring(0, 4);
    String lastFour = cardNumber.substring(cardNumber.length - 4);
    String masked = cardNumber.replaceAll(
        RegExp(r'^(....)(.+)(....)$'), '$firstFour xxxx xxxx $lastFour');
    return masked;
  }

  ///credit card mask
  String maskCardNumber2(String cardNumber) {
    String firstFour = cardNumber.substring(0, 4);
    String secondFour = cardNumber.substring(4, 8);
    String thirdFour = cardNumber.substring(8, 12);
    String fourthFour = cardNumber.substring(12, 16);
    String masked = cardNumber.replaceAll(RegExp(r'^(....)(.+)(....)$'),
        '$firstFour  $secondFour  $thirdFour  $fourthFour');
    return masked;
  }

  showDefaultAlert(BuildContext context, String message, {Callback? action}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return DefaultAlertView(
              title: message,
              actionTitle: "ok".tr,
              onPressed: action ??
                  () {
                    Get.back();
                  });
        });
  }

  void navigateTo(double lat, double lng) async {
    var uri =
        Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');

    try {
      await launchUrl(uri);
    } catch (e) {
      print(e.toString());
    }
  }

  String integerToHexColor(int value) {
    // Mask the value to ensure it fits within 32 bits
    int maskedValue = value & 0xFFFFFFFF;
    // Convert the masked value to a hexadecimal string
    String hexString = maskedValue.toRadixString(16).toUpperCase();
    // Pad the hexadecimal string with leading zeros if necessary
    hexString = hexString.padLeft(8, '0');
    // Create the hexadecimal color value by prefixing '#' to the string
    String colorValue = '#$hexString';
    return colorValue;
  }

  Color colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  Uint8List getImageFromBase64(String image) {
    String result = image.split("base64,").last;
    Uint8List bytesImage = const Base64Decoder().convert(result);
    return bytesImage;
  }
}
