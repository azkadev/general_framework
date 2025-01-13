import 'package:flutter/material.dart';

/// UncompleteDocumentation
class LoadingGeneralFrameworkController extends ChangeNotifier {
  /// UncompleteDocumentation
  String loadingText;

  /// UncompleteDocumentation
  LoadingGeneralFrameworkController({
    required this.loadingText,
  });

  /// UncompleteDocumentation
  void update({
    required String loadingText,
  }) {
    this.loadingText = loadingText;
    notifyListeners();
  }
}
