import 'package:general_framework/flutter/fork/device_frame/src/info/info.dart';
import 'package:flutter/widgets.dart';

/// A set of Linux devices.
class LinuxDevices {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const LinuxDevices();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get wideMonitor => _wideMonitor;
  static final _wideMonitor = DeviceInfo.genericDesktopMonitor(
    platform: TargetPlatform.linux,
    name: 'Large',
    id: 'large',
    screenSize: const Size(1920, 1080),
    windowPosition: Rect.fromCenter(
      center: const Offset(
        1920 * 0.5,
        1080 * 0.5,
      ),
      width: 1620,
      height: 780,
    ),
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get laptop => _laptop;
  static final _laptop = DeviceInfo.genericLaptop(
    platform: TargetPlatform.linux,
    name: 'Laptop',
    id: 'laptop',
    screenSize: const Size(1920, 1080),
    windowPosition: Rect.fromCenter(
      center: const Offset(
        1920 * 0.5,
        1080 * 0.5,
      ),
      width: 1620,
      height: 780,
    ),
  );

  /// All devices.
  List<DeviceInfo> get all => [
        wideMonitor,
        laptop,
      ];
}
