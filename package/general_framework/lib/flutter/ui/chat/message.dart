import 'package:flutter/material.dart';

/// UncompleteDocumentation
class MessageGeneralFramework {
  /// UncompleteDocumentation
  final num id;

  /// UncompleteDocumentation
  final Map data;

  /// UncompleteDocumentation
  final GlobalKey globalKey;

  /// UncompleteDocumentation
  MessageGeneralFramework({
    required this.id,
    required this.data,
  }) : globalKey = GlobalKey(debugLabel: "chat_message_general_framework_{id}");
}
