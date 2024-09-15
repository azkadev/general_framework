import 'package:base_template_general_framework_project_scheme/database_scheme/message_database.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/message.dart';

extension MessageDatabaseExtension on MessageDatabase {
  Message toMessage() {
    return Message.create(
      is_outgoing: is_outgoing,
      chat_id: chat_ids.firstOrNull,
      from_user_id: from_user_id,
      date: date,
      update_date: update_date,
      status: status,
      text: text,
    );
  }
}
