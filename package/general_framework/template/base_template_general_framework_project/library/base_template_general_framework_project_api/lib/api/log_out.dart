// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/session/session.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionlogOutOk
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_logOut({
    required InvokeRequestData invokeRequestData,
  }) async {
    final bool is_delete =
        await generalFrameworkApiDatabase.session_deleteSession(
      account_user_id: invokeRequestData.accountDatabase.id ??
          invokeRequestData.sessionDatabase.account_user_id ??
          0,
      token: invokeRequestData.sessionDatabase.token ?? "",
    );
    if (is_delete == false) {
      return Ok({"@type": "error", "message": "cant_logout"});
    }

    return Ok.create();
  }
}
