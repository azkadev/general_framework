// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class GetMessages extends JsonScheme {
  GetMessages(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "getMessages",
      "chat_id": 0,
      "message_ids": [0],
      "@return_type": "messages",
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
  /// - rawData["@type"] == getMessages
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

  /// create [GetMessages]
  /// Empty
  static GetMessages empty() {
    return GetMessages({});
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

  num? get chat_id {
    try {
      if (rawData["chat_id"] is num == false) {
        return null;
      }
      return rawData["chat_id"] as num;
    } catch (e) {
      return null;
    }
  }

  set chat_id(num? value) {
    rawData["chat_id"] = value;
  }

  ///
  /// default:
  ///
  ///
  List<num> get message_ids {
    try {
      if (rawData["message_ids"] is List == false) {
        return [];
      }
      return (rawData["message_ids"] as List).cast<num>();
    } catch (e) {
      return [];
    }
  }

  set message_ids(List<num> value) {
    rawData["message_ids"] = value;
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

  set special_client_token(String? value) {
    rawData["@client_token"] = value;
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

  static GetMessages create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "getMessages",
    num? chat_id,
    List<num>? message_ids,
    String special_return_type = "messages",
    String special_client_token = "",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
  }) {
    // GetMessages getMessages = GetMessages({
    final Map getMessages_data_create_json = {
      "@type": special_type,
      "chat_id": chat_id,
      "message_ids": message_ids,
      "@return_type": special_return_type,
      "@client_token": special_client_token,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,
    };

    getMessages_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (getMessages_data_create_json.containsKey(key) == false) {
          getMessages_data_create_json[key] = value;
        }
      });
    }
    return GetMessages(getMessages_data_create_json);
  }
}
