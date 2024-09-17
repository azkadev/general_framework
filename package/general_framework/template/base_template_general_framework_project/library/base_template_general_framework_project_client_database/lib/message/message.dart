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
import 'package:base_template_general_framework_project_client_isar_scheme/database/scheme/message_isar_database.dart'
    as isar_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/message_isar_database.dart';
import 'package:general_lib/extension/map.dart';
import 'package:isar/isar.dart';

extension BaseTemplateGeneralFrameworkProjectClientDatabaseExtensionMessage
    on BaseTemplateGeneralFrameworkProjectClientDatabase {
  bool message_deleteAllMessage({
    required int chat_id,
    required int user_id,
  }) {
    isar_core.write((isar) {
      isar.messageIsarDatabases
          .where()
          .chat_idsElementBetween(chat_id, user_id)
          .or()
          .chat_idsElementBetween(user_id, chat_id)
          .deleteAll();
    });
    return true;
  }

  bool message_deleteMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    isar_core.write((isar) {
      isar.messageIsarDatabases
          .where()
          .chat_idsElementBetween(chat_id, user_id)
          .from_user_idEqualTo(user_id)
          .message_idEqualTo(message_id)
          .or()
          .chat_idsElementBetween(user_id, chat_id)
          .from_user_idEqualTo(user_id)
          .message_idEqualTo(message_id)
          .deleteAll();
    });
    return true;
  }

  bool message_deleteMessageByMessageId({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    isar_core.write((isar) {
      isar.messageIsarDatabases
          .where()
          .chat_idsElementBetween(chat_id, user_id)
          .message_idEqualTo(message_id)
          .or()
          .chat_idsElementBetween(user_id, chat_id)
          .message_idEqualTo(message_id)
          .deleteAll();
    });
    return true;
  }

  MessageIsarDatabase? message_getMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    final result = isar_core.messageIsarDatabases
        .where()
        .chat_idsElementBetween(chat_id, user_id)
        .from_user_idEqualTo(user_id)
        .message_idEqualTo(message_id)
        .or()
        .chat_idsElementBetween(user_id, chat_id)
        .from_user_idEqualTo(user_id)
        .message_idEqualTo(message_id)
        .findFirst();
    if (result == null) {
      return null;
    }
    return MessageIsarDatabase(result.toJson());
  }

  MessageIsarDatabase? message_getMessageByMessageId({
    required int chat_id,
    required int user_id,
    required int message_id,
  }) {
    final result = isar_core.messageIsarDatabases
        .where()
        .chat_idsElementBetween(chat_id, user_id)
        .message_idEqualTo(message_id)
        .or()
        .chat_idsElementBetween(user_id, chat_id)
        .message_idEqualTo(message_id)
        .findFirst();
    if (result == null) {
      return null;
    }
    return MessageIsarDatabase(result.toJson());
  }

  ({
    int message_count,
    Iterable<MessageIsarDatabase> messages,
  }) message_getMessages({
    required int chat_id,
    required int user_id,
    required int? offset,
    required int? limit,
  }) {
    final isar_builder = isar_core.messageIsarDatabases
        .where()
        .chat_idsElementBetween(chat_id, user_id)
        .or()
        .chat_idsElementBetween(user_id, chat_id);
    final int message_count = isar_builder.count();
    return (
      message_count: message_count,
      messages: isar_builder.findAll(offset: offset, limit: limit).map((e) {
        return MessageIsarDatabase(e.toJson());
      }),
    );
  }

  bool message_saveMessage({
    required int chat_id,
    required int user_id,
    required int message_id,
    required MessageIsarDatabase newMessageIsarDatabase,
  }) {
    newMessageIsarDatabase.rawData.removeByKeys(["id"]);
    newMessageIsarDatabase.chat_ids = [
      chat_id,
      user_id,
    ];
    newMessageIsarDatabase.from_user_id = user_id;
    newMessageIsarDatabase.message_id = message_id;
    final result = isar_core.messageIsarDatabases
        .where()
        .chat_idsElementBetween(chat_id, user_id)
        .from_user_idEqualTo(user_id)
        .message_idEqualTo(message_id)
        .or()
        .chat_idsElementBetween(user_id, chat_id)
        .from_user_idEqualTo(user_id)
        .message_idEqualTo(message_id)
        .findFirst();
    if (result == null) {
      isar_scheme.MessageIsarDatabase new_message_database_isar =
          isar_scheme.MessageIsarDatabase();
      new_message_database_isar.id =
          isar_core.messageIsarDatabases.autoIncrement();
      new_message_database_isar.chat_ids =
          newMessageIsarDatabase.chat_ids.map((e) => e.toInt()).toList();
      new_message_database_isar.from_user_id = user_id;
      new_message_database_isar.message_id = message_id;

      newMessageIsarDatabase.rawData.forEach((key, value) {
        if (key == "chat_ids") {
          return;
        }
        new_message_database_isar[key] = value;
      });
      isar_core.write((isar) {
        isar.messageIsarDatabases.put(new_message_database_isar);
      });
      return true;
    }
    newMessageIsarDatabase.rawData.forEach((key, value) {
      if (key == "chat_ids") {
        return;
      }
      result[key] = value;
    });
    isar_core.write((isar) {
      isar.messageIsarDatabases.put(result);
    });
    return true;
  }
}
