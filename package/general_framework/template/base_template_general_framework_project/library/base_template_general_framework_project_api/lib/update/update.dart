// ignore_for_file: non_constant_identifier_names

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
import 'dart:async';

import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_api_database/session/session.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/default_scheme.dart';
import 'package:general_lib/json_scheme/json_scheme.dart';

class InvokeRequestData {
  final JsonScheme parameters;
  final AccountDatabase accountDatabase;
  final SessionDatabase sessionDatabase;
  InvokeRequestData({
    required this.parameters,
    required this.accountDatabase,
    required this.sessionDatabase,
  });

  String requestMethod() {
    if (parameters["@type"] is String) {
      return parameters["@type"] as String;
    } else {
      parameters["@type"] = "";
    }
    return "";
  }

  Future<void> ensureInitialized({
    required BaseTemplateGeneralFrameworkProjectApiDatabase database,
  }) async {
    if (parameters["@client_token"] is String == false) {
      parameters["@client_token"] = "";
    }
    final String client_token_procces = (parameters["@client_token"] as String).trim();
    if (client_token_procces.isNotEmpty) {
      final SessionDatabase? session_procces = await database.session_getSessionByToken(
        token: client_token_procces,
      );
      if (session_procces != null) {
        sessionDatabase.rawData = session_procces.rawData;
        final AccountDatabase? account_procces = await database.account_getAccountByUserId(account_user_id: sessionDatabase.account_user_id ?? 0);
        if (account_procces != null) {
          accountDatabase.rawData = account_procces.rawData;
        }
      }
    }
  }

  JsonScheme? checkValidation() {
    final String special_type = requestMethod();
    if (special_type.isEmpty) {
      return send(result:JsonScheme({
        "@type": "error",
        "message": "method_cant_empty",
      }));
    }
    if (BaseTemplateGeneralFrameworkProjectSchemeDefault.api_methods.contains(special_type) == false) {
      return send(result:JsonScheme({
        "@type": "error",
        "message": "method_not_found",
      }));
    }
    return null;
  }

  JsonScheme? checkValidationSession() {
    if (sessionDatabase.rawData.isEmpty) {
      return send(
          result: JsonScheme({
        "@type": "error",
        "message": "session_not_found",
      }));
    }
    if ((sessionDatabase.token ?? "").trim().isEmpty) {
      return send(
        result: JsonScheme({
          "@type": "error",
          "message": "session_not_found",
        }),
      );
    }
    return null;
  }

  T parametersBuilder<T>({
    required T Function(JsonScheme parameters) builder,
  }) {
    return builder(parameters);
  }

  FutureOr<T> sendBuilder<T extends JsonScheme>({
    required FutureOr<T> Function() builder,
  }) async {
    return send(result: await builder());
  }

  void utils_autoSetData({required JsonScheme result}) {
    final List<String> keys = [
      "@extra",
      "@client_id",
      "@client_token",
    ];
    parameters.rawData.forEach((key, value) {
      if (keys.contains(key)) {
        result[key] = value;
      }
    });
  }

  T send<T extends JsonScheme>({
    required T result,
  }) {
    utils_autoSetData(result: result);
    return result;
  }
}
