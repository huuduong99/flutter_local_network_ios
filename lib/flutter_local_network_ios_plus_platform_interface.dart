import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_local_network_ios_plus_method_channel.dart';

abstract class FlutterLocalNetworkIosPlusPlatform extends PlatformInterface {
  /// Constructs a FlutterLocalNetworkIosPlusPlatform.
  FlutterLocalNetworkIosPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterLocalNetworkIosPlusPlatform _instance =
      MethodChannelFlutterLocalNetworkIosPlus();

  /// The default instance of [FlutterLocalNetworkIosPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterLocalNetworkIosPlus].
  static FlutterLocalNetworkIosPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterLocalNetworkIosPlusPlatform] when
  /// they register themselves.
  static set instance(FlutterLocalNetworkIosPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> requestAuthorization() {
    throw UnimplementedError(
        'requestAuthorization() has not been implemented.');
  }
}
