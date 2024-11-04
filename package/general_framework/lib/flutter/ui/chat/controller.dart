import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/chat/message.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class ChatControllerGeneralFramework<T extends MessageGeneralFramework> extends ChangeNotifier {
  final ScrollControllerAutoKeepStateData scrollControllerAutoKeepStateData;

  final Map<num, T> messages = {};

  num _selectedMessageIdProcces = 0;

  num? get selectedMessageId {
    if (_selectedMessageIdProcces < 1) {
      return null;
    }
    return _selectedMessageIdProcces;
  }

  ChatControllerGeneralFramework({
    String key = "chat_page",
  }) : scrollControllerAutoKeepStateData = ScrollControllerAutoKeepStateData(
          keyId: key,
        );

  ScrollController get scrollController {
    return scrollControllerAutoKeepStateData.scroll_controller;
  }

  Future<void> scrollToLast() async {
    await Future.delayed(Durations.short1, () async {
      await scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Future<bool> scrollToMessageId({
    required num messageId,
  }) async {
    final message = messages[messageId];
    if (message == null) {
      return false;
    }
    final BuildContext? context = message.globalKey.currentContext;
    if (context == null) {
      return false;
    }
    _selectedMessageIdProcces = messageId;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
    notifyListeners();
    return true;
  }

  void addMessage({
    required T newMessage,
    bool isAutoScrollToLast = true,
  }) {
    messages[newMessage.id] = newMessage;

    notifyListeners();
    if (isAutoScrollToLast) {
      scrollToLast();
    }
  }

  void addMessages({
    required Iterable<T> newMessages,
    bool isAutoScrollToLast = true,
  }) {
    for (final element in newMessages) {
      messages[element.id] = element;
    }
    notifyListeners();
    if (isAutoScrollToLast) {
      scrollToLast();
    }
  }

  @override
  void dispose() {
    messages.clear();
    try {
    scrollControllerAutoKeepStateData.dispose();
    }catch (e){
      
    }
    super.dispose();
  }
}
