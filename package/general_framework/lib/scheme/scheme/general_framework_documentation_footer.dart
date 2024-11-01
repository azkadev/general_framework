// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "general_framework_documentation_footer_data.dart";

 
class GeneralFrameworkDocumentationFooter extends JsonScheme {

  
  GeneralFrameworkDocumentationFooter(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"generalFrameworkDocumentationFooter","footers":[{"@type":"generalFrameworkDocumentationFooterData","title":"","footer":[{"@type":"generalFrameworkDocumentationFooterSubData","text":"","url":""}]}]};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == generalFrameworkDocumentationFooter
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

  

  /// create [GeneralFrameworkDocumentationFooter]
  /// Empty  
  static GeneralFrameworkDocumentationFooter empty() {
    return GeneralFrameworkDocumentationFooter({});
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

  
  List<GeneralFrameworkDocumentationFooterData> get footers {
    try {
      if (rawData["footers"] is List == false){
        return [];
      }
      return (rawData["footers"] as List).map((e) => GeneralFrameworkDocumentationFooterData(e as Map)).toList().cast<GeneralFrameworkDocumentationFooterData>();
    } catch (e) {
      return [];
    }
  }


  
  set footers(List<GeneralFrameworkDocumentationFooterData> values) {
    rawData["footers"] = values.map((value) => value.toJson()).toList();
  }



  
  static GeneralFrameworkDocumentationFooter create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "generalFrameworkDocumentationFooter",
      List<GeneralFrameworkDocumentationFooterData>? footers,
})  {
    // GeneralFrameworkDocumentationFooter generalFrameworkDocumentationFooter = GeneralFrameworkDocumentationFooter({
final Map generalFrameworkDocumentationFooter_data_create_json = {
  
      "@type": special_type,
      "footers": (footers != null)? footers.toJson(): null,


};


          generalFrameworkDocumentationFooter_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (generalFrameworkDocumentationFooter_data_create_json.containsKey(key) == false) {
          generalFrameworkDocumentationFooter_data_create_json[key] = value;
        }
      });
    }
return GeneralFrameworkDocumentationFooter(generalFrameworkDocumentationFooter_data_create_json);


      }
}