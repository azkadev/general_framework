// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class GetSessions extends JsonScheme {
  /// Generated
  GetSessions(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "getSessions",
      "offset": 0,
      "limit": 0,
      "@return_type": "sessions",
      "@client_token": "",
      "@platform_id": "",
      "@platform_username": "",
      "@extra": "",
      "@expire_date": "",
      "@token": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == getSessions
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

  /// create [GetSessions]
  /// Empty
  static GetSessions empty() {
    return GetSessions({});
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
  num? get offset {
    try {
      if (rawData["offset"] is num == false) {
        return null;
      }
      return rawData["offset"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set offset(num? value) {
    rawData["offset"] = value;
  }

  /// Generated
  num? get limit {
    try {
      if (rawData["limit"] is num == false) {
        return null;
      }
      return rawData["limit"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set limit(num? value) {
    rawData["limit"] = value;
  }

  /// Generated
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

  /// Generated
  set special_return_type(String? value) {
    rawData["@return_type"] = value;
  }

  /// Generated
  String? get special_client_token {
    try {
      if (rawData["@client_token"] is String == false) {
        return null;
      }
      return rawData["@client_token"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_client_token(String? value) {
    rawData["@client_token"] = value;
  }

  /// Generated
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

  /// Generated
  set special_platform_id(String? value) {
    rawData["@platform_id"] = value;
  }

  /// Generated
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

  /// Generated
  set special_platform_username(String? value) {
    rawData["@platform_username"] = value;
  }

  /// Generated
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

  /// Generated
  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  /// Generated
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

  /// Generated
  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  /// Generated
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

  /// Generated
  set special_token(String? value) {
    rawData["@token"] = value;
  }

  /// Generated
  static GetSessions create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "getSessions",
    num? offset,
    num? limit,
    String special_return_type = "sessions",
    String special_client_token = "",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
  }) {
    // GetSessions getSessions = GetSessions({
    final Map getSessions_data_create_json = {
      "@type": special_type,
      "offset": offset,
      "limit": limit,
      "@return_type": special_return_type,
      "@client_token": special_client_token,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,
    };

    getSessions_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (getSessions_data_create_json.containsKey(key) == false) {
          getSessions_data_create_json[key] = value;
        }
      });
    }
    return GetSessions(getSessions_data_create_json);
  }
}
