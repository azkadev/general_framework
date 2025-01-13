// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "link_data.dart";

/// Generated
class AccountData extends JsonScheme {
  /// Generated
  AccountData(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "accountData",
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "profile_picture": "",
      "bio": "",
      "social_medias": [
        {"@type": "linkData", "icon": "", "title": "", "value": ""}
      ]
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == accountData
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

  /// create [AccountData]
  /// Empty
  static AccountData empty() {
    return AccountData({});
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
  num? get id {
    try {
      if (rawData["id"] is num == false) {
        return null;
      }
      return rawData["id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set id(num? value) {
    rawData["id"] = value;
  }

  /// Generated
  String? get first_name {
    try {
      if (rawData["first_name"] is String == false) {
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set first_name(String? value) {
    rawData["first_name"] = value;
  }

  /// Generated
  String? get last_name {
    try {
      if (rawData["last_name"] is String == false) {
        return null;
      }
      return rawData["last_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set last_name(String? value) {
    rawData["last_name"] = value;
  }

  /// Generated
  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set username(String? value) {
    rawData["username"] = value;
  }

  /// Generated
  String? get profile_picture {
    try {
      if (rawData["profile_picture"] is String == false) {
        return null;
      }
      return rawData["profile_picture"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set profile_picture(String? value) {
    rawData["profile_picture"] = value;
  }

  /// Generated
  String? get bio {
    try {
      if (rawData["bio"] is String == false) {
        return null;
      }
      return rawData["bio"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set bio(String? value) {
    rawData["bio"] = value;
  }

  /// Generated
  List<LinkData> get social_medias {
    try {
      if (rawData["social_medias"] is List == false) {
        return [];
      }
      return (rawData["social_medias"] as List)
          .map((e) => LinkData(e as Map))
          .toList()
          .cast<LinkData>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set social_medias(List<LinkData> values) {
    rawData["social_medias"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
  static AccountData create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "accountData",
    num? id,
    String? first_name,
    String? last_name,
    String? username,
    String? profile_picture,
    String? bio,
    List<LinkData>? social_medias,
  }) {
    // AccountData accountData = AccountData({
    final Map accountData_data_create_json = {
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "profile_picture": profile_picture,
      "bio": bio,
      "social_medias": (social_medias != null) ? social_medias.toJson() : null,
    };

    accountData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (accountData_data_create_json.containsKey(key) == false) {
          accountData_data_create_json[key] = value;
        }
      });
    }
    return AccountData(accountData_data_create_json);
  }
}
