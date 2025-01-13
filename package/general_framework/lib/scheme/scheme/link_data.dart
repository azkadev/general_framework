// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class LinkData extends JsonScheme {
  /// Generated
  LinkData(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "linkData", "icon": "", "title": "", "value": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == linkData
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [LinkData]
  /// Empty
  static LinkData empty() {
    return LinkData({});
  }

  /// Generated
  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_type(String? value) {
    rawData["@type"] = value;
  }

  /// Generated
  String? get icon {
    try {
      if (rawData["icon"] is String == false) {
        return null;
      }
      return rawData["icon"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set icon(String? value) {
    rawData["icon"] = value;
  }

  /// Generated
  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set title(String? value) {
    rawData["title"] = value;
  }

  /// Generated
  String? get value {
    try {
      if (rawData["value"] is String == false) {
        return null;
      }
      return rawData["value"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set value(String? value) {
    rawData["value"] = value;
  }

  /// Generated
  static LinkData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "linkData",
    String? icon,
    String? title,
    String? value,
  }) {
    // LinkData linkData = LinkData({
    final Map linkData_data_create_json = {
      "@type": special_type,
      "icon": icon,
      "title": title,
      "value": value,
    };

    linkData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (linkData_data_create_json.containsKey(key) == false) {
          linkData_data_create_json[key] = value;
        }
      });
    }
    return LinkData(linkData_data_create_json);
  }
}
