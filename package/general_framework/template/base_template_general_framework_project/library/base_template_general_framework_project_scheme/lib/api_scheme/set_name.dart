// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class SetName extends JsonScheme {

  /// Generated
  SetName(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"setName","first_name":"","last_name":"","@return_type":"ok","@client_token":"","@platform_id":"","@platform_username":"","@extra":"","@expire_date":"","@token":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == setName
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

  

  /// create [SetName]
  /// Empty  
  static SetName empty() {
    return SetName({});
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
  String? get first_name {
    try {
      if (rawData["first_name"] is String == false){
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
      if (rawData["last_name"] is String == false){
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
  String? get special_return_type {
    try {
      if (rawData["@return_type"] is String == false){
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
      if (rawData["@client_token"] is String == false){
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
      if (rawData["@platform_id"] is String == false){
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
      if (rawData["@platform_username"] is String == false){
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
      if (rawData["@extra"] is String == false){
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
      if (rawData["@expire_date"] is String == false){
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
      if (rawData["@token"] is String == false){
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
  static SetName create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "setName",
    String? first_name,
    String? last_name,
    String special_return_type = "ok",
    String special_client_token = "",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
})  {
    // SetName setName = SetName({
final Map setName_data_create_json = {
  
      "@type": special_type,
      "first_name": first_name,
      "last_name": last_name,
      "@return_type": special_return_type,
      "@client_token": special_client_token,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,


};


          setName_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (setName_data_create_json.containsKey(key) == false) {
          setName_data_create_json[key] = value;
        }
      });
    }
return SetName(setName_data_create_json);


      }
}