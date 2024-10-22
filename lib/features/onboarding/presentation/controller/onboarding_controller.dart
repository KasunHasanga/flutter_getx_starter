import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../config/constants.dart';
import '../../../../core/shared_preferences.dart';
import '../pages/sign_in_page.dart';


class OnBoardingController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();
  RxString selectedLanguage ="si".obs;

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  checkSessionStatus() async {
    await Future.delayed(const Duration(seconds: 5), () async {
      if (await sharedPref.check(ShardPrefKey.appLocale)) {
        String currentLocale = await sharedPref.readSingle(ShardPrefKey.appLocale);
        if (kDebugMode) {
          print(currentLocale);
        }
        var locale = Locale(currentLocale);
        // if (currentLocale == "sv-SE") {
        //   selectedLanguage.value = countryLanguage[2];
        // } else if (currentLocale == "nb-NO") {
        //   selectedLanguage.value = countryLanguage[1];
        // } else if (currentLocale == "da-DK") {
        //   selectedLanguage.value = countryLanguage[0];
        // }
        changeLanguage(locale);
      } else {
        var locale = const Locale('en');

        // _helper.changeLanguage(locale);
      }

        if (await storage.containsKey(key: ShardPrefKey.sessionToken)) {
          Get.off(() => const SignInPage());
        } else {
          Get.off(() => const SignInPage());
        }

    });
  }

  ///
  /// Set App Language
  void changeLanguage(Locale selectedLocale) {
    sharedPref.saveSingle(ShardPrefKey.appLocale, selectedLocale.languageCode);
    Get.updateLocale(selectedLocale);
    if (selectedLocale.languageCode == "si") {
      selectedLanguage.value ="si";
    } else if (selectedLocale.languageCode == "en") {
      selectedLanguage.value = "en";
    }
  }
}
