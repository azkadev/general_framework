// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "general_framework_documentation_footer_sub_data.dart";

/// Generated
class GeneralFrameworkDocumentationFooterData extends JsonScheme {
  /// Generated
  GeneralFrameworkDocumentationFooterData(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationFooterData",
      "title": "",
      "footer": [
        {
          "@type": "generalFrameworkDocumentationFooterSubData",
          "text": "",
          "url": ""
        }
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationFooterData
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

  /// create [GeneralFrameworkDocumentationFooterData]
  /// Empty
  static GeneralFrameworkDocumentationFooterData empty() {
    return GeneralFrameworkDocumentationFooterData({});
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
  List<GeneralFrameworkDocumentationFooterSubData> get footer {
    try {
      if (rawData["footer"] is List == false) {
        return [];
      }
      return (rawData["footer"] as List)
          .map((e) => GeneralFrameworkDocumentationFooterSubData(e as Map))
          .toList()
          .cast<GeneralFrameworkDocumentationFooterSubData>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set footer(List<GeneralFrameworkDocumentationFooterSubData> values) {
    rawData["footer"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
  static GeneralFrameworkDocumentationFooterData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationFooterData",
    String? title,
    List<GeneralFrameworkDocumentationFooterSubData>? footer,
  }) {
    // GeneralFrameworkDocumentationFooterData generalFrameworkDocumentationFooterData = GeneralFrameworkDocumentationFooterData({
    final Map generalFrameworkDocumentationFooterData_data_create_json = {
      "@type": special_type,
      "title": title,
      "footer": (footer != null) ? footer.toJson() : null,
    };

    generalFrameworkDocumentationFooterData_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationFooterData_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationFooterData_data_create_json[key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentationFooterData(
        generalFrameworkDocumentationFooterData_data_create_json);
  }
}
