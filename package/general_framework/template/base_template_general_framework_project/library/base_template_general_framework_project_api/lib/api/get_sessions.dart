// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/session/session.dart';
import 'package:base_template_general_framework_project_scheme/converter/session.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetSessionsSessions
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Sessions> api_getSessions({
    required InvokeRequestData invokeRequestData,
  }) async {
    final GetSessions getSessions =
        invokeRequestData.parametersBuilder<GetSessions>(
      builder: (parameters) {
        return GetSessions(parameters.toJson());
      },
    );

    final res = await generalFrameworkApiDatabase.session_getSessions(
      account_user_id: invokeRequestData.accountDatabase.id ?? 0,
      offset: getSessions.offset ?? 0,
      limit: getSessions.limit ?? 100,
    );
    return Sessions.create(
      total_count: res.length,
      sessions: res.map((e) {
        return e.toSession();
      }).toList(),
    );
  }
}
