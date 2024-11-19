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
  final Iterable<Widget> Function(BuildContext context) builder;
  final Widget Function(BuildContext context, Widget child)? widgetBuilder;
  const AppBarGeneralFrameworkWidget({
    super.key,
    this.containerKey,
    this.isAddPaddingTop = true,
    required this.size,
    required this.builder,
    this.widgetBuilder,
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
    final Decoration decoration = (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
      context,
      BoxDecoration(
        color: context.theme.appBarTheme.backgroundColor,
      ),
    );
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        key: containerKey,
        padding: padding,
        alignment: alignment,
        margin: margin,
        // margin: () {
        //   final margin = (this.margin ?? const EdgeInsets.only());
        //   return EdgeInsets.only(
        //     top: (margin.vertical / 2),
        //     left: margin.horizontal / 2,
        //     right: margin.horizontal / 2,
        //     bottom: margin.vertical / 2,
        //   );
        // }(),
        clipBehavior: clipBehavior,
        decoration: (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
          context,
          BoxDecoration(
            color: context.theme.appBarTheme.backgroundColor,
          ),
        ),
        child: () {
          final child = contentWidget(
            context: context,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isAddPaddingTop) ...[
                  SizedBox(
                    height: context.mediaQueryData.padding.top,
                  ),
                ],
                for (final element in builder(context)) ...[
                  if (element is AppBar) ...[
                    MediaQuery.removePadding(
                      context: context,
                      removeBottom: true,
                      removeLeft: true,
                      removeRight: true,
                      removeTop: true,
                      child: element,
                    ),
                  ] else ...[
                    element,
                  ],
                ],
              ],
            ),
          );

          if (decoration is BoxDecoration) {
            return ClipRRect(
              borderRadius: decoration.borderRadius ?? BorderRadius.zero,
              child: child,
            );
          }
          return child;
        }(),
      ),
    );
  }

  Widget contentWidget({
    required BuildContext context,
    required Widget child,
  }) {
    final widgetBuilder = this.widgetBuilder;
    if (widgetBuilder != null) {
      return widgetBuilder(context, child);
    }
    return child;
  }
}
