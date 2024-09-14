// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:general_framework/core/client/options.dart';

extension BaseTemplateGeneralFrameworkProjectClientExtensionInvokeApiGenerate
    on BaseTemplateGeneralFrameworkProjectClient {
  /// generate
  Future<Ok> api_signUp({
    required SignUp signUpParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signUpParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_signIn({
    required SignIn signInParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signInParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }
}
