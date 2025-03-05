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
