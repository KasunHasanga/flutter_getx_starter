import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../../core/shared_preferences.dart';

class IsolateController extends GetxController {
  SharedPref sharedPref = SharedPref();
  final storage = const FlutterSecureStorage();
}
