// ignore_for_file: non_constant_identifier_names, unnecessary_this, public_member_api_docs

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:database_universe/database_universe.dart';
part "session_local_database.g.dart";

@collection
class SessionLocalDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "sessionLocalDatabase";

  int account_user_id = 0;

  String token = "";

  bool is_default = false;

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

    if (key == "account_user_id") {
      this.account_user_id = value;
    }

    if (key == "token") {
      this.token = value;
    }

    if (key == "is_default") {
      this.is_default = value;
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
      "account_user_id": account_user_id,
      "token": token,
      "is_default": is_default,
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
      "@type": "sessionLocalDatabase",
      "account_user_id": 0,
      "token": "",
      "is_default": false,
      "from_app_id": "",
      "owner_account_user_id": 0,
      "id": 0
    };
  }

  static SessionLocalDatabase create({
    bool utils_is_print_data = false,
  }) {
    SessionLocalDatabase sessionLocalDatabase_data_create =
        SessionLocalDatabase();

    if (utils_is_print_data) {
      // print(sessionLocalDatabase_data_create.toStringPretty());
    }

    return sessionLocalDatabase_data_create;
  }
}
