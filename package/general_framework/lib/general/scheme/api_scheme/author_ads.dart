// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AuthorAds extends JsonScheme {
  AuthorAds(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "authorAds",
      "is_locked": false,
      "platform_id": "",
      "account_user_id": 0,
      "full_name": "",
      "photo_profile": "",
      "photo_path": "",
      "url": ""
    };
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

  set is_locked(bool? value) {
    rawData["is_locked"] = value;
  }

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

  set platform_id(String? value) {
    rawData["platform_id"] = value;
  }

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

  set account_user_id(num? value) {
    rawData["account_user_id"] = value;
  }

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

  set full_name(String? value) {
    rawData["full_name"] = value;
  }

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

  set photo_profile(String? value) {
    rawData["photo_profile"] = value;
  }

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

  set photo_path(String? value) {
    rawData["photo_path"] = value;
  }

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

  set url(String? value) {
    rawData["url"] = value;
  }

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
