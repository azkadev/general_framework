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

import 'package:base_web_template_general_framework_project_client_database/base_web_template_general_framework_project_client_database_core.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/account_database.dart';

extension BaseWebTemplateGeneralFrameworkProjectClientDatabaseExtensionAccount on BaseWebTemplateGeneralFrameworkProjectClientDatabase {
  List<AccountDatabase> get coreDatabaseAccounts {
    final value = coreDatabaseValue();
    if (value["accounts"] is List == false) {
      value["accounts"] = [];
    }

    return value.accounts;
  }

  AccountDatabase? account_getAccountByUserId({
    required int account_user_id,
  }) {
    for (final element in coreDatabaseAccounts) {
      if (element.id == account_user_id) {
        return element;
      }
    }
    return null;
  }

  AccountDatabase? account_getAccountByUserName({
    required String username,
  }) {
    for (final element in coreDatabaseAccounts) {
      final String element_username = (element.username ?? "").trim();
      if (element_username.isEmpty) {
        continue;
      }
      if (RegExp("^(${RegExp.escape(username)})\$", caseSensitive: false).hasMatch(element_username)) {
        return element;
      }
    }
    return null;
  }

  bool account_saveAccountByUserId({
    required int account_user_id,
    required AccountDatabase newAccountDatabase,
  }) {
    newAccountDatabase.id = account_user_id;
    final accounts = coreDatabaseAccounts;
    for (final element in accounts) {
      if (element.id == account_user_id) {
        newAccountDatabase.rawData.forEach((key, value) {
          element[key] = value;
        });
        saveCoreDatabase();
        return true;
      }
    }
    accounts.add(newAccountDatabase);
    coreDatabaseValue().accounts = accounts;
    saveCoreDatabase();
    return true;
  }

  bool account_deleteAccountByUserId({
    required int account_user_id,
  }) {
    coreDatabaseAccounts.removeWhere((e) => e.id == account_user_id);
    saveCoreDatabase();
    return true;
  }
}
