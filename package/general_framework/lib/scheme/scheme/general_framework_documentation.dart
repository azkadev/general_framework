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

import "general_framework_documentation_documentation.dart";
import "general_framework_documentation_footer.dart";

/// Generated
class GeneralFrameworkDocumentation extends JsonScheme {
  /// Generated
  GeneralFrameworkDocumentation(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentation",
      "logo": "",
      "title": "",
      "description": "",
      "content": "",
      "author_url_social_medias": ["url"],
      "documentations": [
        {
          "@type": "generalFrameworkDocumentationDocumentation",
          "doc_id": "",
          "title": "",
          "description": "",
          "sidebars": [
            {"@type": "generalFrameworkDocumentationDocumentationSideBar", "title": "", "navigate_content_id": "content"}
          ],
          "contents": [
            {"@type": "generalFrameworkDocumentationDocumentationsContent", "content_id": "", "content": ""}
          ]
        }
      ],
      "footer": {
        "@type": "generalFrameworkDocumentationFooter",
        "footers": [
          {
            "@type": "generalFrameworkDocumentationFooterData",
            "title": "",
            "footer": [
              {"@type": "generalFrameworkDocumentationFooterSubData", "text": "", "url": ""}
            ]
          }
        ]
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentation
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

  /// create [GeneralFrameworkDocumentation]
  /// Empty
  static GeneralFrameworkDocumentation empty() {
    return GeneralFrameworkDocumentation({});
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
  String? get logo {
    try {
      if (rawData["logo"] is String == false) {
        return null;
      }
      return rawData["logo"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set logo(String? value) {
    rawData["logo"] = value;
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

  /// Generated
  set content(String? value) {
    rawData["content"] = value;
  }

  /// Generated
  ///
  /// default:
  ///
  ///
  List<String> get author_url_social_medias {
    try {
      if (rawData["author_url_social_medias"] is List == false) {
        return [];
      }
      return (rawData["author_url_social_medias"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set author_url_social_medias(List<String> value) {
    rawData["author_url_social_medias"] = value;
  }

  /// Generated
  List<GeneralFrameworkDocumentationDocumentation> get documentations {
    try {
      if (rawData["documentations"] is List == false) {
        return [];
      }
      return (rawData["documentations"] as List).map((e) => GeneralFrameworkDocumentationDocumentation(e as Map)).toList().cast<GeneralFrameworkDocumentationDocumentation>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set documentations(List<GeneralFrameworkDocumentationDocumentation> values) {
    rawData["documentations"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
  GeneralFrameworkDocumentationFooter get footer {
    try {
      if (rawData["footer"] is Map == false) {
        return GeneralFrameworkDocumentationFooter({});
      }
      return GeneralFrameworkDocumentationFooter(rawData["footer"] as Map);
    } catch (e) {
      return GeneralFrameworkDocumentationFooter({});
    }
  }

  /// Generated
  set footer(GeneralFrameworkDocumentationFooter value) {
    rawData["footer"] = value.toJson();
  }

  /// Generated
  static GeneralFrameworkDocumentation create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentation",
    String? logo,
    String? title,
    String? description,
    String? content,
    List<String>? author_url_social_medias,
    List<GeneralFrameworkDocumentationDocumentation>? documentations,
    GeneralFrameworkDocumentationFooter? footer,
  }) {
    // GeneralFrameworkDocumentation generalFrameworkDocumentation = GeneralFrameworkDocumentation({
    final Map generalFrameworkDocumentation_data_create_json = {
      "@type": special_type,
      "logo": logo,
      "title": title,
      "description": description,
      "content": content,
      "author_url_social_medias": author_url_social_medias,
      "documentations": (documentations != null) ? documentations.toJson() : null,
      "footer": (footer != null) ? footer.toJson() : null,
    };

    generalFrameworkDocumentation_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentation_data_create_json.containsKey(key) == false) {
          generalFrameworkDocumentation_data_create_json[key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentation(generalFrameworkDocumentation_data_create_json);
  }
}
