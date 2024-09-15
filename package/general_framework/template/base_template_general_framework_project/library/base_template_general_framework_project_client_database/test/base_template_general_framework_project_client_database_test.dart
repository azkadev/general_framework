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
