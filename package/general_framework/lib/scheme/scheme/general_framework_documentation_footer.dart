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

import "general_framework_documentation_footer_data.dart";

/// Generated
class GeneralFrameworkDocumentationFooter extends JsonScheme {
  /// Generated
  GeneralFrameworkDocumentationFooter(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "generalFrameworkDocumentationFooter",
      "footers": [
        {
          "@type": "generalFrameworkDocumentationFooterData",
          "title": "",
          "footer": [
            {
              "@type": "generalFrameworkDocumentationFooterSubData",
              "text": "",
              "url": ""
            }
          ]
        }
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == generalFrameworkDocumentationFooter
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

  /// create [GeneralFrameworkDocumentationFooter]
  /// Empty
  static GeneralFrameworkDocumentationFooter empty() {
    return GeneralFrameworkDocumentationFooter({});
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
  List<GeneralFrameworkDocumentationFooterData> get footers {
    try {
      if (rawData["footers"] is List == false) {
        return [];
      }
      return (rawData["footers"] as List)
          .map((e) => GeneralFrameworkDocumentationFooterData(e as Map))
          .toList()
          .cast<GeneralFrameworkDocumentationFooterData>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set footers(List<GeneralFrameworkDocumentationFooterData> values) {
    rawData["footers"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
  static GeneralFrameworkDocumentationFooter create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "generalFrameworkDocumentationFooter",
    List<GeneralFrameworkDocumentationFooterData>? footers,
  }) {
    // GeneralFrameworkDocumentationFooter generalFrameworkDocumentationFooter = GeneralFrameworkDocumentationFooter({
    final Map generalFrameworkDocumentationFooter_data_create_json = {
      "@type": special_type,
      "footers": (footers != null) ? footers.toJson() : null,
    };

    generalFrameworkDocumentationFooter_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationFooter_data_create_json
                .containsKey(key) ==
            false) {
          generalFrameworkDocumentationFooter_data_create_json[key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentationFooter(
        generalFrameworkDocumentationFooter_data_create_json);
  }
}
