import 'package:flutter/material.dart';

///
typedef WidgetBuilderGeneralFrameworkWidget = Widget Function(BuildContext context, Widget child);
Widget widgetBuilderGeneralFrameworkWidgetDefault(BuildContext context, Widget child) {
  return child;
}

///
typedef InputDecorationBuilderGeneralFrameworkWidget = InputDecoration Function(BuildContext context, InputDecoration inputDecoration);
InputDecoration inputDecorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, InputDecoration inputDecoration) {
  return inputDecoration;
}

///
typedef DecorationBuilderGeneralFrameworkWidget = Decoration Function(BuildContext context, BoxDecoration decoration);
Decoration decorationBuilderGeneralFrameworkWidgetDefault(BuildContext context, BoxDecoration decoration) {
  return decoration;
}

///
typedef ShapeBorderBuilderGeneralFrameworkWidget = ShapeBorder Function(BuildContext context, RoundedRectangleBorder shapeBorder);
ShapeBorder shapeBorderBuilderGeneralFrameworkWidgetDefault(BuildContext context, RoundedRectangleBorder shapeBorder) {
  return shapeBorder;
}


///
typedef TextStyleBuilderGeneralFrameworkWidget = TextStyle Function(BuildContext context, TextStyle style);
TextStyle textStyleBuilderGeneralFrameworkWidgetDefault(BuildContext context, TextStyle style) {
  return style;
}
