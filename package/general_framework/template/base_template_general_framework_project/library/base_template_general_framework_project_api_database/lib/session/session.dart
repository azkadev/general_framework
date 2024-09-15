// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/session_database.dart';
import 'package:base_template_general_framework_project_scheme/schemes/default_scheme.dart';
import 'package:general_lib/extension/map.dart';

extension BaseTemplateGeneralFrameworkProjectApiDatabaseExtensionSession on BaseTemplateGeneralFrameworkProjectApiDatabase {
  Future<String?> session_generateNewToken() async {
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      final String new_token = BaseTemplateGeneralFrameworkProjectSchemeDefault.utils_generateSessionToken();

      final result = await supabase_session.select("id").eq("token", new_token).limit(1).maybeSingle();
      if (result == null) {
        return new_token;
      }
    }
  }

  Future<SessionDatabase?> session_createNewSession({
    required num account_user_id,
    required SessionDatabase newSessionDatabase,
  }) async {
    final String new_token = (await session_generateNewToken() ?? "").trim();
    if (new_token.isEmpty) {
      return null;
    }
    session_utils_removeUnusedAccountDatabase(sessionDatabase: newSessionDatabase);
    newSessionDatabase.account_user_id  = account_user_id;
    newSessionDatabase.token = new_token;
    final new_data = await supabase_session.insert(newSessionDatabase.toJson(), defaultToNull: false).select().limit(1).maybeSingle();
    if (new_data == null) {
      return null;
    }
    return SessionDatabase(new_data);
  }

  Future<SessionDatabase?> session_getSessionByToken({
    required String token,
    required SessionDatabase newSessionDatabase,
  }) async {
    final result = await supabase_session.select().eq("token", token).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }

    return SessionDatabase(result);
  }

  Future<bool> session_saveSessionByToken({
    required String token,
    required SessionDatabase newSessionDatabase,
  }) async {
    newSessionDatabase.token = token;
    session_utils_removeUnusedAccountDatabase(sessionDatabase: newSessionDatabase);
    final result = await supabase_session.select("id").eq("token", token).limit(1).maybeSingle();
    if (result == null) {
      return false;
    }
    final new_update = await supabase_session.update(newSessionDatabase.toJson()).eq("token", token).select().order("id", ascending: true).limit(1).maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  void session_utils_removeUnusedAccountDatabase({
    required SessionDatabase sessionDatabase,
  }) {
    sessionDatabase.rawData.removeByKeys(["@type", "id"]);
    List keys = SessionDatabase.defaultData.keys.toList();
    sessionDatabase.rawData.removeWhere((key, value) => keys.contains(key) == false);
  }
}
