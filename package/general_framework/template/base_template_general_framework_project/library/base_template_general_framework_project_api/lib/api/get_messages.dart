// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/message/message.dart';
import 'package:base_template_general_framework_project_scheme/converter/message.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetMessagesMessages
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Messages> api_getMessages({
    required InvokeRequestData invokeRequestData,
  }) async {
    final GetMessages getMessages =
        invokeRequestData.parametersBuilder<GetMessages>(
      builder: (parameters) {
        return GetMessages(parameters.toJson());
      },
    );
    final List<Message> messages = [];
    final num chat_id = getMessages.chat_id ?? 0;
    if (chat_id < 1) {
      return Messages({
        "@type": "error",
        "message": "chat_id_bad_format",
      });
    }
    final num user_id = invokeRequestData.accountDatabase.id ?? 0;
    for (final num message_id in getMessages.message_ids) {
      final result =
          await generalFrameworkApiDatabase.message_getMessageByMessageId(
        chat_id: chat_id,
        user_id: user_id,
        message_id: message_id,
      );
      if (result == null) {
        continue;
      }
      messages.add(result.toMessage());
    }
    return Messages.create(
      total_count: messages.length,
      messages: messages,
    );
  }
}
