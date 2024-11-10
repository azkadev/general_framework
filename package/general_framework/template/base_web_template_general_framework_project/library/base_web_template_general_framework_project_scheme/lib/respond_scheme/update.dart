// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "message.dart";

 
class Update extends JsonScheme {

  
  Update(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"update","message":{"@type":"message"},"new_message":{"@type":"message"},"@extra":"","@expire_date":"","@client_id":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == update
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

  

  /// create [Update]
  /// Empty  
  static Update empty() {
    return Update({});
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


  
  Message get message {
    try {
      if (rawData["message"] is Map == false){
        return Message({}); 
      }
      return Message(rawData["message"] as Map);
    } catch (e) {  
      return Message({}); 
    }
  }


  
  set message(Message value) {
    rawData["message"] = value.toJson();
  }



  
  Message get new_message {
    try {
      if (rawData["new_message"] is Map == false){
        return Message({}); 
      }
      return Message(rawData["new_message"] as Map);
    } catch (e) {  
      return Message({}); 
    }
  }


  
  set new_message(Message value) {
    rawData["new_message"] = value.toJson();
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


  
  static Update create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "update",
      Message? message,
      Message? new_message,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
})  {
    // Update update = Update({
final Map update_data_create_json = {
  
      "@type": special_type,
      "message": (message != null)?message.toJson(): null,
      "new_message": (new_message != null)?new_message.toJson(): null,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,


};


          update_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (update_data_create_json.containsKey(key) == false) {
          update_data_create_json[key] = value;
        }
      });
    }
return Update(update_data_create_json);


      }
}