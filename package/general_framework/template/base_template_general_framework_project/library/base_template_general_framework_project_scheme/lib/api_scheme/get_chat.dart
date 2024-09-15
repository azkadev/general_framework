/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class GetChat extends JsonScheme {

  
  GetChat(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"getChat","chat_id":0,"@return_type":"account","@platform_id":"","@platform_username":"","@extra":"","@expire_date":"","@token":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == getChat
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

  

  /// create [GetChat]
  /// Empty  
  static GetChat empty() {
    return GetChat({});
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

  
  set special_return_type(String? value) {
    rawData["@return_type"] = value;
  }


  
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

  
  set special_platform_id(String? value) {
    rawData["@platform_id"] = value;
  }


  
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

  
  set special_platform_username(String? value) {
    rawData["@platform_username"] = value;
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

  
  set special_token(String? value) {
    rawData["@token"] = value;
  }


  
  static GetChat create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "getChat",
    num? chat_id,
    String special_return_type = "account",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
})  {
    // GetChat getChat = GetChat({
final Map getChat_data_create_json = {
  
      "@type": special_type,
      "chat_id": chat_id,
      "@return_type": special_return_type,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,


};


          getChat_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (getChat_data_create_json.containsKey(key) == false) {
          getChat_data_create_json[key] = value;
        }
      });
    }
return GetChat(getChat_data_create_json);


      }
}