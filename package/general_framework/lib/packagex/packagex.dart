// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class PackagexProjectGeneralFramework {

  static bool isSame({
    required String data
  }) {
    return [default_data_to_string, json.encode(default_data)].contains(data);
  }

    static String get default_data_to_string {
      return (JsonEncoder.withIndent(" " * 2).convert(default_data));
    }

    static Map get default_data {
return {
  "name": "general_framework",
  "description": "General Framework Library for help you create project more easy with general standarization style code base",
  "version": "0.0.0",
  "homepage": "https://github.com/azkadev/general_framework",
  "repository": "https://github.com/azkadev/general_framework",
  "issue_tracker": "https://github.com/azkadev/general_framework/issues",
  "documentation": "https://github.com/azkadev/general_framework/tree/main/docs",
  "funding": [
    "https://github.com/sponsors/azkadev"
  ],
  "platforms": {
    "android": null,
    "ios": null,
    "linux": null,
    "macos": null,
    "web": null,
    "windows": null
  },
  "executables": {
    "general_framework": "general_framework"
  },
  "dependency_overrides": {
    "meta": "^1.12.0",
    "pointycastle": "3.8.0",
    "general_lib": {
      "path": "../../../general_lib"
    }
  },
  "publish_to": "none",
  "obfuscate": true,
  "split-debug-info": "0.0.0",
  "build-name": "0.0.0",
  "build-number": 1,
  "split-per-abi": true,
  "no-tree-shake-icons": true
};
    }

}