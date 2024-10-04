// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class GeneralFrameworkDocumentationDocumentationsContent extends JsonScheme {
  GeneralFrameworkDocumentationDocumentationsContent(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationDocumentationsContent",
      "content_id": "",
      "content": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationDocumentationsContent
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

  /// create [GeneralFrameworkDocumentationDocumentationsContent]
  /// Empty
  static GeneralFrameworkDocumentationDocumentationsContent empty() {
    return GeneralFrameworkDocumentationDocumentationsContent({});
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

  String? get content_id {
    try {
      if (rawData["content_id"] is String == false) {
        return null;
      }
      return rawData["content_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set content_id(String? value) {
    rawData["content_id"] = value;
  }

  String? get content {
    try {
      if (rawData["content"] is String == false) {
        return null;
      }
      return rawData["content"] as String;
    } catch (e) {
      return null;
    }
  }

  set content(String? value) {
    rawData["content"] = value;
  }

  static GeneralFrameworkDocumentationDocumentationsContent create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationDocumentationsContent",
    String? content_id,
    String? content,
  }) {
    // GeneralFrameworkDocumentationDocumentationsContent generalFrameworkDocumentationDocumentationsContent = GeneralFrameworkDocumentationDocumentationsContent({
    final Map
        generalFrameworkDocumentationDocumentationsContent_data_create_json = {
      "@type": special_type,
      "content_id": content_id,
      "content": content,
    };

    generalFrameworkDocumentationDocumentationsContent_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationDocumentationsContent_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationDocumentationsContent_data_create_json[
              key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentationDocumentationsContent(
        generalFrameworkDocumentationDocumentationsContent_data_create_json);
  }
}
