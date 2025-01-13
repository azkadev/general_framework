import 'package:flutter/material.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class BottomBarGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final AlignmentGeometry? alignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final bool isAddBottomBarPadding;

  /// UncompleteDocumentation
  final WidgetBuilder? topBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder builder;

  /// UncompleteDocumentation
  const BottomBarGeneralFrameworkWidget({
    super.key,
    this.height,
    this.constraints,
    this.width,
    this.isAddBottomBarPadding = false,
    // required this.builder,
    this.decorationBuilder,
    this.alignment,
    this.padding,
    this.margin,
    this.clipBehavior = Clip.none,
    this.topBuilder,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final BoxConstraints? constraints = this.constraints;
    if (constraints != null) {
      return ConstrainedBox(
        constraints: constraints,
        child: Builder(
          builder: (context) {
            return bodyBuilder(context: context);
          },
        ),
      );
    }
    return bodyBuilder(context: context);
  }

  /// UncompleteDocumentation

  Widget bodyBuilder({required BuildContext context}) {
    final WidgetBuilder? topBuilder = this.topBuilder;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (topBuilder != null) ...[
          topBuilder(context),
        ],
        Flexible(
          child: Container(
            margin: margin,
            height: height,
            width: width ?? context.width,
            padding: padding,
            clipBehavior: clipBehavior,
            alignment: alignment,
            decoration: (decorationBuilder ??
                    decorationBuilderGeneralFrameworkWidgetDefault)
                .call(
              context,
              BoxDecoration(
                color: context.theme.appBarTheme.backgroundColor,
              ),
            ),
            child: builder(context),
          ),
        ),
        if (isAddBottomBarPadding) ...[
          SizedBox(
            height: context.mediaQueryData.padding.bottom,
          ),
        ],
      ],
    );
  }
}
