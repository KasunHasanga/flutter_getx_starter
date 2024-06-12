import 'dart:ui';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../config/bank_images.dart';
import '../../../../config/constants.dart';
import '../../../../core/shared_preferences.dart';

class ProfileController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();
  RxString selectedLanguage ="si".obs;




  @override
  void onInit() {

    selectedLanguage.value = "si";

    super.onInit();
  }


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
