// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_scheme/converter/account.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetMeAccount
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Account> api_getMe({
    required InvokeRequestData invokeRequestData,
  }) {
    return invokeRequestData.accountDatabase.toAccount();
  }
}
