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
// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_web_template_general_framework_project_api/base_web_template_general_framework_project_api_core.dart';
import 'package:base_web_template_general_framework_project_api/update/update.dart';
import 'package:base_web_template_general_framework_project_api_database/account/account.dart';
import 'package:base_web_template_general_framework_project_api_database/session/session.dart';
import 'package:base_web_template_general_framework_project_scheme/base_web_template_general_framework_project_scheme_core.dart';
import 'package:base_web_template_general_framework_project_scheme/converter/session.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_web_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseWebTemplateGeneralFrameworkProjectApiExtensionsignInSession
    on BaseWebTemplateGeneralFrameworkProjectApi {
  FutureOr<Session> api_signIn({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String username_parameters = () {
      if (invokeRequestData.parameters["username"] is String) {
        return invokeRequestData.parameters["username"];
      }
      return "";
    }();
    final String password_parameters = () {
      if (invokeRequestData.parameters["password"] is String) {
        return invokeRequestData.parameters["password"];
      }
      return "";
    }();
    // validation
    {
      final Map? validation_username =
          BaseWebTemplateGeneralFrameworkProjectSchemeValidation
              .usernameValidation(username: username_parameters);
      if (validation_username != null) {
        return Session(validation_username);
      }

      final Map? validation_password =
          BaseWebTemplateGeneralFrameworkProjectSchemeValidation
              .usernameValidation(username: password_parameters);
      if (validation_password != null) {
        return Session(validation_password);
      }
    }
    final AccountDatabase? account_data_old = await generalFrameworkApiDatabase
        .account_getAccountByUserName(username: username_parameters);
    if (account_data_old == null) {
      return Session({"@type": "error", "message": "account_not_found"});
    }
    if (account_data_old.password != password_parameters) {
      return Session({"@type": "error", "message": "password_wrong"});
    }
    final SessionDatabase? session_data_new =
        await generalFrameworkApiDatabase.session_createNewSession(
      account_user_id: account_data_old.id ?? 0,
      newSessionDatabase: SessionDatabase.create(),
    );
    if (session_data_new == null) {
      return Session({
        "@type": "error",
        "message": "cant_create_session",
      });
    }
    return session_data_new.toSession();
  }
}
