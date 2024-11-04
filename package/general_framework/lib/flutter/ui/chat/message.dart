import 'package:flutter/material.dart';

class MessageGeneralFramework {
  final num id;
  final Map data;
  final GlobalKey globalKey;
  MessageGeneralFramework({
    required this.id,
    required this.data,
  }) : globalKey = GlobalKey(debugLabel: "chat_message_general_framework_{id}");
}
