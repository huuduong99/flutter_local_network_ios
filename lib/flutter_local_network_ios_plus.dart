import 'flutter_local_network_ios_plus_platform_interface.dart';

class FlutterLocalNetworkIosPlus {
  Future<String?> getPlatformVersion() {
    return FlutterLocalNetworkIosPlusPlatform.instance.getPlatformVersion();
  }

  Future<bool?> requestAuthorization() {
    return FlutterLocalNetworkIosPlusPlatform.instance.requestAuthorization();
  }
}
