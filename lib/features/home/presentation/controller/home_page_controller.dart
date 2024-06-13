import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../core/shared_preferences.dart';

class HomePageController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();

  Rx<VehicleModel> selectedVehicle = VehicleModel().obs;
  List<VehicleModel> vehicleList = [
    VehicleModel(type: "Car", nickname: "Speedy", vehicleNumber: "ABC123"),
    VehicleModel(type: "Bike", nickname: "Racer", vehicleNumber: "XYZ456"),
    VehicleModel(type: "3 wheel", nickname: "Trike", vehicleNumber: "DEF789"),
  ];

  @override
  void onInit() {
    selectedVehicle.value = vehicleList.first;
    super.onInit();
  }
}

class VehicleModel {
  String? type;
  String? nickname;
  String? vehicleNumber;

  VehicleModel({this.type, this.nickname, this.vehicleNumber});
}
