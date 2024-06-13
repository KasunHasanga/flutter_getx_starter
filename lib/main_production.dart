









import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_starter/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'injector.dart' as di;


void main() async {
  await di.init();
  await GetStorage.init('MyPref');
  mainDelegate();
}

void mainDelegate() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(App(flavor: 'Production'));
  });
}


