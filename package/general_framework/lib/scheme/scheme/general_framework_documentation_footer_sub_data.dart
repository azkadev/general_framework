// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class GeneralFrameworkDocumentationFooterSubData extends JsonScheme {
  /// Generated
  GeneralFrameworkDocumentationFooterSubData(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationFooterSubData",
      "text": "",
      "url": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationFooterSubData
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

  /// create [GeneralFrameworkDocumentationFooterSubData]
  /// Empty
  static GeneralFrameworkDocumentationFooterSubData empty() {
    return GeneralFrameworkDocumentationFooterSubData({});
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
  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set text(String? value) {
    rawData["text"] = value;
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
  static GeneralFrameworkDocumentationFooterSubData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationFooterSubData",
    String? text,
    String? url,
  }) {
    // GeneralFrameworkDocumentationFooterSubData generalFrameworkDocumentationFooterSubData = GeneralFrameworkDocumentationFooterSubData({
    final Map generalFrameworkDocumentationFooterSubData_data_create_json = {
      "@type": special_type,
      "text": text,
      "url": url,
    };

    generalFrameworkDocumentationFooterSubData_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationFooterSubData_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationFooterSubData_data_create_json[key] =
              value;
        }
      });
    }
    return GeneralFrameworkDocumentationFooterSubData(
        generalFrameworkDocumentationFooterSubData_data_create_json);
  }
}
