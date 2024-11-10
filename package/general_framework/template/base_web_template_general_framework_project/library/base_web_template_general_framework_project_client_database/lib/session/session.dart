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

import 'package:base_web_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/session_isar_database.dart';
import 'package:general_lib/general_lib.dart';

extension BaseWebTemplateGeneralFrameworkProjectClientDatabaseExtensionSession on BaseWebTemplateGeneralFrameworkProjectClientDatabase {
  ({
    int total_count,
    Iterable<SessionIsarDatabase> sessions,
  }) session_getSessions({
    required int? offset,
    required int? limit,
  }) { 
    return (
      total_count: 0,
      sessions: [],
    );
  }

  ({
    int total_count,
    Iterable<SessionIsarDatabase> sessions,
  }) session_getSessionDefault({
    int? offset,
    int? limit,
  }) { 
    return (
      total_count: 0,
      sessions: []
    );
  }

  SessionIsarDatabase? session_getSession({
    required int account_user_id,
  }) { 
    return SessionIsarDatabase({});
  }

  bool session_deleteSessionByToken({
    required String token,
  }) { 
    return true;
  }

  bool session_deleteSession({
    required int account_user_id,
  }) { 
    return true;
  }

  bool session_saveSession({
    required int account_user_id,
    required String token,
    required SessionIsarDatabase newSessionDatabase,
  }) {
    newSessionDatabase.rawData.removeByKeys(["id"]);
    newSessionDatabase.account_user_id = account_user_id;
    newSessionDatabase.token = token;
    
    return true;
  }
}
