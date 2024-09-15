// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/base_template_general_framework_project_scheme_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsetUsernameOk on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_setUsername({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String username_parameters = () {
      if (invokeRequestData.parameters["username"] is String) {
        return invokeRequestData.parameters["username"];
      }
      return "";
    }();

    {
      final Map? validation_username = BaseTemplateGeneralFrameworkProjectSchemeValidation.usernameValidation(username: username_parameters);
      if (validation_username != null) {
        return Ok(validation_username);
      }
    }
    // check username already exist or not
    {
      final AccountDatabase? account_old = await generalFrameworkApiDatabase.account_getAccountByUserName(username: username_parameters);
      if (account_old != null) {
        return Ok({
          "@type": "error",
          "message": "username_already_exist",
        });
      }
    }
    final bool is_update_succes = await generalFrameworkApiDatabase.account_saveAccountByUserId(
      account_user_id: invokeRequestData.accountDatabase.id ?? 0,
      newAccountDatabase: AccountDatabase.create(
        username: username_parameters,
      ),
    );
    if (is_update_succes == false) {
      return Ok({
        "@type": "error",
        "message": "cant_update_account",
      });
    }

    return Ok.create();
  }
}
