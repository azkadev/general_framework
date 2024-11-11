// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "application_configuration.dart";
import "account_database.dart";
import "session_isar_database.dart";

class DatabaseMiniSchema extends JsonScheme {
  DatabaseMiniSchema(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "databaseMiniSchema",
      "application_configuration": {"@type": "applicationConfiguration"},
      "accounts": [
        {"@type": "accountDatabase"}
      ],
      "sessions": [
        {"@type": "sessionIsarDatabase"}
      ],
      "from_app_id": "",
      "owner_account_user_id": 0
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == databaseMiniSchema
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

  /// create [DatabaseMiniSchema]
  /// Empty
  static DatabaseMiniSchema empty() {
    return DatabaseMiniSchema({});
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

  ApplicationConfiguration get application_configuration {
    try {
      if (rawData["application_configuration"] is Map == false) {
        return ApplicationConfiguration({});
      }
      return ApplicationConfiguration(
          rawData["application_configuration"] as Map);
    } catch (e) {
      return ApplicationConfiguration({});
    }
  }

  set application_configuration(ApplicationConfiguration value) {
    rawData["application_configuration"] = value.toJson();
  }

  List<AccountDatabase> get accounts {
    try {
      if (rawData["accounts"] is List == false) {
        return [];
      }
      return (rawData["accounts"] as List)
          .map((e) => AccountDatabase(e as Map))
          .toList()
          .cast<AccountDatabase>();
    } catch (e) {
      return [];
    }
  }

  set accounts(List<AccountDatabase> values) {
    rawData["accounts"] = values.map((value) => value.toJson()).toList();
  }

  List<SessionIsarDatabase> get sessions {
    try {
      if (rawData["sessions"] is List == false) {
        return [];
      }
      return (rawData["sessions"] as List)
          .map((e) => SessionIsarDatabase(e as Map))
          .toList()
          .cast<SessionIsarDatabase>();
    } catch (e) {
      return [];
    }
  }

  set sessions(List<SessionIsarDatabase> values) {
    rawData["sessions"] = values.map((value) => value.toJson()).toList();
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

  static DatabaseMiniSchema create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "databaseMiniSchema",
    ApplicationConfiguration? application_configuration,
    List<AccountDatabase>? accounts,
    List<SessionIsarDatabase>? sessions,
    String? from_app_id,
    num? owner_account_user_id,
  }) {
    // DatabaseMiniSchema databaseMiniSchema = DatabaseMiniSchema({
    final Map databaseMiniSchema_data_create_json = {
      "@type": special_type,
      "application_configuration": (application_configuration != null)
          ? application_configuration.toJson()
          : null,
      "accounts": (accounts != null) ? accounts.toJson() : null,
      "sessions": (sessions != null) ? sessions.toJson() : null,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
    };

    databaseMiniSchema_data_create_json
        .removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (databaseMiniSchema_data_create_json.containsKey(key) == false) {
          databaseMiniSchema_data_create_json[key] = value;
        }
      });
    }
    return DatabaseMiniSchema(databaseMiniSchema_data_create_json);
  }
}
