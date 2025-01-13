import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/extension/build_context.dart';

/// UncompleteDocumentation
class ButtonContainerMaterialGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation

  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? borderRadius;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation

  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isWithBoxShadows;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation

  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final void Function()? onLongPress;

  /// UncompleteDocumentation
  final void Function(bool value)? onHighlightChanged;

  /// UncompleteDocumentation
  final WidgetBuilder builder;

  /// UncompleteDocumentation
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
      decoration:
          (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault)
              .call(
        context,
        BoxDecoration(
          color: color ?? context.theme.primaryColor,
          borderRadius: borderRadius,
          border: isWithBorder
              ? context.extensionGeneralLibFlutterBorderAll()
              : null,
          boxShadow: isWithBorder
              ? context.extensionGeneralLibFlutterBoxShadows()
              : null,
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
