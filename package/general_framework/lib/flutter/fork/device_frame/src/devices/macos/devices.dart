import 'package:general_framework/flutter/fork/device_frame/src/info/info.dart';
import 'package:flutter/widgets.dart';
import 'package:general_framework/flutter/fork/device_frame/src/devices/macos/macbook_pro/device.dart'
    as i_macbook_pro;

/// A set of macOS devices.
class MacOSDevices {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const MacOSDevices();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get macBookPro => i_macbook_pro.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get wideMonitor => _wideMonitor;
  static final _wideMonitor = DeviceInfo.genericDesktopMonitor(
    platform: TargetPlatform.macOS,
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

  /// All available devices.
  List<DeviceInfo> get all => [
        macBookPro,
        wideMonitor,
      ];
}
