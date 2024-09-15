// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:general_lib/extension/map.dart';

extension BaseTemplateGeneralFrameworkProjectApiDatabaseExtensionAccount on BaseTemplateGeneralFrameworkProjectApiDatabase {
  FutureOr<AccountDatabase?> account_getAccountByUserId({
    required num account_user_id,
  }) async {
    final result = await supabase_account.select().eq("account_user_id", account_user_id).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result);
  }

  FutureOr<AccountDatabase?> account_saveAccountByUserName({
    required String username,
  }) async {
    final result = await supabase_account.select().ilike("username", username).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result);
  }

  Future<AccountDatabase?> account_createNewAccount({
    required num account_user_id,
    required AccountDatabase newAccountDatabase,
  }) async {
    newAccountDatabase.id = account_user_id;

    account_utils_removeUnusedAccountDatabase(accountDatabase: newAccountDatabase);
    final result = await supabase_account.select("id").eq("id", account_user_id).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }
    final new_data = await supabase_account.insert(newAccountDatabase.toJson()).select().limit(1).maybeSingle();
    if (new_data == null) {
      return null;
    }
    return AccountDatabase(new_data);
  }

  Future<bool> account_saveAccountByUserId({
    required num account_user_id,
    required AccountDatabase newAccountDatabase,
  }) async {
    newAccountDatabase.id = account_user_id;

    account_utils_removeUnusedAccountDatabase(accountDatabase: newAccountDatabase);
    final result = await supabase_account.select("id").eq("id", account_user_id).limit(1).maybeSingle();
    if (result == null) {
      return false;
    }
    final new_update = await supabase_account.update(newAccountDatabase.toJson()).eq("id", account_user_id).select().order("id", ascending: true).limit(1).maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  void account_utils_removeUnusedAccountDatabase({
    required AccountDatabase accountDatabase,
  }) {
    accountDatabase.rawData.removeByKeys(["@type", "id"]);
    List keys = AccountDatabase.defaultData.keys.toList();
    accountDatabase.rawData.removeWhere((key, value) => keys.contains(key) == false);
  }
}
