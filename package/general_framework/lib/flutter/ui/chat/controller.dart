// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/chat/message.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class ChatControllerGeneralFramework<T extends MessageGeneralFramework>
    extends ChangeNotifier {
  /// UncompleteDocumentation
  final ScrollControllerAutoKeepStateData scrollControllerAutoKeepStateData;

  /// UncompleteDocumentation
  final Map<num, T> messages = {};

  num _selectedMessageIdProcces = 0;

  /// UncompleteDocumentation
  num? get selectedMessageId {
    if (_selectedMessageIdProcces < 1) {
      return null;
    }
    return _selectedMessageIdProcces;
  }

  /// UncompleteDocumentation
  ChatControllerGeneralFramework({
    String key = "chat_page",
  }) : scrollControllerAutoKeepStateData = ScrollControllerAutoKeepStateData(
          keyId: key,
        );

  /// UncompleteDocumentation
  ScrollController get scrollController {
    return scrollControllerAutoKeepStateData.scroll_controller;
  }

  /// UncompleteDocumentation
  Future<void> scrollToLast() async {
    await Future.delayed(Durations.short1, () async {
      await scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  /// UncompleteDocumentation
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

  /// UncompleteDocumentation
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

  /// UncompleteDocumentation
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
    } catch (e) {}
    super.dispose();
  }
}
