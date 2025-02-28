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

import 'package:base_template_general_framework_project_api/api/api.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:general_framework/core/api/core.dart';
import 'package:general_lib/json_scheme/json_scheme.dart';

class BaseTemplateGeneralFrameworkProjectApi extends GeneralFrameworkApiBase<BaseTemplateGeneralFrameworkProjectApiDatabase> {
  BaseTemplateGeneralFrameworkProjectApi({
    required super.generalFrameworkApiDatabase,
  });

  @override
  FutureOr<JsonScheme> invoke({
    required JsonScheme parameters,
  }) async {
    final InvokeRequestData invokeRequestData = InvokeRequestData(
      parameters: parameters,
      accountDatabase: AccountDatabase({}),
      sessionDatabase: SessionDatabase({}),
    );

    // validation check data
    {
      final JsonScheme? checkValidation = invokeRequestData.checkValidation();
      if (checkValidation != null) {
        return checkValidation;
      }
    }
    await invokeRequestData.ensureInitialized(
      database: generalFrameworkApiDatabase,
    );
    return await request(
      invokeRequestData: invokeRequestData,
    );
  }

  FutureOr<JsonScheme> request({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String requestMethod = invokeRequestData.requestMethod();

    /// method not use session
    if (RegExp(r"^(signIn)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_signIn(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(signUp)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_signUp(invokeRequestData: invokeRequestData);
        },
      );
    }

    /// method use session
    /// check first
    {
      final JsonScheme? checkValidationSession = invokeRequestData.checkValidationSession();
      if (checkValidationSession != null) {
        return checkValidationSession;
      }
    }

    if (RegExp(r"^(getAllMessages)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getAllMessages(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(getChat)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getChat(invokeRequestData: invokeRequestData);
        },
      );
    }
    if (RegExp(r"^(getMe)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getMe(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(getMessage)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getMessage(invokeRequestData: invokeRequestData);
        },
      );
    }
    if (RegExp(r"^(getMessages)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getMessages(invokeRequestData: invokeRequestData);
        },
      );
    }
    if (RegExp(r"^(getSessions)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getSessions(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(getUpdate)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getUpdate(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(getUser)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_getUser(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(logOut)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_logOut(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(searchAccountByUsername)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_searchAccountByUsername(invokeRequestData: invokeRequestData);
        },
      );
    }
    if (RegExp(r"^(searchAccount)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_searchAccount(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(sendMessage)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_sendMessage(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(setBio)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_setBio(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(setName)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_setName(invokeRequestData: invokeRequestData);
        },
      );
    }

    if (RegExp(r"^(setUsername)$", caseSensitive: false).hasMatch(requestMethod)) {
      return await invokeRequestData.sendBuilder(
        builder: () async {
          return await api_setUsername(invokeRequestData: invokeRequestData);
        },
      );
    }

    return invokeRequestData.send(
      result: JsonScheme({
        "@type": "error",
        "message": "unimplemented",
      }),
    );
  }
}
