import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class ButtonGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? borderRadius;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final void Function()? onLongPress;

  /// UncompleteDocumentation
  final void Function(bool value)? onHighlightChanged;

  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  const ButtonGeneralFrameworkWidget({
    super.key,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.color,
    this.borderRadius,
    this.clipBehavior = Clip.antiAlias,
    this.onPressed,
    this.onHighlightChanged,
    this.onLongPress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? context.theme.primaryColor,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      clipBehavior: clipBehavior,
      child: MaterialButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHighlightChanged: onHighlightChanged,
        // padding: EdgeInsets.all(10),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
