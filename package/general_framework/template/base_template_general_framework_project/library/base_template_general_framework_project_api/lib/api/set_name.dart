// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsetNameOk on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_setName({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String? first_name_parameters = () {
      if (invokeRequestData.parameters["first_name"] is String) {
        return invokeRequestData.parameters["first_name"];
      }
      return null;
    }();
    final String? last_name_parameters = () {
      if (invokeRequestData.parameters["last_name"] is String) {
        return invokeRequestData.parameters["last_name"];
      }
      return null;
    }();
    final bool is_update_succes = await generalFrameworkApiDatabase.account_saveAccountByUserId(
      account_user_id: invokeRequestData.accountDatabase.id ?? 0,
      newAccountDatabase: AccountDatabase.create(
        first_name: first_name_parameters,
        last_name: last_name_parameters,
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
