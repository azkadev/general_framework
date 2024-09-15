// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetMessageMessage
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Message> api_getMessage({
    required InvokeRequestData invokeRequestData,
  }) {
    return Message({"@type": "error", "message": "unimplemented"});
  }
}
