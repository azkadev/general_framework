import 'dart:io';

import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database.dart';
import 'package:base_template_general_framework_project_client_isar_scheme/database/scheme/message_database.dart' as isar_scheme;
import 'package:base_template_general_framework_project_scheme/database_scheme/message_database.dart';
import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';
import 'package:isar/isar.dart';
import 'package:test/test.dart';

void main() async {
  final BaseTemplateGeneralFrameworkProjectClientDatabase database = BaseTemplateGeneralFrameworkProjectClientDatabase();
  await database.ensureInitialized(currentPath: Directory.current.path, httpClient: Client());

  int chat_id = 20000;
  int user_id = 10000;
  test("Message Database", () async {
    database.isar_core.messageDatabases.where().exportJson().printPretty();
    print("Wait");
    await Future.delayed(Duration(seconds: 2));
    int message_id = 1;
    final MessageDatabase? messageDatabase = database.message_getMessageByMessageId(
      chat_id: chat_id,
      user_id: user_id,
      message_id: message_id,
    );
    print(messageDatabase);
    final messages = database.message_getMessages(
      chat_id: chat_id,
      user_id: user_id,
      offset: 0,
      limit: 100,
    );
    print(messages.message_count);
    print(messages.messages.toList().toJson().toStringifyPretty());
    // database.message_saveMessage(
    //   chat_id: chat_id,
    //   user_id: user_id,
    //   message_id: 1,
    //   newMessageDatabase: MessageDatabase.create(text: "Slebew"),
    // );
  }, timeout: Timeout(Duration(days: 10)));
  print("done");
  stdin.listen((d) {});
}
