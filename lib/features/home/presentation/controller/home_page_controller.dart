import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../core/shared_preferences.dart';

class HomePageController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();



  @override
  void onInit() {
    super.onInit();
  }
}

class VehicleModel {
  String? type;
  String? nickname;
  String? vehicleNumber;

  VehicleModel({this.type, this.nickname, this.vehicleNumber});
}
