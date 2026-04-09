# flutter_local_network_ios_plus

A Flutter plugin for handling iOS local network permissions.

## iOS Setup

Add the following keys to your `ios/Runner/Info.plist` file:

### Privacy - Local Network Usage Description
```xml
<key>NSLocalNetworkUsageDescription</key>
<string>Do you want to allow access to the local network?</string>
```

### Bonjour Services
```xml
<key>NSBonjourServices</key>
<array>
    <string>_paperang._tcp</string>
</array>
```

## Usage

```dart
import 'package:flutter_local_network_ios_plus/flutter_local_network_ios_plus.dart';

// Request local network authorization
final plugin = FlutterLocalNetworkIosPlus();
bool? result = await plugin.requestAuthorization();
debugPrint("Authorization result: $result");
```
