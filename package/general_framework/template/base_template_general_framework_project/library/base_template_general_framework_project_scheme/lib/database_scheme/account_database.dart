// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class AccountDatabase extends JsonScheme {

  
  AccountDatabase(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"accountDatabase","id":0,"first_name":"","last_name":"","username":"","password":"","from_app_id":"","owner_account_user_id":0};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == accountDatabase
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

  

  /// create [AccountDatabase]
  /// Empty  
  static AccountDatabase empty() {
    return AccountDatabase({});
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


  
  num? get id {
    try {
      if (rawData["id"] is num == false){
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

  
  set first_name(String? value) {
    rawData["first_name"] = value;
  }


  
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

  
  set last_name(String? value) {
    rawData["last_name"] = value;
  }


  
  String? get username {
    try {
      if (rawData["username"] is String == false){
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set username(String? value) {
    rawData["username"] = value;
  }


  
  String? get password {
    try {
      if (rawData["password"] is String == false){
        return null;
      }
      return rawData["password"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set password(String? value) {
    rawData["password"] = value;
  }


  
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

  
  set from_app_id(String? value) {
    rawData["from_app_id"] = value;
  }


  
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

  
  set owner_account_user_id(num? value) {
    rawData["owner_account_user_id"] = value;
  }


  
  static AccountDatabase create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "accountDatabase",
    num? id,
    String? first_name,
    String? last_name,
    String? username,
    String? password,
    String? from_app_id,
    num? owner_account_user_id,
})  {
    // AccountDatabase accountDatabase = AccountDatabase({
final Map accountDatabase_data_create_json = {
  
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "password": password,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,


};


          accountDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (accountDatabase_data_create_json.containsKey(key) == false) {
          accountDatabase_data_create_json[key] = value;
        }
      });
    }
return AccountDatabase(accountDatabase_data_create_json);


      }
}