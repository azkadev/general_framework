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
part "message_isar_database.g.dart";

@collection
class MessageIsarDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "messageIsarDatabase";

  bool is_outgoing = false;

  int message_id = 0;

  int from_user_id = 0;

  String text = "";

  int date = 0;

  int update_date = 0;

  String status = "";

  List<int> chat_ids = [0];

  String from_app_id = "";

  int owner_account_user_id = 0;

  bool is_test = false;

  int id = 0;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "@type") {
      this.special_type = value;
    }

    if (key == "is_outgoing") {
      this.is_outgoing = value;
    }

    if (key == "message_id") {
      this.message_id = value;
    }

    if (key == "from_user_id") {
      this.from_user_id = value;
    }

    if (key == "text") {
      this.text = value;
    }

    if (key == "date") {
      this.date = value;
    }

    if (key == "update_date") {
      this.update_date = value;
    }

    if (key == "status") {
      this.status = value;
    }

    if (key == "chat_ids") {
      this.chat_ids = value;
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

    if (key == "id") {
      this.id = value;
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
      "is_outgoing": is_outgoing,
      "message_id": message_id,
      "from_user_id": from_user_id,
      "text": text,
      "date": date,
      "update_date": update_date,
      "status": status,
      "chat_ids": chat_ids,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
      "is_test": is_test,
      "id": id,
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
    return {
      "@type": "messageIsarDatabase",
      "is_outgoing": false,
      "message_id": 0,
      "from_user_id": 0,
      "text": "",
      "date": 0,
      "update_date": 0,
      "status": "",
      "chat_ids": [0],
      "from_app_id": "",
      "owner_account_user_id": 0,
      "is_test": false,
      "id": 0
    };
  }

  static MessageIsarDatabase create({
    bool utils_is_print_data = false,
  }) {
    MessageIsarDatabase messageIsarDatabase_data_create = MessageIsarDatabase();

    if (utils_is_print_data) {
      // print(messageIsarDatabase_data_create.toStringPretty());
    }

    return messageIsarDatabase_data_create;
  }
}
