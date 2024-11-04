import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/extension/build_context.dart';

class ButtonContainerMaterialGeneralFrameworkWidget extends StatelessWidget {
  final double? height;
  final double? width;

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  final Clip clipBehavior;
  final Color? color;

  final bool isWithBorder;
  final bool isWithBoxShadows;
  final bool isLoading;
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool value)? onHighlightChanged;
  final WidgetBuilder builder;
  const ButtonContainerMaterialGeneralFrameworkWidget({
    super.key,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.borderRadius,
    this.clipBehavior = Clip.antiAlias,
    this.isWithBorder = false,
    this.isWithBoxShadows = false,
    this.isLoading = false,
    this.color,
    this.onPressed,
    this.onHighlightChanged,
    this.onLongPress,
    this.decorationBuilder,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      clipBehavior: clipBehavior,
      decoration: (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
        context,
        BoxDecoration(
          color: color ?? context.theme.primaryColor,
          borderRadius: borderRadius,
          border: isWithBorder ? context.extensionGeneralLibFlutterBorderAll() : null,
          boxShadow: isWithBorder ? context.extensionGeneralLibFlutterBoxShadows() : null,
        ),
      ),
      child: () {
        final child = MaterialButton(
          clipBehavior: clipBehavior,
          padding: padding ?? const EdgeInsets.all(0),
          onPressed: onPressed,
          
          minWidth: 0,
          onHighlightChanged: onHighlightChanged,
          highlightColor: Colors.transparent,
          onLongPress: onLongPress,
          child: builder(context),
        );
        if (isLoading) {
          return SkeletonizerGeneralFramework(
            enabled: isLoading,
            child: child,
          );
        }
        return child;
      }(),
    );
  }
}
