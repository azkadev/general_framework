/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "general_framework_documentation_documentation_side_bar.dart";
import "general_framework_documentation_documentations_content.dart";

/// Generated
class GeneralFrameworkDocumentationDocumentation extends JsonScheme {
  /// Generated
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

  /// Generated
  set doc_id(String? value) {
    rawData["doc_id"] = value;
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

  /// Generated
  set description(String? value) {
    rawData["description"] = value;
  }

  /// Generated
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

  /// Generated
  set sidebars(List<GeneralFrameworkDocumentationDocumentationSideBar> values) {
    rawData["sidebars"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
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

  /// Generated
  set contents(
      List<GeneralFrameworkDocumentationDocumentationsContent> values) {
    rawData["contents"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
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
