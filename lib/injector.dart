import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'core/network/network_info.dart';
import 'core/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //controller

  //use cases

  //______________________________________________________________________________
  //repository

  //______________________________________________________________________________
  //data source

  //core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectivity: sl.call()));

  // external
  final SharedPref sharedPref = SharedPref();
  const storage = FlutterSecureStorage();

  sl.registerLazySingleton(() => sharedPref);
  sl.registerLazySingleton(() => storage);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => Connectivity());
}
