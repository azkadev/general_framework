// ignore_for_file: non_constant_identifier_names, unnecessary_this

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:isar/isar.dart';
part "chat_database.g.dart";

@collection
class ChatDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "chatDatabase";

  List<int> chat_ids = [0];

  String chat_unique_id = "";

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

    if (key == "chat_ids") {
      this.chat_ids = value;
    }

    if (key == "chat_unique_id") {
      this.chat_unique_id = value;
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
      "chat_ids": chat_ids,
      "chat_unique_id": chat_unique_id,
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
      "@type": "chatDatabase",
      "chat_ids": [0],
      "chat_unique_id": "",
      "from_app_id": "",
      "owner_account_user_id": 0,
      "id": 0
    };
  }

  static ChatDatabase create({
    bool utils_is_print_data = false,
  }) {
    ChatDatabase chatDatabase_data_create = ChatDatabase();

    if (utils_is_print_data) {
      // print(chatDatabase_data_create.toStringPretty());
    }

    return chatDatabase_data_create;
  }
}
