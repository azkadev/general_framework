// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/converter/account.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsearchAccountByUsernameAccount on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Account> api_searchAccountByUsername({
    required InvokeRequestData invokeRequestData,
  }) async {
    final SearchAccountByUsername searchAccountByUsername = invokeRequestData.parametersBuilder<SearchAccountByUsername>(
      builder: (parameters) {
        return SearchAccountByUsername(parameters.toJson());
      },
    );

    final String username_procces = (searchAccountByUsername.username ?? "").trim();
    if (username_procces.isEmpty) {
      return Account({
        "@type": "error",
        "message": "username_cant_empty",
      });
    }
    final res = await generalFrameworkApiDatabase.account_getAccountByUserName(
      username: username_procces,
    );
    if (res == null) {
      return Account({
        "@type": "error",
        "message": "account_not_found",
      });
    }
    return res.toAccount();
  }
}
