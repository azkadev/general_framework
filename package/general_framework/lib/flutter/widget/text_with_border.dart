import 'package:flutter/material.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class TextWithBorderGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  final TextAlign? textAlign;

  /// UncompleteDocumentation
  final double strokeWidth;

  /// UncompleteDocumentation
  final Color? strokeColor;

  /// UncompleteDocumentation
  final TextOverflow? overflow;

  /// UncompleteDocumentation
  final TextStyleBuilderGeneralFrameworkWidget? textStyleBuilder;

  /// UncompleteDocumentation
  const TextWithBorderGeneralFrameworkWidget({
    super.key,
    required this.text,
    this.strokeColor,
    this.strokeWidth = 6,
    this.textStyleBuilder,
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = (textStyleBuilder ??
            textStyleBuilderGeneralFrameworkWidgetDefault)
        .call(
            context,
            (context.theme.textTheme.titleMedium ?? const TextStyle()).copyWith(
              color: context.theme.indicatorColor,
              fontWeight: FontWeight.bold,
            ));
    return Stack(
      children: List.generate(
        2,
        (index) {
          return Text(
            text,
            style: () {
              if (index == 0) {
                final Paint foreground = Paint();
                foreground.style = PaintingStyle.stroke;
                foreground.strokeWidth = strokeWidth;
                foreground.color = strokeColor ?? Colors.black;
                return textStyle.copyWith(
                  color: null,
                  foreground: foreground,
                );
              }
              return textStyle;
            }(),
            textAlign: textAlign,
            overflow: overflow,
          );
        },
      ),
    );
  }
}
