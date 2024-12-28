import 'dart:math';

import 'package:flutter/material.dart';

class GeneralFrameworkFlutterUtils {
  static final List<MaterialColor> colors = [
    Colors.blue,
    Colors.blueGrey,
    Colors.brown,
    Colors.cyan,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.green,
    Colors.grey,
    Colors.indigo,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.lime
  ];

  static MaterialColor randomColors() {
    // colors.shuffle();
    return colors[Random().nextInt(colors.length)];
  }
}
