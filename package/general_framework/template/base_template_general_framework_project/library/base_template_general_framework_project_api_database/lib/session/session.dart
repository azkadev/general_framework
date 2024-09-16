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
import 'package:base_template_general_framework_project_scheme/database_scheme/session_database.dart';
import 'package:base_template_general_framework_project_scheme/schemes/default_scheme.dart';
import 'package:general_lib/extension/map.dart';

extension BaseTemplateGeneralFrameworkProjectApiDatabaseExtensionSession on BaseTemplateGeneralFrameworkProjectApiDatabase {
  Future<String?> session_generateNewToken() async {
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      final String new_token = BaseTemplateGeneralFrameworkProjectSchemeDefault.utils_generateSessionToken();

      final result = await supabase_session.select("id").eq("token", new_token).limit(1).maybeSingle();
      if (result == null) {
        return new_token;
      }
    }
  }

  Future<SessionDatabase?> session_createNewSession({
    required num account_user_id,
    required SessionDatabase newSessionDatabase,
  }) async {
    final String new_token = (await session_generateNewToken() ?? "").trim();
    if (new_token.isEmpty) {
      return null;
    }
    session_utils_removeUnusedAccountDatabase(sessionDatabase: newSessionDatabase);
    newSessionDatabase.account_user_id = account_user_id;
    newSessionDatabase.token = new_token;
    final new_data = await supabase_session.insert(newSessionDatabase.toJson(), defaultToNull: false).select().limit(1).maybeSingle();
    if (new_data == null) {
      return null;
    }
    return SessionDatabase(new_data);
  }

  Future<SessionDatabase?> session_getSessionByToken({
    required String token,
  }) async {
    final result = await supabase_session.select().eq("token", token).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }

    return SessionDatabase(result);
  }

  Future<List<SessionDatabase>> session_getSessions({required num account_user_id, required num offset, required num limit}) async {
    return (await supabase_session.select().eq("account_user_id", account_user_id).range(offset.toInt(), limit.toInt())).map((e) {
      return SessionDatabase(e);
    }).toList(); 
  }

  Future<bool> session_deleteSession({
    required num account_user_id,
    required String token,
  }) async {
    final res = await supabase_session.delete().eq("account_user_id", account_user_id).eq("token", token).select();
    return res.isNotEmpty;
  }

  Future<bool> session_saveSession({
    required num account_user_id,
    required String token,
    required SessionDatabase newSessionDatabase,
  }) async {
    // newSessionDatabase.account_user_id;
    newSessionDatabase.token = token;
    newSessionDatabase.account_user_id = account_user_id;
    session_utils_removeUnusedAccountDatabase(sessionDatabase: newSessionDatabase);
    final result = await supabase_session.select("id").eq("account_user_id", account_user_id).eq("token", token).limit(1).maybeSingle();
    if (result == null) {
      return false;
    }
    final new_update = await supabase_session.update(newSessionDatabase.toJson()).eq("account_user_id", account_user_id).eq("token", token).select().order("id", ascending: true).limit(1).maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  void session_utils_removeUnusedAccountDatabase({
    required SessionDatabase sessionDatabase,
  }) {
    sessionDatabase.rawData.removeByKeys(["@type", "id"]);
    List keys = SessionDatabase.defaultData.keys.toList();
    sessionDatabase.rawData.removeWhere((key, value) => keys.contains(key) == false);
  }
}
