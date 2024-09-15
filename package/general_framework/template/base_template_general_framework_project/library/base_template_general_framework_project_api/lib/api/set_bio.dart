// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsetBioOk
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_setBio({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String? bio_parameters = () {
      if (invokeRequestData.parameters["bio"] is String) {
        return invokeRequestData.parameters["bio"];
      }
      return null;
    }();
    final bool is_update_succes =
        await generalFrameworkApiDatabase.account_saveAccountByUserId(
      account_user_id: invokeRequestData.accountDatabase.id ?? 0,
      newAccountDatabase: AccountDatabase.create(
        bio: bio_parameters,
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
