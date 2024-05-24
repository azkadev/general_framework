import 'package:general_framework/flutter/foundation/key.dart';

abstract class Widget {
  final Key? key;

  /// Initializes [key] for subclasses.
  const Widget({this.key});
}
