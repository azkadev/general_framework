// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "account.dart";

/// Generated
class Accounts extends JsonScheme {
  /// Generated
  Accounts(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "accounts",
      "total_count": 0,
      "accounts": [
        {"@type": "account"}
      ],
      "@extra": "",
      "@expire_date": "",
      "@client_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == accounts
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

  /// create [Accounts]
  /// Empty
  static Accounts empty() {
    return Accounts({});
  }

  /// Generated
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

  /// Generated
  set special_type(String? value) {
    rawData["@type"] = value;
  }

  /// Generated
  num? get total_count {
    try {
      if (rawData["total_count"] is num == false) {
        return null;
      }
      return rawData["total_count"] as num;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set total_count(num? value) {
    rawData["total_count"] = value;
  }

  /// Generated
  List<Account> get accounts {
    try {
      if (rawData["accounts"] is List == false) {
        return [];
      }
      return (rawData["accounts"] as List)
          .map((e) => Account(e as Map))
          .toList()
          .cast<Account>();
    } catch (e) {
      return [];
    }
  }

  /// Generated
  set accounts(List<Account> values) {
    rawData["accounts"] = values.map((value) => value.toJson()).toList();
  }

  /// Generated
  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  /// Generated
  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  /// Generated
  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Generated
  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  /// Generated
  static Accounts create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "accounts",
    num? total_count,
    List<Account>? accounts,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Accounts accounts = Accounts({
    final Map accounts_data_create_json = {
      "@type": special_type,
      "total_count": total_count,
      "accounts": (accounts != null) ? accounts.toJson() : null,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    accounts_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (accounts_data_create_json.containsKey(key) == false) {
          accounts_data_create_json[key] = value;
        }
      });
    }
    return Accounts(accounts_data_create_json);
  }
}
