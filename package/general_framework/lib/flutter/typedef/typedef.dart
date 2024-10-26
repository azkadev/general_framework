import 'package:flutter/material.dart';

typedef DecorationBuilderGeneralFrameworkWidget = Decoration Function(BuildContext context, BoxDecoration decoration);

typedef InputDecorationBuilderGeneralFrameworkWidget = InputDecoration Function(BuildContext context, InputDecoration inputDecoration);

InputDecoration inputDecorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, InputDecoration inputDecoration) {
  return inputDecoration;
}


Decoration decorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, BoxDecoration decoration) {
  return decoration;
}
