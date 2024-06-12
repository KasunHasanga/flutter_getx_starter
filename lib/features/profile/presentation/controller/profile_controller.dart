import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../core/shared_preferences.dart';

class ProfileController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}
