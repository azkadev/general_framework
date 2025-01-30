// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class Session extends JsonScheme {

  /// Generated
  Session(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"session","account_user_id":0,"token":"","@extra":"","@expire_date":"","@client_id":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == session
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

  

  /// create [Session]
  /// Empty  
  static Session empty() {
    return Session({});
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
  num? get account_user_id {
    try {
      if (rawData["account_user_id"] is num == false){
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
      if (rawData["token"] is String == false){
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

  /// Generated
  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }


  /// Generated
  static Session create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "session",
    num? account_user_id,
    String? token,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
})  {
    // Session session = Session({
final Map session_data_create_json = {
  
      "@type": special_type,
      "account_user_id": account_user_id,
      "token": token,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,


};


          session_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (session_data_create_json.containsKey(key) == false) {
          session_data_create_json[key] = value;
        }
      });
    }
return Session(session_data_create_json);


      }
}