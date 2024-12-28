import 'package:flutter/material.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class BottomBarGeneralFrameworkWidget extends StatelessWidget {
  final BoxConstraints? constraints;
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Clip clipBehavior;
  final double? height;
  final double? width;
  final bool isAddBottomBarPadding;
  final WidgetBuilder? topBuilder;
  final WidgetBuilder builder;
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
