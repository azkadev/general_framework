// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

/// Generated
class SessionDatabase extends JsonScheme {
  /// Generated
  SessionDatabase(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "sessionDatabase",
      "account_user_id": 0,
      "token": "",
      "from_app_id": "",
      "owner_account_user_id": 0
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == sessionDatabase
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

  /// create [SessionDatabase]
  /// Empty
  static SessionDatabase empty() {
    return SessionDatabase({});
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
  String? get token {
    try {
      if (rawData["token"] is String == false) {
        return null;
      }
      return rawData["token"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set token(String? value) {
    rawData["token"] = value;
  }

  /// Generated
  String? get from_app_id {
    try {
      if (rawData["from_app_id"] is String == false) {
        return null;
      }
      return rawData["from_app_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set from_app_id(String? value) {
    rawData["from_app_id"] = value;
  }

  /// Generated
  num? get owner_account_user_id {
    try {
      if (rawData["owner_account_user_id"] is num == false) {
        return null;
      }
      return rawData["owner_account_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set owner_account_user_id(num? value) {
    rawData["owner_account_user_id"] = value;
  }

  /// Generated
  static SessionDatabase create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "sessionDatabase",
    num? account_user_id,
    String? token,
    String? from_app_id,
    num? owner_account_user_id,
  }) {
    // SessionDatabase sessionDatabase = SessionDatabase({
    final Map sessionDatabase_data_create_json = {
      "@type": special_type,
      "account_user_id": account_user_id,
      "token": token,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
    };

    sessionDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (sessionDatabase_data_create_json.containsKey(key) == false) {
          sessionDatabase_data_create_json[key] = value;
        }
      });
    }
    return SessionDatabase(sessionDatabase_data_create_json);
  }
}
