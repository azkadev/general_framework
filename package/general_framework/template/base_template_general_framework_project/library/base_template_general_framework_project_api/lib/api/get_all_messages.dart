// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/message/message.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetAllMessagesMessages on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Messages> api_getAllMessages({
    required InvokeRequestData invokeRequestData,
  }) async {
    final GetAllMessages getAllMessages = invokeRequestData.parametersBuilder<GetAllMessages>(
      builder: (parameters) {
        return GetAllMessages(parameters.toJson());
      },
    );

    if ((getAllMessages.chat_id ?? 0) < 1) {
      return Messages({
        "@type": "error",
        "message": "chat_id_bad_format",
      });
    }
    final List<Message> messages = (await generalFrameworkApiDatabase.message_getMessageAllMessage(chat_id: getAllMessages.chat_id ?? 0, user_id: invokeRequestData.accountDatabase.id ?? 0, offset: getAllMessages.offset ?? 0, limit: getAllMessages.limit ?? 100)).map((e) {
      return Message(e.toJson());
    }).toList();
    return Messages.create(
      total_count: messages.length,
      messages: messages,
    );
  }
}
