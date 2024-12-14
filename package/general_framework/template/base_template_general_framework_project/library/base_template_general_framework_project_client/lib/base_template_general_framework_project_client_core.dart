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
import 'dart:convert';

import 'package:base_template_general_framework_project_client_database/account/account.dart';
import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_client_database/session/session.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/session_isar_database.dart';
import 'package:base_template_general_framework_project_scheme/extension/map.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret.dart';
import 'package:general_framework/core/client/client.dart';
import 'package:general_lib/general_lib.dart';

/// base template general framework
class BaseTemplateGeneralFrameworkProjectClient extends GeneralFrameworkClient<
    BaseTemplateGeneralFrameworkProjectClientDatabase> {
  final BaseTemplateGeneralFrameworkProjectSecretClientSide
      baseTemplateGeneralFrameworkProjectSecretClientSide;
  final SessionIsarDatabase sessionDefault = SessionIsarDatabase({});

  BaseTemplateGeneralFrameworkProjectClient({
    required this.baseTemplateGeneralFrameworkProjectSecretClientSide,
    required super.generalLibrary,
    super.networkClientConnectionType = NetworkClientConnectionType.websocket,
    required super.generalFrameworkClientInvokeOptions,
    required super.generalFrameworkDatabase,
    super.eventEmitter,
    super.eventInvoke,
    super.eventUpdate,
    super.httpClient,
  }) : super(
          apiUrl: baseTemplateGeneralFrameworkProjectSecretClientSide.apiUrl,
          pathApi: baseTemplateGeneralFrameworkProjectSecretClientSide.pathApi,
          pathWebSocket:
              baseTemplateGeneralFrameworkProjectSecretClientSide.pathWebSocket,
        );

  @override
  FutureOr<void> ensureInitialized({
    required InvokeClientFunction<dynamic> onInvokeResult,
    required InvokeClientValidationFunction<Map?> onInvokeValidation,
    required String currentPath,
  }) async {
    await super.ensureInitialized(
      currentPath: currentPath,
      onInvokeValidation:
          (parameters, generalFrameworkClientInvokeOptions) async {
        final Map result = await onInvokeValidationDefault(
                parameters, generalFrameworkClientInvokeOptions) ??
            {};
        if (result.isNotEmpty) {
          return result;
        }
        return await onInvokeValidation(
            parameters, generalFrameworkClientInvokeOptions);
      },
      onInvokeResult:
          (result, parameters, generalFrameworkClientInvokeOptions) async {
        await onInvokeResultDefault(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
        await onInvokeResult(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
      },
    );
    loadSessionDefault();
  }

  void loadSessionDefault() {
    for (var element
        in generalFrameworkDatabase.session_getSessionDefault().sessions) {
      sessionDefault.rawData = element.rawData;
      break;
    }
  }

  FutureOr<Map?> onInvokeValidationDefault(
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    final String client_token = parameters
        .base_template_general_framework_project_scheme_utils_special_client_token();

    if (client_token.isEmpty) {
      parameters["@client_token"] = sessionDefault.token ?? "";
    }
    return null;
  }

  FutureOr<dynamic> onInvokeResultDefault(
      Map<dynamic, dynamic> result,
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    final String parameters_special_type =
        parameters["@type"].toString().toLowerCase();
    final String result_special_type = result["@type"].toString().toLowerCase();
    final String client_token = parameters
        .base_template_general_framework_project_scheme_utils_special_client_token();
    if (result_special_type == "error") {
      if (result["message"] == "session_not_found") {
        generalFrameworkDatabase.session_deleteSessionByToken(
            token: client_token);
        if (client_token == sessionDefault.token) {
          sessionDefault.rawData.clear();
          loadSessionDefault();
        }
      }
    }
    if (parameters_special_type == "logout") {
      if (result_special_type == "ok") {
        generalFrameworkDatabase.session_deleteSessionByToken(
            token: client_token);
        if (client_token == sessionDefault.token) {
          sessionDefault.rawData.clear();
          loadSessionDefault();
        }
      }
    }
    if (parameters_special_type == "signin") {
      if (result_special_type == "session") {
        final Session session = Session(result);
        sessionDefault.rawData = session.rawData;
        sessionDefault.is_default = true;
        generalFrameworkDatabase.session_saveSession(
          account_user_id: (session.account_user_id ?? 0).toInt(),
          token: session.token ?? "",
          newSessionDatabase: SessionIsarDatabase(sessionDefault.rawData),
        );
        generalFrameworkDatabase.account_saveAccountByUserId(
          account_user_id: (sessionDefault.account_user_id ?? 0).toInt(),
          newAccountDatabase: AccountDatabase.create(
            username: parameters["username"] ?? "",
          ),
        );
      }
    }
    if (parameters_special_type == "getme") {
      if (result_special_type == "account") {
        generalFrameworkDatabase.account_saveAccountByUserId(
            account_user_id: result["id"],
            newAccountDatabase: AccountDatabase(result));
      } else if (result_special_type == "error") {
        if (result["message"] == "timeout") {
          final account_from_database =
              generalFrameworkDatabase.account_getAccountByUserId(
                  account_user_id:
                      (sessionDefault.account_user_id ?? 0).toInt());
          if (account_from_database == null) {
            return;
          }
          result.clear();
          result.general_lib_extension_updateForce(data: {
            "@type": "account",
            ...account_from_database.toJson(),
          });
        }
      }
    }
    return;
  }

  @override
  String decryptData({required String data}) {
    return baseTemplateGeneralFrameworkProjectSecretClientSide.crypto
        .decrypt(data: data);
  }

  @override
  String encryptData({required Map data}) {
    return baseTemplateGeneralFrameworkProjectSecretClientSide.crypto
        .encrypt(data: json.encode(data));
  }
}
