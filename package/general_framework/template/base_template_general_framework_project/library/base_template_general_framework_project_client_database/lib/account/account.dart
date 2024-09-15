// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_client_isar_scheme/database/scheme/account_database.dart' as isar_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:isar/isar.dart';

extension BaseTemplateGeneralFrameworkProjectClientDatabaseExtensionAccount on BaseTemplateGeneralFrameworkProjectClientDatabase {
  AccountDatabase? account_getAccountByUserId({
    required int account_user_id,
  }) {
    final result = isar_core.accountDatabases.where().idEqualTo(account_user_id).findFirst();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result.toJson());
  }

  AccountDatabase? account_getAccountByUserName({
    required String username,
  }) {
    final result = isar_core.accountDatabases.where().usernameEqualTo(username, caseSensitive: false).findFirst();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result.toJson());
  }

  bool account_saveAccountByUserId({
    required int account_user_id,
    required AccountDatabase newAccountDatabase,
  }) {
    newAccountDatabase.id = account_user_id;
    final result = isar_core.accountDatabases.where().idEqualTo(account_user_id).findFirst();
    if (result == null) {
      final isar_scheme.AccountDatabase new_account_database_isar = isar_scheme.AccountDatabase();
      new_account_database_isar.id = account_user_id;
      newAccountDatabase.rawData.forEach((key, value) {
        new_account_database_isar[key] = value;
      });
      isar_core.write((isar) {
        isar.accountDatabases.put(new_account_database_isar);
      });
      return true;
    }

    newAccountDatabase.rawData.forEach((key, value) {
      result[key] = value;
    });
    isar_core.write((isar) {
      isar.accountDatabases.put(result);
    });
    return true;
  }

  bool account_deleteAccountByUserId({
    required int account_user_id,
  }) {
    
    isar_core.accountDatabases.where().idEqualTo(account_user_id).deleteAll();
    return true;
  }
}
