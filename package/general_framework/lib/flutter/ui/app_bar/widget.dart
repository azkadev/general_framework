import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class AppBarGeneralFrameworkWidget extends StatelessWidget implements PreferredSizeWidget {
  final Size size;
  final Key? containerKey;
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool isAddPaddingTop;
  final Clip clipBehavior;
  final WidgetBuilder builder;
  const AppBarGeneralFrameworkWidget({
    super.key,
    this.containerKey,
    this.isAddPaddingTop = true,
    required this.size,
    required this.builder,
    this.decorationBuilder,
    this.alignment,
    this.padding,
    this.margin,
    this.clipBehavior = Clip.none,
  });

  @override
  Size get preferredSize => size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        key: containerKey,
        padding: padding,
        alignment: alignment,
        margin: () {
          final margin = (this.margin ?? const EdgeInsets.only());
          return EdgeInsets.only(
            top: (margin.vertical / 2) + context.mediaQueryData.padding.top,
            left: margin.horizontal / 2,
            right: margin.horizontal / 2,
            bottom: margin.vertical / 2,
          );
        }(),
        clipBehavior: clipBehavior,
        decoration: (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
          context,
          BoxDecoration(
            color: context.theme.appBarTheme.backgroundColor,
          ),
        ),
        child: builder(context),
      ),
    );
  }
}
