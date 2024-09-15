// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/base_template_general_framework_project_scheme_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsignUpOk
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_signUp({
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
        return Ok(validation_username);
      }

      final Map? validation_password =
          BaseTemplateGeneralFrameworkProjectSchemeValidation
              .usernameValidation(username: password_parameters);
      if (validation_password != null) {
        return Ok(validation_password);
      }
    }
    // check account
    {
      final AccountDatabase? account_data_old =
          await generalFrameworkApiDatabase.account_getAccountByUserName(
              username: username_parameters);
      if (account_data_old != null) {
        return Ok({"@type": "error", "message": "username_already_exist"});
      }
    }
    final AccountDatabase? account_data_new =
        await generalFrameworkApiDatabase.account_createNewAccount(
      username: username_parameters,
      password: password_parameters,
      newAccountDatabase: AccountDatabase.create(
        username: username_parameters,
        password: password_parameters,
      ),
    );
    if (account_data_new == null) {
      return Ok({
        "@type": "error",
        "message": "",
      });
    }
    return Ok.create();
  }
}
