// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/message/message.dart';
import 'package:base_template_general_framework_project_scheme/converter/message.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsendMessageMessage on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Message> api_sendMessage({
    required InvokeRequestData invokeRequestData,
  }) async {
    final num chat_id_parameters = () {
      if (invokeRequestData.parameters["chat_id"] is num) {
        return invokeRequestData.parameters["chat_id"];
      }
      return 0;
    }();
    if (chat_id_parameters < 1) {
      return Message({
        "@type": "error",
        "message": "chat_id_wrong",
      });
    }
    final String text_parameters = () {
      if (invokeRequestData.parameters["text"] is String) {
        return invokeRequestData.parameters["text"] as String;
      }
      return "";
    }()
        .trim();

    if (text_parameters.isEmpty) {
      return Message({
        "@type": "error",
        "message": "text_cant_empty",
      });
    }

    final MessageDatabase? new_message_data = await generalFrameworkApiDatabase.message_createNewMessage(
      chat_id: chat_id_parameters,
      user_id: invokeRequestData.accountDatabase.id ?? 0,
      newMessageDatabase: MessageDatabase.create(
        date: DateTime.now().millisecondsSinceEpoch,
        text: text_parameters,
      ),
    );
    if (new_message_data == null) {
      return Message({
        "@type": "error",
        "message": "cant_create_new_message",
      });
    }
    return new_message_data.toMessage();
  }
}
