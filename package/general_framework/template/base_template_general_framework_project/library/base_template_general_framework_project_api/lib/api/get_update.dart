// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetUpdateUpdate on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Update> api_getUpdate({
    required InvokeRequestData invokeRequestData,
  }) {
    return Update({"@type": "error", "message": "unimplemented"});
  }
}
