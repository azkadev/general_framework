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
class AuthorAds extends JsonScheme {
  /// Generated
  AuthorAds(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "authorAds", "is_locked": false, "platform_id": "", "account_user_id": 0, "full_name": "", "photo_profile": "", "photo_path": "", "url": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == authorAds
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

  /// create [AuthorAds]
  /// Empty
  static AuthorAds empty() {
    return AuthorAds({});
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
  bool? get is_locked {
    try {
      if (rawData["is_locked"] is bool == false) {
        return null;
      }
      return rawData["is_locked"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set is_locked(bool? value) {
    rawData["is_locked"] = value;
  }

  /// Generated
  String? get platform_id {
    try {
      if (rawData["platform_id"] is String == false) {
        return null;
      }
      return rawData["platform_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set platform_id(String? value) {
    rawData["platform_id"] = value;
  }

  /// Generated
  num? get account_user_id {
    try {
      if (rawData["account_user_id"] is num == false) {
        return null;
      }
      return rawData["account_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set account_user_id(num? value) {
    rawData["account_user_id"] = value;
  }

  /// Generated
  String? get full_name {
    try {
      if (rawData["full_name"] is String == false) {
        return null;
      }
      return rawData["full_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set full_name(String? value) {
    rawData["full_name"] = value;
  }

  /// Generated
  String? get photo_profile {
    try {
      if (rawData["photo_profile"] is String == false) {
        return null;
      }
      return rawData["photo_profile"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set photo_profile(String? value) {
    rawData["photo_profile"] = value;
  }

  /// Generated
  String? get photo_path {
    try {
      if (rawData["photo_path"] is String == false) {
        return null;
      }
      return rawData["photo_path"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set photo_path(String? value) {
    rawData["photo_path"] = value;
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
  static AuthorAds create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "authorAds",
    bool? is_locked,
    String? platform_id,
    num? account_user_id,
    String? full_name,
    String? photo_profile,
    String? photo_path,
    String? url,
  }) {
    // AuthorAds authorAds = AuthorAds({
    final Map authorAds_data_create_json = {
      "@type": special_type,
      "is_locked": is_locked,
      "platform_id": platform_id,
      "account_user_id": account_user_id,
      "full_name": full_name,
      "photo_profile": photo_profile,
      "photo_path": photo_path,
      "url": url,
    };

    authorAds_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (authorAds_data_create_json.containsKey(key) == false) {
          authorAds_data_create_json[key] = value;
        }
      });
    }
    return AuthorAds(authorAds_data_create_json);
  }
}
