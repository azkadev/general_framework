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

class ChatDatabase extends JsonScheme {
  ChatDatabase(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "chatDatabase",
      "chat_ids": [0],
      "chat_unique_id": "",
      "from_app_id": "",
      "owner_account_user_id": 0
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == chatDatabase
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

  /// create [ChatDatabase]
  /// Empty
  static ChatDatabase empty() {
    return ChatDatabase({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
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

  ///
  /// default:
  ///
  ///
  List<num> get chat_ids {
    try {
      if (rawData["chat_ids"] is List == false) {
        return [];
      }
      return (rawData["chat_ids"] as List).cast<num>();
    } catch (e) {
      return [];
    }
  }

  set chat_ids(List<num> value) {
    rawData["chat_ids"] = value;
  }

  String? get chat_unique_id {
    try {
      if (rawData["chat_unique_id"] is String == false) {
        return null;
      }
      return rawData["chat_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set chat_unique_id(String? value) {
    rawData["chat_unique_id"] = value;
  }

  String? get from_app_id {
    try {
      if (rawData["from_app_id"] is String == false) {
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
      if (rawData["owner_account_user_id"] is num == false) {
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

  static ChatDatabase create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "chatDatabase",
    List<num>? chat_ids,
    String? chat_unique_id,
    String? from_app_id,
    num? owner_account_user_id,
  }) {
    // ChatDatabase chatDatabase = ChatDatabase({
    final Map chatDatabase_data_create_json = {
      "@type": special_type,
      "chat_ids": chat_ids,
      "chat_unique_id": chat_unique_id,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
    };

    chatDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (chatDatabase_data_create_json.containsKey(key) == false) {
          chatDatabase_data_create_json[key] = value;
        }
      });
    }
    return ChatDatabase(chatDatabase_data_create_json);
  }
}
