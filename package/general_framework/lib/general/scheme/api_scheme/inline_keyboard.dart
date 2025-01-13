// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class InlineKeyboard extends JsonScheme {
  /// Generated
  InlineKeyboard(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "inlineKeyboard", "url": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == inlineKeyboard
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

  /// create [InlineKeyboard]
  /// Empty
  static InlineKeyboard empty() {
    return InlineKeyboard({});
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
  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set url(String? value) {
    rawData["url"] = value;
  }

  /// Generated
  static InlineKeyboard create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "inlineKeyboard",
    String? url,
  }) {
    // InlineKeyboard inlineKeyboard = InlineKeyboard({
    final Map inlineKeyboard_data_create_json = {
      "@type": special_type,
      "url": url,
    };

    inlineKeyboard_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (inlineKeyboard_data_create_json.containsKey(key) == false) {
          inlineKeyboard_data_create_json[key] = value;
        }
      });
    }
    return InlineKeyboard(inlineKeyboard_data_create_json);
  }
}
