// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/converter/account.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsearchAccountAccounts on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Accounts> api_searchAccount({
    required InvokeRequestData invokeRequestData,
  }) async {
    final SearchAccount searchAccount = invokeRequestData.parametersBuilder<SearchAccount>(
      builder: (parameters) {
        return SearchAccount(parameters.toJson());
      },
    );
    final String query = (searchAccount.query ?? "").trim();
    if (query.isEmpty) {
      return Accounts({
        "@type": "error",
        "message": "query_cant_empty"
      });
    }
    final res = await generalFrameworkApiDatabase.account_searchAccount(query: query);
    return Accounts.create(
      total_count: res.length,
      accounts: res.map((e) {
        return e.toAccount();
      }).toList(),
    );
  }
}
