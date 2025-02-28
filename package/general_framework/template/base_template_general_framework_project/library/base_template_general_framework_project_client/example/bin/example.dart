/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
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
    } else if (text == "si") {
      final res = await client.api_signIn(
        signInParameters: SignIn.create(
          username: "azka",
          password: "slebew",
        ),
      );
      print("result: ${res.toStringifyPretty()}");
    } else if (text == "me") {
      final res = await client.api_getMe(
        getMeParameters: GetMe.create(),
      );
      print("result: ${res.toStringifyPretty()}");
    } else if (text == "lo") {
      final res = await client.api_logOut(
        logOutParameters: LogOut.create(),
      );
      print("result: ${res.toStringifyPretty()}");
    } else if (text == "ses") {
      final res = await client.api_getSessions(
        getSessionsParameters: GetSessions.create(),
      );
      print("result: ${res.rawData.toStringifyPretty()}");
    }
    print("done");
  });
}
