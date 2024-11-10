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

import 'package:base_web_template_general_framework_project_api_database/base_web_template_general_framework_project_api_database_core.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_web_template_general_framework_project_scheme/database_scheme/message_database.dart';
import 'package:general_lib/extension/map.dart';

extension BaseWebTemplateGeneralFrameworkProjectApiDatabaseExtensionMessage
    on BaseWebTemplateGeneralFrameworkProjectApiDatabase {
  Future<List<MessageDatabase>> message_getMessageAllMessage({
    required String chat_unique_id,
    required num offset,
    required num limit,
  }) async {
    return (await supabase_message
            .select()
            .eq("chat_unique_id", chat_unique_id)
            .range(offset.toInt(), limit.toInt()))
        .map((e) {
      return MessageDatabase(e);
    }).toList();
  }

  Future<MessageDatabase?> message_getMessageByMessageId({
    required String chat_unique_id,
    required num message_id,
  }) async {
    final result = await supabase_message
        .select()
        .eq("chat_unique_id", chat_unique_id)
        .eq("message_id", message_id)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return null;
    }
    return MessageDatabase(result);
  }

  Future<int> message_getLastMessageId({
    required String chat_unique_id,
  }) async {
    final result = await supabase_message
        .select()
        .eq("chat_unique_id", chat_unique_id)
        .order("message_id", ascending: false)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return 0;
    }

    return (MessageDatabase(result).message_id ?? 1).toInt();
  }

  Future<bool> message_saveMessage({
    required String chat_unique_id,
    required num user_id,
    required num message_id,
    required MessageDatabase newMessageDatabase,
  }) async {
    message_utils_removeUnusedMessageDatabase(
        messageDatabase: newMessageDatabase);
    newMessageDatabase.chat_unique_id = chat_unique_id;
    newMessageDatabase.from_user_id = user_id;
    newMessageDatabase.message_id = message_id;
    final result = await supabase_message
        .select()
        .eq("chat_unique_id", chat_unique_id)
        .eq("from_user_id", user_id)
        .eq("message_id", message_id)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return false;
    }

    final new_update = await supabase_message
        .update(newMessageDatabase.toJson())
        .order("id", ascending: true)
        .limit(1)
        .maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  Future<MessageDatabase?> message_createNewMessage({
    required String chat_unique_id,
    required num user_id,
    required MessageDatabase newMessageDatabase,
  }) async {
    final int new_message_id =
        await message_utils_newMessageId(chat_unique_id: chat_unique_id);
    if (new_message_id < 1) {
      return null;
    }
    message_utils_removeUnusedMessageDatabase(
        messageDatabase: newMessageDatabase);
    newMessageDatabase.chat_unique_id = chat_unique_id;
    newMessageDatabase.from_user_id = user_id;
    newMessageDatabase.message_id = new_message_id;
    final new_data = await supabase_message
        .insert(newMessageDatabase.toJson(), defaultToNull: false)
        .select()
        .limit(1)
        .maybeSingle();
    if (new_data == null) {
      return null;
    }
    new_data["chat_unique_id"] = chat_unique_id;
    // new_data[newMessageDatabase.chat_unique_id = chat_unique_id;];
    // new_data["chat_ids"] = [chat_id, user_id];
    return MessageDatabase(new_data);
  }

  Future<int> message_utils_newMessageId({
    required String chat_unique_id,
  }) async {
    int new_message_id = (await message_getLastMessageId(
          chat_unique_id: chat_unique_id,
        )) +
        1;
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      final result = await supabase_message
          .select()
          .eq("chat_unique_id", chat_unique_id)
          .eq("message_id", new_message_id)
          .order("message_id", ascending: false)
          .limit(1)
          .maybeSingle();
      if (result == null) {
        return new_message_id;
      } else {
        new_message_id++;
      }
    }
  }

  void message_utils_removeUnusedMessageDatabase({
    required MessageDatabase messageDatabase,
  }) {
    messageDatabase.rawData.removeByKeys(["id", "@type"]);
    List keys = MessageDatabase.defaultData.keys.toList();
    messageDatabase.rawData
        .removeWhere((key, value) => keys.contains(key) == false);
  }
}
