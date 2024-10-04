import 'package:flutter/material.dart';

class CrossFadeStateController extends ChangeNotifier {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  void autoChange() {
    change(isShowSecond: crossFadeState == CrossFadeState.showFirst);
  }

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
