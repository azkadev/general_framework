// ignore_for_file: non_constant_identifier_names, unnecessary_this

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:isar/isar.dart';
part "database_mini_schema.g.dart";

@collection
class DatabaseMiniSchema {
  // Id id = Isar.autoIncrement;

  String special_type = "databaseMiniSchema";

  ApplicationConfiguration application_configuration =
      ApplicationConfiguration();

  List<Accounts> accounts = [];

  List<Sessions> sessions = [];

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

    if (key == "application_configuration") {
      if (value is ApplicationConfiguration) {
        this.application_configuration = value;
      } else {
        ApplicationConfiguration state_value_procces =
            ApplicationConfiguration();
        (value as Map).forEach((key, value) {
          state_value_procces[key] = value;
        });
        this.application_configuration = state_value_procces;
      }
    }

    if (key == "accounts") {
      if (value is List<Accounts>) {
        // new method remove this. if not work
        this.accounts = value;
      } else {
        this.accounts = (value as List)
            .map((state_data_procces) {
              Accounts state_value_procces = Accounts();
              (state_data_procces as Map).forEach((key, value) {
                state_value_procces[key] = value;
              });
              return state_value_procces;
            })
            .toList()
            .cast<Accounts>();
      }
    }

    if (key == "sessions") {
      if (value is List<Sessions>) {
        // new method remove this. if not work
        this.sessions = value;
      } else {
        this.sessions = (value as List)
            .map((state_data_procces) {
              Sessions state_value_procces = Sessions();
              (state_data_procces as Map).forEach((key, value) {
                state_value_procces[key] = value;
              });
              return state_value_procces;
            })
            .toList()
            .cast<Sessions>();
      }
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
      "application_configuration": application_configuration.toJson(),
      "accounts": accounts.map((res) => res.toJson()).toList().cast<Map>(),
      "sessions": sessions.map((res) => res.toJson()).toList().cast<Map>(),
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
      "@type": "databaseMiniSchema",
      "application_configuration": {"@type": "applicationConfiguration"},
      "accounts": [
        {"@type": "accountDatabase", "is_test": false}
      ],
      "sessions": [
        {"@type": "sessionIsarDatabase", "is_test": false}
      ],
      "from_app_id": "",
      "owner_account_user_id": 0,
      "is_test": false,
      "id": 0
    };
  }

  static DatabaseMiniSchema create({
    bool utils_is_print_data = false,
  }) {
    DatabaseMiniSchema databaseMiniSchema_data_create = DatabaseMiniSchema();

    if (utils_is_print_data) {
      // print(databaseMiniSchema_data_create.toStringPretty());
    }

    return databaseMiniSchema_data_create;
  }
}

@embedded
class ApplicationConfiguration {
  // Id id = Isar.autoIncrement;

  String special_type = "applicationConfiguration";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "@type") {
      this.special_type = value;
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
    return {"@type": "applicationConfiguration"};
  }

  static ApplicationConfiguration create({
    bool utils_is_print_data = false,
  }) {
    ApplicationConfiguration applicationConfiguration_data_create =
        ApplicationConfiguration();

    if (utils_is_print_data) {
      // print(applicationConfiguration_data_create.toStringPretty());
    }

    return applicationConfiguration_data_create;
  }
}

@embedded
class Accounts {
  // Id id = Isar.autoIncrement;

  String special_type = "accountDatabase";

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
    return {"@type": "accountDatabase", "is_test": false};
  }

  static Accounts create({
    bool utils_is_print_data = false,
  }) {
    Accounts accounts_data_create = Accounts();

    if (utils_is_print_data) {
      // print(accounts_data_create.toStringPretty());
    }

    return accounts_data_create;
  }
}

@embedded
class Sessions {
  // Id id = Isar.autoIncrement;

  String special_type = "sessionIsarDatabase";

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
    return {"@type": "sessionIsarDatabase", "is_test": false};
  }

  static Sessions create({
    bool utils_is_print_data = false,
  }) {
    Sessions sessions_data_create = Sessions();

    if (utils_is_print_data) {
      // print(sessions_data_create.toStringPretty());
    }

    return sessions_data_create;
  }
}
