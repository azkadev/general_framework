// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Message extends JsonScheme {
  Message(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "message",
      "id": 0,
      "@extra": "",
      "@expire_date": "",
      "@client_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == message
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

  /// create [Message]
  /// Empty
  static Message empty() {
    return Message({});
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

  set id(num? value) {
    rawData["id"] = value;
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

  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  static Message create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "message",
    num? id,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Message message = Message({
    final Map message_data_create_json = {
      "@type": special_type,
      "id": id,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    message_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (message_data_create_json.containsKey(key) == false) {
          message_data_create_json[key] = value;
        }
      });
    }
    return Message(message_data_create_json);
  }
}
