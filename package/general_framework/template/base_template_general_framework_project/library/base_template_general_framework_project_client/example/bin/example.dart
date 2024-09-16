// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';
import 'dart:io';

import 'package:base_template_general_framework_project_client/api/api.dart';
import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/sign_up.dart';
import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret_core.dart';
 import 'package:general/core/core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_lib/general_lib.dart';

void main(List<String> arguments) async {
  print("start");
  final BaseTemplateGeneralFrameworkProjectClient client = BaseTemplateGeneralFrameworkProjectClient(
    baseTemplateGeneralFrameworkProjectSecretClientSide: BaseTemplateGeneralFrameworkProjectSecretClientSide.defaultData(),
    generalLibrary: GeneralLibrary(),
    generalFrameworkClientInvokeOptions: GeneralFrameworkClientInvokeOptions(
      durationTimeOut: Duration(minutes: 1),
      isInvokeThrowOnError: false,
      networkClientConnectionType: NetworkClientConnectionType.websocket,
    ),
    generalFrameworkDatabase: BaseTemplateGeneralFrameworkProjectClientDatabase(),
  );
  await client.ensureInitialized(
    onInvokeResult: (result, parameters, generalFrameworkClientInvokeOptions) {
      // print("${result}");
    },
    onInvokeValidation: (parameters, generalFrameworkClientInvokeOptions) async {
      print("validation: ${parameters}");
      return null;
    },
    currentPath: Directory.current.path,
  );
  client.on(
    event_name: client.eventUpdate,
    callback: (update) {
      print("update: ${update}");
    },
    onError: (e, stackTrace) {
      print(e);
    },
  );

  stdin.listen((event) async {
    String text = utf8.decode(event).trim();
    print("TEXT: ${text}");
    if (text == "su") {
      final res = await client.api_signUp(
        signUpParameters: SignUp.create(
          username: "azka",
          password: "slebew",
        ),
      );
      print("result: ${res.toStringifyPretty()}");
    } else  if (text == "si") {
      final res = await client.api_signIn(
        signInParameters: SignIn.create(
          username: "azka",
          password: "slebew",
        ),
      );
      print("result: ${res.toStringifyPretty()}");
    } else  if (text == "me") {
      final res = await client.api_getMe(
        getMeParameters: GetMe.create( 
        ),
      );
      print("result: ${res.toStringifyPretty()}");
    }
    print("done");
  });
}
