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

import 'package:base_web_template_general_framework_project_api_database/base_web_template_general_framework_project_api_database_core.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/chat_database.dart';
import 'package:base_web_template_general_framework_project_scheme/schemes/default_scheme.dart';
import 'package:general_lib/extension/map.dart';

extension BaseWebTemplateGeneralFrameworkProjectApiDatabaseExtensionChat
    on BaseWebTemplateGeneralFrameworkProjectApiDatabase {
  void chat_utils_removeUnusedAccountDatabase({
    required ChatDatabase chatDatabase,
  }) {
    chatDatabase.rawData.removeByKeys(["@type", "id"]);
    List keys = ChatDatabase.defaultData.keys.toList();
    chatDatabase.rawData
        .removeWhere((key, value) => keys.contains(key) == false);
  }

  Future<String?> chat_generateNewChatUniqueId() async {
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      final String new_chat_unique_id =
          BaseWebTemplateGeneralFrameworkProjectSchemeDefault
              .utils_generateSessionToken();

      final result = await supabase_chat
          .select("id")
          .eq("chat_unique_id", new_chat_unique_id)
          .limit(1)
          .maybeSingle();
      if (result == null) {
        return new_chat_unique_id;
      }
    }
  }

  Future<ChatDatabase?> chat_createNewChat({
    required num chat_id,
    required num user_id,
    required ChatDatabase newChatDatabase,
  }) async {
    final String new_chat_unique_id =
        (await chat_generateNewChatUniqueId() ?? "").trim();
    if (new_chat_unique_id.isEmpty) {
      return null;
    }
    chat_utils_removeUnusedAccountDatabase(chatDatabase: newChatDatabase);
    newChatDatabase.chat_ids = [chat_id, user_id];
    newChatDatabase.chat_unique_id = new_chat_unique_id;
    final new_data = await supabase_chat
        .insert(newChatDatabase.toJson(), defaultToNull: false)
        .select()
        .limit(1)
        .maybeSingle();
    if (new_data == null) {
      return null;
    }
    return ChatDatabase(new_data);
  }

  Future<ChatDatabase?> chat_getChatDatabase({
    required num chat_id,
    required num user_id,
  }) async {
    final result = await supabase_account
        .select()
        .containedBy("chat_ids", [chat_id, user_id])
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return null;
    }
    return ChatDatabase(result);
  }
}
