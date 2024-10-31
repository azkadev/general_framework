import 'package:flutter/material.dart';

class LoadingGeneralFrameworkController extends ChangeNotifier {
  String loadingText;
  LoadingGeneralFrameworkController({
    required this.loadingText,
  });

  void update({
    required String loadingText,
  }) {
    this.loadingText = loadingText;
    notifyListeners();
  }
}
