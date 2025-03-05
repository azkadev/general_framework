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
class GeneralFrameworkDocumentationDocumentationsContent extends JsonScheme {
  /// Generated
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

  /// Generated
  set content_id(String? value) {
    rawData["content_id"] = value;
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
