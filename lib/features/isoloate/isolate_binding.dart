import 'package:flutter_getx_starter/features/isoloate/presentation/controller/isolate_controller.dart';
import 'package:flutter_getx_starter/features/profile/presentation/controller/profile_controller.dart';
import 'package:get/get.dart';

class IsolateBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<IsolateController>(() => IsolateController());
  }

}