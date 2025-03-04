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

/// Generated
class GeneralFrameworkDocumentationFooterSubData extends JsonScheme {
  /// Generated
  GeneralFrameworkDocumentationFooterSubData(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "generalFrameworkDocumentationFooterSubData", "text": "", "url": ""};
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

    generalFrameworkDocumentationFooterSubData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationFooterSubData_data_create_json.containsKey(key) == false) {
          generalFrameworkDocumentationFooterSubData_data_create_json[key] = value;
        }
      });
    }
    return GeneralFrameworkDocumentationFooterSubData(generalFrameworkDocumentationFooterSubData_data_create_json);
  }
}
