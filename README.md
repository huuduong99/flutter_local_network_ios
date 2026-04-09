# flutter_local_network_ios

For iOS

* Add Key `Privacy - Local Network Usage Description` to info.plist.
* Add Key `Bonjour services` Value item `_paperang._tcp`

```xml
<key>NSBonjourServices</key>
<array>
    <string>_paperang._tcp</string>
</array>
```

```xml
<key>NSLocalNetworkUsageDescription</key>
<string>Do you want to allow access to the local network?</string>
```
