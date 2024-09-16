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

import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:general_lib/extension/map.dart';

extension BaseTemplateGeneralFrameworkProjectApiDatabaseExtensionAccount
    on BaseTemplateGeneralFrameworkProjectApiDatabase {
  FutureOr<AccountDatabase?> account_getAccountByUserId({
    required num account_user_id,
  }) async {
    final result = await supabase_account
        .select()
        .eq("account_user_id", account_user_id)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result);
  }

  FutureOr<AccountDatabase?> account_getAccountByUserName({
    required String username,
  }) async {
    final result = await supabase_account
        .select()
        .ilike("username", username)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return null;
    }
    return AccountDatabase(result);
  }

  Future<AccountDatabase?> account_createNewAccount({
    required String username,
    required String password,
    required AccountDatabase newAccountDatabase,
  }) async {
    account_utils_removeUnusedAccountDatabase(
        accountDatabase: newAccountDatabase);
    newAccountDatabase.username = username;

    newAccountDatabase.password = password;
    final new_data = await supabase_account
        .insert(newAccountDatabase.toJson())
        .select()
        .limit(1)
        .maybeSingle();
    if (new_data == null) {
      return null;
    }
    return AccountDatabase(new_data);
  }

  Future<bool> account_saveAccountByUserId({
    required num account_user_id,
    required AccountDatabase newAccountDatabase,
  }) async {
    newAccountDatabase.id = account_user_id;

    account_utils_removeUnusedAccountDatabase(
        accountDatabase: newAccountDatabase);
    final result = await supabase_account
        .select("id")
        .eq("id", account_user_id)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return false;
    }
    final new_update = await supabase_account
        .update(newAccountDatabase.toJson())
        .eq("id", account_user_id)
        .select()
        .order("id", ascending: true)
        .limit(1)
        .maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  void account_utils_removeUnusedAccountDatabase({
    required AccountDatabase accountDatabase,
  }) {
    accountDatabase.rawData.removeByKeys(["@type", "id"]);
    List keys = AccountDatabase.defaultData.keys.toList();
    accountDatabase.rawData
        .removeWhere((key, value) => keys.contains(key) == false);
  }
}
