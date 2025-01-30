// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class MessageDatabase extends JsonScheme {

  /// Generated
  MessageDatabase(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"messageDatabase","is_outgoing":false,"message_id":0,"from_user_id":0,"text":"","date":0,"update_date":0,"status":"","chat_unique_id":"","from_app_id":"","owner_account_user_id":0};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == messageDatabase
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

  

  /// create [MessageDatabase]
  /// Empty  
  static MessageDatabase empty() {
    return MessageDatabase({});
  }

  

  /// Generated
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
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
  bool? get is_outgoing {
    try {
      if (rawData["is_outgoing"] is bool == false){
        return null;
      }
      return rawData["is_outgoing"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set is_outgoing(bool? value) {
    rawData["is_outgoing"] = value;
  }


  /// Generated
  num? get message_id {
    try {
      if (rawData["message_id"] is num == false){
        return null;
      }
      return rawData["message_id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set message_id(num? value) {
    rawData["message_id"] = value;
  }


  /// Generated
  num? get from_user_id {
    try {
      if (rawData["from_user_id"] is num == false){
        return null;
      }
      return rawData["from_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set from_user_id(num? value) {
    rawData["from_user_id"] = value;
  }


  /// Generated
  String? get text {
    try {
      if (rawData["text"] is String == false){
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set text(String? value) {
    rawData["text"] = value;
  }


  /// Generated
  num? get date {
    try {
      if (rawData["date"] is num == false){
        return null;
      }
      return rawData["date"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set date(num? value) {
    rawData["date"] = value;
  }


  /// Generated
  num? get update_date {
    try {
      if (rawData["update_date"] is num == false){
        return null;
      }
      return rawData["update_date"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set update_date(num? value) {
    rawData["update_date"] = value;
  }


  /// Generated
  String? get status {
    try {
      if (rawData["status"] is String == false){
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set status(String? value) {
    rawData["status"] = value;
  }


  /// Generated
  String? get chat_unique_id {
    try {
      if (rawData["chat_unique_id"] is String == false){
        return null;
      }
      return rawData["chat_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set chat_unique_id(String? value) {
    rawData["chat_unique_id"] = value;
  }


  /// Generated
  String? get from_app_id {
    try {
      if (rawData["from_app_id"] is String == false){
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
      if (rawData["owner_account_user_id"] is num == false){
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
  static MessageDatabase create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "messageDatabase",
    bool? is_outgoing,
    num? message_id,
    num? from_user_id,
    String? text,
    num? date,
    num? update_date,
    String? status,
    String? chat_unique_id,
    String? from_app_id,
    num? owner_account_user_id,
})  {
    // MessageDatabase messageDatabase = MessageDatabase({
final Map messageDatabase_data_create_json = {
  
      "@type": special_type,
      "is_outgoing": is_outgoing,
      "message_id": message_id,
      "from_user_id": from_user_id,
      "text": text,
      "date": date,
      "update_date": update_date,
      "status": status,
      "chat_unique_id": chat_unique_id,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,


};


          messageDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (messageDatabase_data_create_json.containsKey(key) == false) {
          messageDatabase_data_create_json[key] = value;
        }
      });
    }
return MessageDatabase(messageDatabase_data_create_json);


      }
}