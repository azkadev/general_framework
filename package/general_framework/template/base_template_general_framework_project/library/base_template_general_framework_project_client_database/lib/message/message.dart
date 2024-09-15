// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_client_isar_scheme/database/scheme/message_database.dart' as isar_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/message_database.dart';
import 'package:general_lib/extension/map.dart';
// import 'package:base_template_general_framework_project_scheme/database_scheme/account_database.dart';
import 'package:isar/isar.dart';

extension BaseTemplateGeneralFrameworkProjectClientDatabaseExtensionMessage on BaseTemplateGeneralFrameworkProjectClientDatabase {
  bool message_deleteAllMessage({
    required int chat_id,
    required int user_id,
  }) {
    isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).or().chat_idsElementBetween(user_id, chat_id).deleteAll();
    return true;
  }

  bool message_deleteMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).or().chat_idsElementBetween(user_id, chat_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).deleteAll();
    return true;
  }

  bool message_deleteMessageByMessageId({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).message_idEqualTo(message_id).or().chat_idsElementBetween(user_id, chat_id).message_idEqualTo(message_id).deleteAll();
    return true;
  }

  MessageDatabase? message_getMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    final result = isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).or().chat_idsElementBetween(user_id, chat_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).findFirst();
    if (result == null) {
      return null;
    }
    return MessageDatabase(result.toJson());
  }
  
  MessageDatabase? message_getMessageByMessageId({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    final result = isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).message_idEqualTo(message_id).or().chat_idsElementBetween(user_id, chat_id).message_idEqualTo(message_id).findFirst();
    if (result == null) {
      return null;
    }
    return MessageDatabase(result.toJson());
  }


  ({
    int message_count,
    Iterable<MessageDatabase> messages,
  }) message_getMessages({
    required int chat_id,
    required int user_id, 
    required int? offset,
    required int? limit,
  }) {
    final isar_builder = isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).or().chat_idsElementBetween(user_id, chat_id);
    final int message_count = isar_builder.count();
    return (
      message_count: message_count,
      messages: isar_builder.findAll(offset: offset, limit: limit).map((e) {
        return MessageDatabase(e.toJson());
      }),
    );
  }

  bool message_saveMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
    required MessageDatabase newMessageDatabase,
  }) {
    newMessageDatabase.rawData.removeByKeys(["id"]);
    newMessageDatabase.chat_ids = [
      chat_id,
      user_id,
    ];
    newMessageDatabase.from_user_id = user_id;
    newMessageDatabase.message_id = message_id;
    final result = isar_core.messageDatabases.where().chat_idsElementBetween(chat_id, user_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).or().chat_idsElementBetween(user_id, chat_id).from_user_idEqualTo(user_id).message_idEqualTo(message_id).findFirst();
    if (result == null) {
      isar_scheme.MessageDatabase new_message_database_isar = isar_scheme.MessageDatabase();
      new_message_database_isar.id = isar_core.messageDatabases.autoIncrement();
      new_message_database_isar.chat_ids = newMessageDatabase.chat_ids.map((e) => e.toInt()).toList();
      new_message_database_isar.from_user_id = user_id;
      new_message_database_isar.message_id = message_id;

      newMessageDatabase.rawData.forEach((key, value) {
        if (key == "chat_ids") {
          return;
        }
        new_message_database_isar[key] = value;
      });
      isar_core.write((isar) {
        isar.messageDatabases.put(new_message_database_isar);
      });
      return true;
    }
    newMessageDatabase.rawData.forEach((key, value) {
        if (key == "chat_ids") {
          return;
        }
      result[key] = value;
    });
    isar_core.write((isar) {
      isar.messageDatabases.put(result);
    });
    return true;
  }
}
