import 'package:general_framework/flutter/fork/device_frame/src/devices/generic/desktop_monitor/device.dart';
import 'package:general_framework/flutter/fork/device_frame/src/devices/generic/laptop/device.dart';
import 'package:general_framework/flutter/fork/device_frame/src/devices/generic/phone/device.dart';
import 'package:general_framework/flutter/fork/device_frame/src/devices/generic/tablet/device.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

import 'identifier.dart';

// part 'info.freezed.dart';

/// Info about a device and its frame.
// @freezed
class DeviceInfo {
  /// Identifier of the device.
  final DeviceIdentifier identifier;

  /// The display name of the device.
  final String name;

  /// The safe areas when the device is in landscape orientation.
  final EdgeInsets? rotatedSafeAreas;

  /// The safe areas when the device is in portrait orientation.
  final EdgeInsets safeAreas;

  /// A shape representing the screen.
  final Path screenPath;

  /// The screen pixel density of the device.
  final double pixelRatio;

  /// The safe areas when the device is in portrait orientation.
  final CustomPainter framePainter;

  /// The frame size in pixels.
  final Size frameSize;

  /// The size in points of the screen content.
  final Size screenSize;

  /// Create a new device info.
  const DeviceInfo({
    /// Identifier of the device.
    required this.identifier,

    /// The display name of the device.
    required this.name,

    /// The safe areas when the device is in landscape orientation.
    this.rotatedSafeAreas,

    /// The safe areas when the device is in portrait orientation.
    required this.safeAreas,

    /// A shape representing the screen.
    required this.screenPath,

    /// The screen pixel density of the device.
    required this.pixelRatio,

    /// The safe areas when the device is in portrait orientation.
    required this.framePainter,

    /// The frame size in pixels.
    required this.frameSize,

    /// The size in points of the screen content.
    required this.screenSize,
  });

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  factory DeviceInfo.genericTablet({
    required TargetPlatform platform,
    required String id,
    required String name,
    required Size screenSize,
    EdgeInsets safeAreas = EdgeInsets.zero,
    EdgeInsets rotatedSafeAreas = EdgeInsets.zero,
    double pixelRatio = 2.0,
    GenericTabletFramePainter framePainter = const GenericTabletFramePainter(),
  }) =>
      buildGenericTabletDevice(
        platform: platform,
        id: id,
        name: name,
        screenSize: screenSize,
        safeAreas: safeAreas,
        rotatedSafeAreas: rotatedSafeAreas,
        pixelRatio: pixelRatio,
        framePainter: framePainter,
      );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  factory DeviceInfo.genericPhone({
    required TargetPlatform platform,
    required String id,
    required String name,
    required Size screenSize,
    EdgeInsets safeAreas = EdgeInsets.zero,
    EdgeInsets rotatedSafeAreas = EdgeInsets.zero,
    double pixelRatio = 2.0,
    GenericPhoneFramePainter framePainter = const GenericPhoneFramePainter(),
  }) =>
      buildGenericPhoneDevice(
        platform: platform,
        id: id,
        name: name,
        screenSize: screenSize,
        safeAreas: safeAreas,
        rotatedSafeAreas: rotatedSafeAreas,
        pixelRatio: pixelRatio,
        framePainter: framePainter,
      );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  factory DeviceInfo.genericDesktopMonitor({
    required TargetPlatform platform,
    required String id,
    required String name,
    required Size screenSize,
    required Rect windowPosition,
    EdgeInsets safeAreas = EdgeInsets.zero,
    double pixelRatio = 2.0,
    GenericDesktopMonitorFramePainter? framePainter,
  }) =>
      buildGenericDesktopMonitorDevice(
        platform: platform,
        id: id,
        name: name,
        screenSize: screenSize,
        windowPosition: windowPosition,
        safeAreas: safeAreas,
        pixelRatio: pixelRatio,
        framePainter: framePainter,
      );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  factory DeviceInfo.genericLaptop({
    required TargetPlatform platform,
    required String id,
    required String name,
    required Size screenSize,
    required Rect windowPosition,
    EdgeInsets safeAreas = EdgeInsets.zero,
    double pixelRatio = 2.0,
    GenericLaptopFramePainter? framePainter,
  }) =>
      buildGenericLaptopDevice(
        platform: platform,
        id: id,
        name: name,
        screenSize: screenSize,
        windowPosition: windowPosition,
        safeAreas: safeAreas,
        pixelRatio: pixelRatio,
        framePainter: framePainter,
      );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo copyWith() {
    return DeviceInfo(
      identifier: identifier,
      name: name,
      safeAreas: safeAreas,
      screenPath: screenPath,
      pixelRatio: pixelRatio,
      framePainter: framePainter,
      frameSize: frameSize,
      screenSize: screenSize,
    );
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension DeviceInfoExtension on DeviceInfo {
  /// Indicates whether the device can rotate.
  bool get canRotate => rotatedSafeAreas != null;

  /// Indicates whether the current device info should be in landscape.
  ///
  /// This is true only if the device can rotate.
  bool isLandscape(Orientation orientation) {
    return canRotate && orientation == Orientation.landscape;
  }
}
