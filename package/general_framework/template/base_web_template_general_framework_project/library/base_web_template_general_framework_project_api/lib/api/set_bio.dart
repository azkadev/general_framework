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
import 'package:base_web_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:base_web_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseWebTemplateGeneralFrameworkProjectApiExtensionsetBioOk
    on BaseWebTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_setBio({
    required InvokeRequestData invokeRequestData,
  }) async {
    final String? bio_parameters = () {
      if (invokeRequestData.parameters["bio"] is String) {
        return invokeRequestData.parameters["bio"];
      }
      return null;
    }();
    final bool is_update_succes =
        await generalFrameworkApiDatabase.account_saveAccountByUserId(
      account_user_id: invokeRequestData.accountDatabase.id ?? 0,
      newAccountDatabase: AccountDatabase.create(
        bio: bio_parameters,
      ),
    );
    if (is_update_succes == false) {
      return Ok({
        "@type": "error",
        "message": "cant_update_account",
      });
    }
    return Ok.create();
  }
}
