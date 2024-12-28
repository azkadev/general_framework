// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class GeneralFrameworkDocumentationDocumentationSideBar extends JsonScheme {
  GeneralFrameworkDocumentationDocumentationSideBar(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationDocumentationSideBar",
      "title": "",
      "navigate_content_id": "content"
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationDocumentationSideBar
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

  /// create [GeneralFrameworkDocumentationDocumentationSideBar]
  /// Empty
  static GeneralFrameworkDocumentationDocumentationSideBar empty() {
    return GeneralFrameworkDocumentationDocumentationSideBar({});
  }

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

  set special_type(String? value) {
    rawData["@type"] = value;
  }

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

  set title(String? value) {
    rawData["title"] = value;
  }

  String? get navigate_content_id {
    try {
      if (rawData["navigate_content_id"] is String == false) {
        return null;
      }
      return rawData["navigate_content_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set navigate_content_id(String? value) {
    rawData["navigate_content_id"] = value;
  }

  static GeneralFrameworkDocumentationDocumentationSideBar create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationDocumentationSideBar",
    String? title,
    String? navigate_content_id,
  }) {
    // GeneralFrameworkDocumentationDocumentationSideBar generalFrameworkDocumentationDocumentationSideBar = GeneralFrameworkDocumentationDocumentationSideBar({
    final Map
        generalFrameworkDocumentationDocumentationSideBar_data_create_json = {
      "@type": special_type,
      "title": title,
      "navigate_content_id": navigate_content_id,
    };

    generalFrameworkDocumentationDocumentationSideBar_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationDocumentationSideBar_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationDocumentationSideBar_data_create_json[
              key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentationDocumentationSideBar(
        generalFrameworkDocumentationDocumentationSideBar_data_create_json);
  }
}
