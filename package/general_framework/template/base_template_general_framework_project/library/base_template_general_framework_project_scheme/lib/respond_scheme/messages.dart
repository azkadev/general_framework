// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "message.dart";

/// Generated
class Messages extends JsonScheme {
  /// Generated
  Messages(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "messages",
      "total_count": 0,
      "messages": [
        {"@type": "message"}
      ],
      "@extra": "",
      "@expire_date": "",
      "@client_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == messages
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

  /// create [Messages]
  /// Empty
  static Messages empty() {
    return Messages({});
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
  num? get total_count {
    try {
      if (rawData["total_count"] is num == false) {
        return null;
      }
      return rawData["total_count"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set total_count(num? value) {
    rawData["total_count"] = value;
  }

  /// Generated
  List<Message> get messages {
    try {
      if (rawData["messages"] is List == false) {
        return [];
      }
      return (rawData["messages"] as List)
          .map((e) => Message(e as Map))
          .toList()
          .cast<Message>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set messages(List<Message> values) {
    rawData["messages"] = values.map((value) => value.toJson()).toList();
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

  /// Generated
  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  /// Generated
  static Messages create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "messages",
    num? total_count,
    List<Message>? messages,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Messages messages = Messages({
    final Map messages_data_create_json = {
      "@type": special_type,
      "total_count": total_count,
      "messages": (messages != null) ? messages.toJson() : null,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    messages_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (messages_data_create_json.containsKey(key) == false) {
          messages_data_create_json[key] = value;
        }
      });
    }
    return Messages(messages_data_create_json);
  }
}
