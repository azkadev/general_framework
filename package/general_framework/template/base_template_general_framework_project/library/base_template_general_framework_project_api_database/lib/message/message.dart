// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database_core.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/message_database.dart';
import 'package:general_lib/extension/map.dart';

extension BaseTemplateGeneralFrameworkProjectApiDatabaseExtensionMessage on BaseTemplateGeneralFrameworkProjectApiDatabase {
  Future<MessageDatabase?> message_getMessageByMessageId({
    required num chat_id,
    required num user_id,
    required num message_id,
  }) async {
    final result = await supabase_message.select().containedBy("chat_ids", [chat_id, user_id]).eq("message_id", message_id).limit(1).maybeSingle();
    if (result == null) {
      return null;
    }
    return MessageDatabase(result);
  }

  Future<int> message_getLastMessageId({
    required num chat_id,
    required num user_id,
  }) async {
    final result = await supabase_message.select().containedBy("chat_ids", [chat_id, user_id]).order("message_id", ascending: false).limit(1).maybeSingle();
    if (result == null) {
      return 0;
    }

    return (MessageDatabase(result).message_id ?? 1).toInt();
  }

  Future<bool> message_saveMessage({
    required num chat_id,
    required num user_id,
    required num message_id,
    required MessageDatabase newMessageDatabase,
  }) async {
    message_utils_removeUnusedMessageDatabase(messageDatabase: newMessageDatabase);
    newMessageDatabase.chat_ids = [chat_id, user_id];
    newMessageDatabase.from_user_id = user_id;
    newMessageDatabase.message_id = message_id;
    final result = await supabase_message.select().containedBy("chat_ids", [chat_id, user_id]).eq("from_user_id", user_id).eq("message_id", message_id).limit(1).maybeSingle();
    if (result == null) {
      return false;
    }

    final new_update = await supabase_message.update(newMessageDatabase.toJson()).order("id", ascending: true).limit(1).maybeSingle();
    if (new_update == null) {
      return false;
    }
    return true;
  }

  Future<MessageDatabase?> message_createNewMessage({
    required num chat_id,
    required num user_id,
    required MessageDatabase newMessageDatabase,
  }) async {
    final int new_message_id = await message_utils_newMessageId(chat_id: chat_id, user_id: user_id);
    if (new_message_id < 1) {
      return null;
    }
    message_utils_removeUnusedMessageDatabase(messageDatabase: newMessageDatabase);
    newMessageDatabase.chat_ids = [chat_id, user_id];
    newMessageDatabase.from_user_id = user_id;
    newMessageDatabase.message_id = new_message_id;
    final new_data = await supabase_message.insert(newMessageDatabase.toJson(), defaultToNull: false).select().limit(1).maybeSingle();
    if (new_data == null) {
      return null;
    }
    return MessageDatabase(new_data);
  }

  Future<int> message_utils_newMessageId({
    required num chat_id,
    required num user_id,
  }) async {
    int new_message_id = (await message_getLastMessageId(chat_id: chat_id, user_id: user_id)) + 1;
    while (true) {
      await Future.delayed(Duration(milliseconds: 1));
      final result = await supabase_message.select().containedBy("chat_ids", [chat_id, user_id]).eq("message_id", new_message_id).order("message_id", ascending: false).limit(1).maybeSingle();
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
    messageDatabase.rawData.removeWhere((key, value) => keys.contains(key) == false);
  }
}
