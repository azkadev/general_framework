// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "general_framework_documentation_documentation_side_bar.dart";
import "general_framework_documentation_documentations_content.dart";

class GeneralFrameworkDocumentationDocumentation extends JsonScheme {
  GeneralFrameworkDocumentationDocumentation(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationDocumentation",
      "doc_id": "",
      "title": "",
      "description": "",
      "sidebars": [
        {
          "@type": "generalFrameworkDocumentationDocumentationSideBar",
          "title": "",
          "navigate_content_id": "content"
        }
      ],
      "contents": [
        {
          "@type": "generalFrameworkDocumentationDocumentationsContent",
          "content_id": "",
          "content": ""
        }
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationDocumentation
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

  /// create [GeneralFrameworkDocumentationDocumentation]
  /// Empty
  static GeneralFrameworkDocumentationDocumentation empty() {
    return GeneralFrameworkDocumentationDocumentation({});
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

  String? get doc_id {
    try {
      if (rawData["doc_id"] is String == false) {
        return null;
      }
      return rawData["doc_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set doc_id(String? value) {
    rawData["doc_id"] = value;
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

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  set description(String? value) {
    rawData["description"] = value;
  }

  List<GeneralFrameworkDocumentationDocumentationSideBar> get sidebars {
    try {
      if (rawData["sidebars"] is List == false) {
        return [];
      }
      return (rawData["sidebars"] as List)
          .map((e) =>
              GeneralFrameworkDocumentationDocumentationSideBar(e as Map))
          .toList()
          .cast<GeneralFrameworkDocumentationDocumentationSideBar>();
    } catch (e) {
      return [];
    }
  }

  set sidebars(List<GeneralFrameworkDocumentationDocumentationSideBar> values) {
    rawData["sidebars"] = values.map((value) => value.toJson()).toList();
  }

  List<GeneralFrameworkDocumentationDocumentationsContent> get contents {
    try {
      if (rawData["contents"] is List == false) {
        return [];
      }
      return (rawData["contents"] as List)
          .map((e) =>
              GeneralFrameworkDocumentationDocumentationsContent(e as Map))
          .toList()
          .cast<GeneralFrameworkDocumentationDocumentationsContent>();
    } catch (e) {
      return [];
    }
  }

  set contents(
      List<GeneralFrameworkDocumentationDocumentationsContent> values) {
    rawData["contents"] = values.map((value) => value.toJson()).toList();
  }

  static GeneralFrameworkDocumentationDocumentation create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationDocumentation",
    String? doc_id,
    String? title,
    String? description,
    List<GeneralFrameworkDocumentationDocumentationSideBar>? sidebars,
    List<GeneralFrameworkDocumentationDocumentationsContent>? contents,
  }) {
    // GeneralFrameworkDocumentationDocumentation generalFrameworkDocumentationDocumentation = GeneralFrameworkDocumentationDocumentation({
    final Map generalFrameworkDocumentationDocumentation_data_create_json = {
      "@type": special_type,
      "doc_id": doc_id,
      "title": title,
      "description": description,
      "sidebars": (sidebars != null) ? sidebars.toJson() : null,
      "contents": (contents != null) ? contents.toJson() : null,
    };

    generalFrameworkDocumentationDocumentation_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationDocumentation_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationDocumentation_data_create_json[key] =
              value;
        }
      });
    }
    return GeneralFrameworkDocumentationDocumentation(
        generalFrameworkDocumentationDocumentation_data_create_json);
  }
}
