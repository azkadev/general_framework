// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class GetUser extends JsonScheme {
  GetUser(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "getUser",
      "user_id": 0,
      "@return_type": "account",
      "@platform_id": "",
      "@platform_username": "",
      "@extra": "",
      "@expire_date": "",
      "@token": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == getUser
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

  /// create [GetUser]
  /// Empty
  static GetUser empty() {
    return GetUser({});
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

  num? get user_id {
    try {
      if (rawData["user_id"] is num == false) {
        return null;
      }
      return rawData["user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  set user_id(num? value) {
    rawData["user_id"] = value;
  }

  String? get special_return_type {
    try {
      if (rawData["@return_type"] is String == false) {
        return null;
      }
      return rawData["@return_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_return_type(String? value) {
    rawData["@return_type"] = value;
  }

  String? get special_platform_id {
    try {
      if (rawData["@platform_id"] is String == false) {
        return null;
      }
      return rawData["@platform_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_id(String? value) {
    rawData["@platform_id"] = value;
  }

  String? get special_platform_username {
    try {
      if (rawData["@platform_username"] is String == false) {
        return null;
      }
      return rawData["@platform_username"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_username(String? value) {
    rawData["@platform_username"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_token {
    try {
      if (rawData["@token"] is String == false) {
        return null;
      }
      return rawData["@token"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_token(String? value) {
    rawData["@token"] = value;
  }

  static GetUser create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "getUser",
    num? user_id,
    String special_return_type = "account",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
  }) {
    // GetUser getUser = GetUser({
    final Map getUser_data_create_json = {
      "@type": special_type,
      "user_id": user_id,
      "@return_type": special_return_type,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,
    };

    getUser_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (getUser_data_create_json.containsKey(key) == false) {
          getUser_data_create_json[key] = value;
        }
      });
    }
    return GetUser(getUser_data_create_json);
  }
}
