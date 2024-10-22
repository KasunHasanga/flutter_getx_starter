import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common_widget/default_alert_view.dart';

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
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  Uint8List getImageFromBase64(String image) {
    String result = image.split("base64,").last;
    Uint8List bytesImage = const Base64Decoder().convert(result);
    return bytesImage;
  }
}
