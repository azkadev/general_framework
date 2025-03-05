// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

/// AutoGenerateBy Packagex
class PackagexProjectGeneralFramework {
  /// AutoGenerateBy Packagex
  static bool isSame({required String data}) {
    return [default_data_to_string, json.encode(default_data)].contains(data);
  }

  /// AutoGenerateBy Packagex
  static String get default_data_to_string {
    return (JsonEncoder.withIndent(" " * 2).convert(default_data));
  }

  /// AutoGenerateBy Packagex
  static Map get default_data {
    return {
      "name": "general_framework",
      "description":
          "General Framework Library for help you create project more easy with general standarization style code base",
      "version": "0.0.18",
      "homepage": "https://github.com/azkadev/general_framework",
      "repository": "https://github.com/azkadev/general_framework",
      "documentation": "https://azkadev.github.io/general_framework/",
      "funding": ["https://github.com/sponsors/azkadev"],
      "platforms": {
        "android": null,
        "ios": null,
        "linux": null,
        "macos": null,
        "web": null,
        "windows": null
      },
      "executables": {"general_framework": "general_framework"},
      "issue_tracker": "https://t.me/DEVELOPER_GLOBAL_PUBLIC"
    };
  }
}
