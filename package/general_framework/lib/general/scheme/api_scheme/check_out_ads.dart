// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "create_ads.dart";

 
class CheckOutAds extends JsonScheme {

  
  CheckOutAds(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"checkOutAds","ads":{"@type":"createAds"}};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == checkOutAds
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

  

  /// create [CheckOutAds]
  /// Empty  
  static CheckOutAds empty() {
    return CheckOutAds({});
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


  
  CreateAds get ads {
    try {
      if (rawData["ads"] is Map == false){
        return CreateAds({}); 
      }
      return CreateAds(rawData["ads"] as Map);
    } catch (e) {  
      return CreateAds({}); 
    }
  }


  
  set ads(CreateAds value) {
    rawData["ads"] = value.toJson();
  }



  
  static CheckOutAds create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "checkOutAds",
      CreateAds? ads,
})  {
    // CheckOutAds checkOutAds = CheckOutAds({
final Map checkOutAds_data_create_json = {
  
      "@type": special_type,
      "ads": (ads != null)?ads.toJson(): null,


};


          checkOutAds_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (checkOutAds_data_create_json.containsKey(key) == false) {
          checkOutAds_data_create_json[key] = value;
        }
      });
    }
return CheckOutAds(checkOutAds_data_create_json);


      }
}