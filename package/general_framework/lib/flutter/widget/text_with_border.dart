import 'package:flutter/material.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class TextWithBorderGeneralFrameworkWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double strokeWidth;
  final Color? strokeColor;
  final TextOverflow? overflow;
  final TextStyleBuilderGeneralFrameworkWidget? textStyleBuilder;
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
