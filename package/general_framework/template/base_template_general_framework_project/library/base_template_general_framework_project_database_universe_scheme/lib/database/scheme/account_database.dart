// ignore_for_file: non_constant_identifier_names, unnecessary_this, public_member_api_docs

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:database_universe/database_universe.dart';
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
      "@type": "accountDatabase",
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "bio": "",
      "password": "",
      "from_app_id": "",
      "owner_account_user_id": 0
    };
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
