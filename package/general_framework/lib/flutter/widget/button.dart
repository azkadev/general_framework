import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class ButtonGeneralFrameworkWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final Clip clipBehavior;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool value)? onHighlightChanged;
  final Widget child;
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
