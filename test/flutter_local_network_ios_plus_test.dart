import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_local_network_ios_plus/flutter_local_network_ios_plus.dart';
import 'package:flutter_local_network_ios_plus/flutter_local_network_ios_plus_platform_interface.dart';
import 'package:flutter_local_network_ios_plus/flutter_local_network_ios_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterLocalNetworkIosPlusPlatform
    with MockPlatformInterfaceMixin
    implements FlutterLocalNetworkIosPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<bool?> requestAuthorization() {
    // TODO: implement requestAuthorization
    throw UnimplementedError();
  }
}

void main() {
  final FlutterLocalNetworkIosPlusPlatform initialPlatform =
      FlutterLocalNetworkIosPlusPlatform.instance;

  test('$MethodChannelFlutterLocalNetworkIosPlus is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelFlutterLocalNetworkIosPlus>());
  });

  test('getPlatformVersion', () async {
    FlutterLocalNetworkIosPlus flutterLocalNetworkIosPlusPlugin =
        FlutterLocalNetworkIosPlus();
    MockFlutterLocalNetworkIosPlusPlatform fakePlatform =
        MockFlutterLocalNetworkIosPlusPlatform();
    FlutterLocalNetworkIosPlusPlatform.instance = fakePlatform;

    expect(await flutterLocalNetworkIosPlusPlugin.getPlatformVersion(), '42');
  });
}
