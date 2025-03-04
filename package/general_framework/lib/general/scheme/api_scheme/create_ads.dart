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

import "author_ads.dart";
import "content_ads.dart";

/// Generated
class CreateAds extends JsonScheme {
  /// Generated
  CreateAds(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "createAds",
      "is_anonymous": false,
      "is_anonymous_locked": false,
      "amount_day": 0,
      "show_on_platforms": [""],
      "author": {"@type": "authorAds", "is_locked": false, "platform_id": "", "account_user_id": 0, "full_name": "", "photo_profile": "", "photo_path": "", "url": ""},
      "ads": {
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
      }
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == createAds
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

  /// create [CreateAds]
  /// Empty
  static CreateAds empty() {
    return CreateAds({});
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
  bool? get is_anonymous {
    try {
      if (rawData["is_anonymous"] is bool == false) {
        return null;
      }
      return rawData["is_anonymous"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set is_anonymous(bool? value) {
    rawData["is_anonymous"] = value;
  }

  /// Generated
  bool? get is_anonymous_locked {
    try {
      if (rawData["is_anonymous_locked"] is bool == false) {
        return null;
      }
      return rawData["is_anonymous_locked"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set is_anonymous_locked(bool? value) {
    rawData["is_anonymous_locked"] = value;
  }

  /// Generated
  num? get amount_day {
    try {
      if (rawData["amount_day"] is num == false) {
        return null;
      }
      return rawData["amount_day"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set amount_day(num? value) {
    rawData["amount_day"] = value;
  }

  /// Generated
  ///
  /// default:
  ///
  ///
  List<String> get show_on_platforms {
    try {
      if (rawData["show_on_platforms"] is List == false) {
        return [];
      }
      return (rawData["show_on_platforms"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set show_on_platforms(List<String> value) {
    rawData["show_on_platforms"] = value;
  }

  /// Generated
  AuthorAds get author {
    try {
      if (rawData["author"] is Map == false) {
        return AuthorAds({});
      }
      return AuthorAds(rawData["author"] as Map);
    } catch (e) {
      return AuthorAds({});
    }
  }

  /// Generated
  set author(AuthorAds value) {
    rawData["author"] = value.toJson();
  }

  /// Generated
  ContentAds get ads {
    try {
      if (rawData["ads"] is Map == false) {
        return ContentAds({});
      }
      return ContentAds(rawData["ads"] as Map);
    } catch (e) {
      return ContentAds({});
    }
  }

  /// Generated
  set ads(ContentAds value) {
    rawData["ads"] = value.toJson();
  }

  /// Generated
  static CreateAds create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "createAds",
    bool? is_anonymous,
    bool? is_anonymous_locked,
    num? amount_day,
    List<String>? show_on_platforms,
    AuthorAds? author,
    ContentAds? ads,
  }) {
    // CreateAds createAds = CreateAds({
    final Map createAds_data_create_json = {
      "@type": special_type,
      "is_anonymous": is_anonymous,
      "is_anonymous_locked": is_anonymous_locked,
      "amount_day": amount_day,
      "show_on_platforms": show_on_platforms,
      "author": (author != null) ? author.toJson() : null,
      "ads": (ads != null) ? ads.toJson() : null,
    };

    createAds_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (createAds_data_create_json.containsKey(key) == false) {
          createAds_data_create_json[key] = value;
        }
      });
    }
    return CreateAds(createAds_data_create_json);
  }
}
