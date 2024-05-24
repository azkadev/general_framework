import 'package:general_framework/flutter/material.dart';

import 'package:meta/meta.dart';

abstract class GeneralFramework extends Widget {
  const GeneralFramework({
    super.key,
  });

  @protected
  @factory
  GeneralFrameworkState createState();
}

abstract class GeneralFrameworkState<T extends GeneralFramework> {
  GeneralFrameworkState();

  T get widget => _widget!;
  T? _widget;

  @protected
  void setState(void Function() fn) {}

  Widget build(dynamic context);
}
