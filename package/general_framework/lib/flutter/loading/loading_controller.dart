import 'package:flutter/material.dart';

class LoadingGeneralFrameworkController extends ChangeNotifier {
  String loading_text;
  LoadingGeneralFrameworkController({
    required this.loading_text,
  });

  void update({
    required String loadingText,
  }) {
    loading_text = loadingText;
    notifyListeners();
  }
}
