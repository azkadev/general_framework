// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


/// Generated 
class Ok extends JsonScheme {

  /// Generated
  Ok(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"ok","@extra":"","@expire_date":"","@client_id":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == ok
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

  

  /// create [Ok]
  /// Empty  
  static Ok empty() {
    return Ok({});
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
  static Ok create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "ok",
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
})  {
    // Ok ok = Ok({
final Map ok_data_create_json = {
  
      "@type": special_type,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,


};


          ok_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (ok_data_create_json.containsKey(key) == false) {
          ok_data_create_json[key] = value;
        }
      });
    }
return Ok(ok_data_create_json);


      }
}