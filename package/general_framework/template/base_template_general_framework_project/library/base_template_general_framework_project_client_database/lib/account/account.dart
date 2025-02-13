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

import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_database_universe_scheme/database/scheme/account_database.dart'
    as database_universe_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:database_universe/database_universe.dart';

extension BaseTemplateGeneralFrameworkProjectClientDatabaseExtensionAccount
    on BaseTemplateGeneralFrameworkProjectClientDatabase {
  AccountDatabase? account_getAccountByUserId({
    required int account_user_id,
  }) {
    final result = database_universe_core.accountDatabases
        .where()
        .idEqualTo(account_user_id)
        .findFirst();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result.toJson());
  }

  AccountDatabase? account_getAccountByUserName({
    required String username,
  }) {
    final result = database_universe_core.accountDatabases
        .where()
        .usernameEqualTo(username, caseSensitive: false)
        .findFirst();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result.toJson());
  }

  bool account_saveAccountByUserId({
    required int account_user_id,
    required AccountDatabase newAccountDatabase,
  }) {
    newAccountDatabase.id = account_user_id;
    final result = database_universe_core.accountDatabases
        .where()
        .idEqualTo(account_user_id)
        .findFirst();
    if (result == null) {
      final database_universe_scheme.AccountDatabase new_account_database_isar =
          database_universe_scheme.AccountDatabase();
      new_account_database_isar.id = account_user_id;
      newAccountDatabase.rawData.forEach((key, value) {
        new_account_database_isar[key] = value;
      });
      database_universe_core.write((isar) {
        isar.accountDatabases.put(new_account_database_isar);
      });
      return true;
    }

    newAccountDatabase.rawData.forEach((key, value) {
      result[key] = value;
    });
    database_universe_core.write((isar) {
      isar.accountDatabases.put(result);
    });
    return true;
  }

  bool account_deleteAccountByUserId({
    required int account_user_id,
  }) {
    database_universe_core.write((isar) {
      isar.accountDatabases.where().idEqualTo(account_user_id).deleteAll();
    });
    return true;
  }
}
