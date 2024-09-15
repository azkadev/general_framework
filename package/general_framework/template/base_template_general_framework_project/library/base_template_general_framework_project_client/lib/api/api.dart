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

  /// generate
  Future<Account> api_getMe({
    required GetMe getMeParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMeParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Account(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setName({
    required SetName setNameParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setNameParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setUsername({
    required SetUsername setUsernameParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setUsernameParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_setBio({
    required SetBio setBioParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: setBioParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Message> api_sendMessage({
    required SendMessage sendMessageParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: sendMessageParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Message(result);
      },
    );
  }

  /// generate
  Future<Messages> api_getMessages({
    required GetMessages getMessagesParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMessagesParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Messages(result);
      },
    );
  }

  /// generate
  Future<Message> api_getMessage({
    required GetMessage getMessageParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: getMessageParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Message(result);
      },
    );
  }
}