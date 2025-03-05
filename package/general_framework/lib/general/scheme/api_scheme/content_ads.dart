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

import "inline_keyboard.dart";

/// Generated
class ContentAds extends JsonScheme {
  /// Generated
  ContentAds(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "contentAds",
      "ads_unique_id": "",
      "content_type": "",
      "medias": [""],
      "caption": "",
      "inline_keyboard": [
        [
          {"@type": "inlineKeyboard", "url": ""}
        ]
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == contentAds
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

  /// create [ContentAds]
  /// Empty
  static ContentAds empty() {
    return ContentAds({});
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
  String? get ads_unique_id {
    try {
      if (rawData["ads_unique_id"] is String == false) {
        return null;
      }
      return rawData["ads_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set ads_unique_id(String? value) {
    rawData["ads_unique_id"] = value;
  }

  /// Generated
  String? get content_type {
    try {
      if (rawData["content_type"] is String == false) {
        return null;
      }
      return rawData["content_type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set content_type(String? value) {
    rawData["content_type"] = value;
  }

  /// Generated
  ///
  /// default:
  ///
  ///
  List<String> get medias {
    try {
      if (rawData["medias"] is List == false) {
        return [];
      }
      return (rawData["medias"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set medias(List<String> value) {
    rawData["medias"] = value;
  }

  /// Generated
  String? get caption {
    try {
      if (rawData["caption"] is String == false) {
        return null;
      }
      return rawData["caption"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set caption(String? value) {
    rawData["caption"] = value;
  }

  /// Generated
  List<List<InlineKeyboard>> get inline_keyboard {
    try {
      if (rawData["inline_keyboard"] is List == false) {
        return [];
      }
      return ((rawData["inline_keyboard"] as List).cast<List>())
          .map((e) => e
              .map((e) => InlineKeyboard(e as Map))
              .toList()
              .cast<InlineKeyboard>())
          .toList()
          .cast<List<InlineKeyboard>>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set inline_keyboard(List<List<InlineKeyboard>> values) {
    rawData["inline_keyboard"] = values
        .map((value) => value.map((value) => value.toJson()).toList())
        .toList();
  }

  /// Generated
  static ContentAds create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "contentAds",
    String? ads_unique_id,
    String? content_type,
    List<String>? medias,
    String? caption,
    List<List<InlineKeyboard>>? inline_keyboard,
  }) {
    // ContentAds contentAds = ContentAds({
    final Map contentAds_data_create_json = {
      "@type": special_type,
      "ads_unique_id": ads_unique_id,
      "content_type": content_type,
      "medias": medias,
      "caption": caption,
      "inline_keyboard": (inline_keyboard != null)
          ? inline_keyboard
              .map((res) => res.map((e) => e.toJson()).toList().cast<Map>())
              .toList()
              .cast<List<Map>>()
          : null,
    };

    contentAds_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (contentAds_data_create_json.containsKey(key) == false) {
          contentAds_data_create_json[key] = value;
        }
      });
    }
    return ContentAds(contentAds_data_create_json);
  }
}
