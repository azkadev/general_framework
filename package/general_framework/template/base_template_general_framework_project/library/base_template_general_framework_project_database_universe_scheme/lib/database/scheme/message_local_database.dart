// ignore_for_file: non_constant_identifier_names, unnecessary_this, public_member_api_docs

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:database_universe/database_universe.dart';
part "message_local_database.g.dart";

@collection
class MessageLocalDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "messageLocalDatabase";

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
      "@type": "messageLocalDatabase",
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
      "id": 0
    };
  }

  static MessageLocalDatabase create({
    bool utils_is_print_data = false,
  }) {
    MessageLocalDatabase messageLocalDatabase_data_create =
        MessageLocalDatabase();

    if (utils_is_print_data) {
      // print(messageLocalDatabase_data_create.toStringPretty());
    }

    return messageLocalDatabase_data_create;
  }
}
