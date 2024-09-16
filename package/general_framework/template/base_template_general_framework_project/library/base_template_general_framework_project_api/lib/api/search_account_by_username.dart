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

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/account/account.dart';
import 'package:base_template_general_framework_project_scheme/converter/account.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsearchAccountByUsernameAccount
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Account> api_searchAccountByUsername({
    required InvokeRequestData invokeRequestData,
  }) async {
    final SearchAccountByUsername searchAccountByUsername =
        invokeRequestData.parametersBuilder<SearchAccountByUsername>(
      builder: (parameters) {
        return SearchAccountByUsername(parameters.toJson());
      },
    );

    final String username_procces =
        (searchAccountByUsername.username ?? "").trim();
    if (username_procces.isEmpty) {
      return Account({
        "@type": "error",
        "message": "username_cant_empty",
      });
    }
    final res = await generalFrameworkApiDatabase.account_getAccountByUserName(
      username: username_procces,
    );
    if (res == null) {
      return Account({
        "@type": "error",
        "message": "account_not_found",
      });
    }
    return res.toAccount();
  }
}