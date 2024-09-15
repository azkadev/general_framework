// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/converter/account.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetUserAccount on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Account> api_getUser({
    required InvokeRequestData invokeRequestData,
  }) async {
    final num user_id_parameters = () {
      if (invokeRequestData.parameters["user_id"] is num) {
        return invokeRequestData.parameters["user_id"];
      }
      return 0;
    }();
    if (user_id_parameters < 1) {
      return Account({
        "@type": "error",
        "message": "user_id_bad_format",
      });
    }
    if (user_id_parameters == invokeRequestData.accountDatabase.id) {
      return invokeRequestData.accountDatabase.toAccount();
    }
    final result = await generalFrameworkApiDatabase.account_getAccountByUserId(account_user_id: user_id_parameters);
    if (result == null) {
      return Account({"@type": "error", "message": "account_not_found"});
    }
    return result.toAccount();
  }
}
