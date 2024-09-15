// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_client_isar_scheme/database/scheme/session_isar_database.dart' as isar_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
// import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/session_isar_database.dart';
import 'package:general_lib/general_lib.dart';

import 'package:isar/isar.dart';

extension BaseTemplateGeneralFrameworkProjectClientDatabaseExtensionSession on BaseTemplateGeneralFrameworkProjectClientDatabase {
  ({
    int total_count,
    Iterable<SessionIsarDatabase> sessions,
  }) session_getSessions({
    required int? offset,
    required int? limit,
  }) {
    final session_isar = isar_core.sessionIsarDatabases.where();
    return (
      total_count: session_isar.count(),
      sessions: session_isar.findAll(offset: offset, limit: limit).map((e) {
        return SessionIsarDatabase(e.toJson());
      }),
    );
  }

  ({
    int total_count,
    Iterable<SessionIsarDatabase> sessions,
  }) session_getSessionDefault({
    int? offset,
    int? limit,
  }) {
    isar_core.sessionIsarDatabases.where().is_defaultEqualTo(true);
    final session_isar = isar_core.sessionIsarDatabases.where().is_defaultEqualTo(true);
    return (
      total_count: session_isar.count(),
      sessions: session_isar.findAll(offset: offset, limit: limit).map((e) {
        return SessionIsarDatabase(e.toJson());
      }),
    );
  }

  SessionIsarDatabase? session_getSessionByToken({
    required String token,
  }) {
    final result = isar_core.sessionIsarDatabases.where().tokenEqualTo(token).findFirst();
    if (result == null) {
      return null;
    }
    return SessionIsarDatabase(result.toJson());
  }

  bool session_deleteSessionByToken({
    required String token,
  }) {
    isar_core.sessionIsarDatabases.where().tokenEqualTo(token).deleteAll();
    return true;
  }

  bool session_saveSessionByToken({
    required String token,
    required SessionIsarDatabase newSessionDatabase,
  }) {
    newSessionDatabase.rawData.removeByKeys(["id"]);
    newSessionDatabase.token = token;
    final result = isar_core.sessionIsarDatabases.where().tokenEqualTo(token).findFirst();
    if (result == null) {
      isar_scheme.SessionIsarDatabase new_session_isar_database = isar_scheme.SessionIsarDatabase();
      new_session_isar_database.id = isar_core.sessionIsarDatabases.autoIncrement();
      new_session_isar_database.token = token;

      newSessionDatabase.rawData.forEach((key, value) {
        new_session_isar_database[key] = value;
      });
      isar_core.write((isar) {
        isar.sessionIsarDatabases.put(new_session_isar_database);
      });
      return true;
    }
    newSessionDatabase.rawData.forEach((key, value) {
      result[key] = value;
    });
    isar_core.write((isar) {
      isar.sessionIsarDatabases.put(result);
    });
    return true;
  }
}
