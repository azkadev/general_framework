import 'package:flutter/material.dart';

/// UncompleteDocumentation
class CrossFadeStateController extends ChangeNotifier {
  /// UncompleteDocumentation
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  /// UncompleteDocumentation
  void autoChange() {
    change(isShowSecond: crossFadeState == CrossFadeState.showFirst);
  }

  /// UncompleteDocumentation
  void change({
    required bool isShowSecond,
  }) {
    if (isShowSecond) {
      crossFadeState = CrossFadeState.showSecond;
    } else {
      crossFadeState = CrossFadeState.showFirst;
    }
    notifyListeners();
  }
}
