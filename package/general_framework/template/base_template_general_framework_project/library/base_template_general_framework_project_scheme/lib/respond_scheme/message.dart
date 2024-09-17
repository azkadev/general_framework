// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class Message extends JsonScheme {

  
  Message(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"message","is_outgoing":false,"message_id":0,"from_user_id":0,"text":"","date":0,"update_date":0,"status":"","chat_id":0,"@extra":"","@expire_date":"","@client_id":""};
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
      if (rawData["@type"] is String == false){
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

  
  set is_outgoing(bool? value) {
    rawData["is_outgoing"] = value;
  }


  
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

  
  set message_id(num? value) {
    rawData["message_id"] = value;
  }


  
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

  
  set from_user_id(num? value) {
    rawData["from_user_id"] = value;
  }


  
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

  
  set text(String? value) {
    rawData["text"] = value;
  }


  
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

  
  set date(num? value) {
    rawData["date"] = value;
  }


  
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

  
  set update_date(num? value) {
    rawData["update_date"] = value;
  }


  
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

  
  set status(String? value) {
    rawData["status"] = value;
  }


  
  num? get chat_id {
    try {
      if (rawData["chat_id"] is num == false){
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


  
  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false){
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
      if (rawData["@expire_date"] is String == false){
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
      if (rawData["@client_id"] is String == false){
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
    bool? is_outgoing,
    num? message_id,
    num? from_user_id,
    String? text,
    num? date,
    num? update_date,
    String? status,
    num? chat_id,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
})  {
    // Message message = Message({
final Map message_data_create_json = {
  
      "@type": special_type,
      "is_outgoing": is_outgoing,
      "message_id": message_id,
      "from_user_id": from_user_id,
      "text": text,
      "date": date,
      "update_date": update_date,
      "status": status,
      "chat_id": chat_id,
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