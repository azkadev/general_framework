import 'package:general_framework/flutter/fork/device_frame/src/info/info.dart';

import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_12_mini/device.dart'
    as i_iphone_12_mini;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_12/device.dart'
    as i_iphone_12;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_12_pro_max/device.dart'
    as i_iphone_12_pro_max;

import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_13_mini/device.dart'
    as i_iphone_13_mini;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_13/device.dart'
    as i_iphone_13;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_13_pro_max/device.dart'
    as i_iphone_13_pro_max;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/iphone_se/device.dart'
    as i_iphone_se;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/ipad_air_4/device.dart'
    as i_ipad_air_4;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/ipad/device.dart'
    as i_ipad;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/ipad_pro_11inches/device.dart'
    as i_ipad_pro_11inches;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/ipad_pro_12Inches_gen2/device.dart'
    as i_ipad_12inches_gen2;
import 'package:general_framework/flutter/fork/device_frame/src/devices/ios/ipad_pro_12Inches_gen4/device.dart'
    as i_ipad_12inches_gen4;

/// A set of iOS devices.
class IosDevices {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const IosDevices();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone12Mini => i_iphone_12_mini.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone12 => i_iphone_12.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone12ProMax => i_iphone_12_pro_max.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone13Mini => i_iphone_13_mini.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone13 => i_iphone_13.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhone13ProMax => i_iphone_13_pro_max.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPhoneSE => i_iphone_se.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPadAir4 => i_ipad_air_4.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPad => i_ipad.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPadPro11Inches => i_ipad_pro_11inches.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPad12InchesGen2 => i_ipad_12inches_gen2.info;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  DeviceInfo get iPad12InchesGen4 => i_ipad_12inches_gen4.info;

  /// All devices.
  List<DeviceInfo> get all => [
        // Phones
        iPhone12Mini,
        iPhone12,
        iPhone12ProMax,
        iPhone13Mini,
        iPhone13,
        iPhone13ProMax,
        iPhoneSE,
        //Tablets
        iPadAir4,
        iPad,
        iPadPro11Inches,
      ];
}
