import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl({required this.connectivity});

  @override
  Future<bool> isConnected() async {
    // TODO: implement isConnected
    var connectivityResult = await connectivity.checkConnectivity();
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        {
          return true;
        }
      case ConnectivityResult.wifi:
        {
          return true;
        }
      default:
        {
          return false;
        }
    }
  }
}
