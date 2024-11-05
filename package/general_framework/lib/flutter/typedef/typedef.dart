import 'package:flutter/material.dart';


typedef WidgetBuilderGeneralFrameworkWidget = Widget Function(BuildContext context, Widget child);
Widget widgetBuilderGeneralFrameworkWidgetDefault(BuildContext context, Widget child) {
  return child;
}

typedef DecorationBuilderGeneralFrameworkWidget = Decoration Function(BuildContext context, BoxDecoration decoration);
typedef ShapeBorderBuilderGeneralFrameworkWidget = ShapeBorder Function(BuildContext context, RoundedRectangleBorder shapeBorder);

typedef InputDecorationBuilderGeneralFrameworkWidget = InputDecoration Function(BuildContext context, InputDecoration inputDecoration);

InputDecoration inputDecorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, InputDecoration inputDecoration) {
  return inputDecoration;
}

Decoration decorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, BoxDecoration decoration) {
  return decoration;
}

ShapeBorder shapeBorderBuilderGeneralFrameworkWidgetDefault(BuildContext context, RoundedRectangleBorder shapeBorder) {
  return shapeBorder;
}
