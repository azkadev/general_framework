// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_api_database/session/session.dart';
import 'package:base_template_general_framework_project_scheme/base_template_general_framework_project_scheme_core.dart';
import 'package:base_template_general_framework_project_scheme/converter/session.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsignInSession
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Session> api_signIn({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String username_parameters = () {
      if (invokeRequestData.parameters["username"] is String) {
        return invokeRequestData.parameters["username"];
      }
      return "";
    }();
    final String password_parameters = () {
      if (invokeRequestData.parameters["password"] is String) {
        return invokeRequestData.parameters["password"];
      }
      return "";
    }();
    // validation
    {
      final Map? validation_username =
          BaseTemplateGeneralFrameworkProjectSchemeValidation
              .usernameValidation(username: username_parameters);
      if (validation_username != null) {
        return Session(validation_username);
      }

      final Map? validation_password =
          BaseTemplateGeneralFrameworkProjectSchemeValidation
              .usernameValidation(username: password_parameters);
      if (validation_password != null) {
        return Session(validation_password);
      }
    }
    final AccountDatabase? account_data_old = await generalFrameworkApiDatabase
        .account_getAccountByUserName(username: username_parameters);
    if (account_data_old == null) {
      return Session({"@type": "error", "message": "account_not_found"});
    }

    final SessionDatabase? session_data_new =
        await generalFrameworkApiDatabase.session_createNewSession(
      account_user_id: account_data_old.id ?? 0,
      newSessionDatabase: SessionDatabase.create(),
    );
    if (session_data_new == null) {
      return Session({
        "@type": "error",
        "message": "cant_create_session",
      });
    }
    return session_data_new.toSession();
  }
}
