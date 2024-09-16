// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_api_database/message/message.dart';
import 'package:base_template_general_framework_project_scheme/converter/message.dart';
import 'package:base_template_general_framework_project_scheme/database_scheme/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensiongetMessageMessage
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Message> api_getMessage({
    required InvokeRequestData invokeRequestData,
  }) async {
    final GetMessage getMessage =
        invokeRequestData.parametersBuilder<GetMessage>(
      builder: (parameters) {
        return GetMessage(parameters.toJson());
      },
    );
    if ((getMessage.chat_id ?? 0) < 1) {
      return Message({
        "@type": "error",
        "message": "chat_id_bad_format",
      });
    }
    final MessageDatabase? message_data =
        await generalFrameworkApiDatabase.message_getMessageByMessageId(
      chat_id: getMessage.chat_id ?? 0,
      user_id: invokeRequestData.accountDatabase.id ?? 0,
      message_id: getMessage.message_id ?? 0,
    );
    if (message_data == null) {
      return Message({
        "@type": "error",
        "message": "message_not_found",
      });
    }

    return message_data.toMessage();
  }
}
