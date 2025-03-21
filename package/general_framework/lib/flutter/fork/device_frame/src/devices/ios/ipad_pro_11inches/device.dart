import 'package:general_framework/flutter/fork/device_frame/src/info/device_type.dart';
import 'package:general_framework/flutter/fork/device_frame/src/info/identifier.dart';
import 'package:general_framework/flutter/fork/device_frame/src/info/info.dart';
import 'package:flutter/material.dart';

part 'frame.g.dart';
part 'screen.g.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final info = DeviceInfo(
  identifier: const DeviceIdentifier(
    TargetPlatform.iOS,
    DeviceType.tablet,
    'ipad-pad-pro-11inches',
  ),
  name: 'iPad Pro (11")',
  pixelRatio: 3.0,
  frameSize: const Size(1741.0, 2412.0),
  screenSize: const Size(834.0, 1194.0),
  safeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 20.0,
    right: 0.0,
    bottom: 0.0,
  ),
  rotatedSafeAreas: const EdgeInsets.only(
    left: 0.0,
    top: 20.0,
    right: 0.0,
    bottom: 0.0,
  ),
  framePainter: const _FramePainter(),
  screenPath: _screenPath,
);
