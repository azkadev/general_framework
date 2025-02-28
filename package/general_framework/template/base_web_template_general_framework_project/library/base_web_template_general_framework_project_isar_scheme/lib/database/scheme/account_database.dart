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
// ignore_for_file: non_constant_identifier_names, unnecessary_this

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:isar/isar.dart';
part "account_database.g.dart";

@collection
class AccountDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "accountDatabase";

  int id = 0;

  String first_name = "";

  String last_name = "";

  String username = "";

  String bio = "";

  String password = "";

  String from_app_id = "";

  int owner_account_user_id = 0;

  bool is_test = false;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "@type") {
      this.special_type = value;
    }

    if (key == "id") {
      this.id = value;
    }

    if (key == "first_name") {
      this.first_name = value;
    }

    if (key == "last_name") {
      this.last_name = value;
    }

    if (key == "username") {
      this.username = value;
    }

    if (key == "bio") {
      this.bio = value;
    }

    if (key == "password") {
      this.password = value;
    }

    if (key == "from_app_id") {
      this.from_app_id = value;
    }

    if (key == "owner_account_user_id") {
      this.owner_account_user_id = value;
    }

    if (key == "is_test") {
      this.is_test = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "bio": bio,
      "password": password,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
      "is_test": is_test,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {"@type": "accountDatabase", "id": 0, "first_name": "", "last_name": "", "username": "", "bio": "", "password": "", "from_app_id": "", "owner_account_user_id": 0, "is_test": false};
  }

  static AccountDatabase create({
    bool utils_is_print_data = false,
  }) {
    AccountDatabase accountDatabase_data_create = AccountDatabase();

    if (utils_is_print_data) {
      // print(accountDatabase_data_create.toStringPretty());
    }

    return accountDatabase_data_create;
  }
}
