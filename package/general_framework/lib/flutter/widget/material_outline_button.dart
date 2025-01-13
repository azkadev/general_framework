import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class MaterialOutlineGeneralFrameworkBuilderGeneralWidget
    extends StatelessWidget {
  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final EdgeInsets margin;

  /// UncompleteDocumentation
  final BorderRadius borderRadius;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  const MaterialOutlineGeneralFrameworkBuilderGeneralWidget({
    super.key,
    this.color,
    this.height = 50,
    this.width,
    required this.constraints,
    required this.margin,
    required this.borderRadius,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color ?? context.theme.scaffoldBackgroundColor,
        border: context.extensionGeneralLibFlutterBorderAll(),
        boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
      ),
      clipBehavior: Clip.antiAlias,
      child: SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: child,
      ),
    );
  }
}

/// UncompleteDocumentation
class MaterialOutlineGeneralFrameworkButtonBuilderGeneralWidget
    extends StatelessWidget {
  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final EdgeInsets margin;

  /// UncompleteDocumentation
  final BorderRadius borderRadius;

  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  const MaterialOutlineGeneralFrameworkButtonBuilderGeneralWidget({
    super.key,
    this.color,
    this.width,
    this.height = 50,
    this.constraints,
    required this.margin,
    required this.borderRadius,
    required this.child,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialOutlineGeneralFrameworkBuilderGeneralWidget(
      color: color,
      width: width,
      height: height,
      margin: margin,
      constraints: constraints,
      borderRadius: borderRadius,
      isLoading: isLoading,
      child: MaterialButton(
        clipBehavior: Clip.antiAlias,
        minWidth: 0,
        onPressed: onPressed,
        highlightColor: Colors.transparent,
        child: child,
      ),
    );
  }
}

/// UncompleteDocumentation
class MaterialOutlineGeneralFrameworkButtonGeneralWidget
    extends StatelessWidget {
  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final EdgeInsets margin;

  /// UncompleteDocumentation
  final BorderRadius borderRadius;

  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  const MaterialOutlineGeneralFrameworkButtonGeneralWidget({
    super.key,
    this.color,
    this.width,
    this.height = 50,
    this.constraints,
    required this.margin,
    required this.borderRadius,
    required this.text,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialOutlineGeneralFrameworkButtonBuilderGeneralWidget(
      color: color,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      borderRadius: borderRadius,
      isLoading: isLoading,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: context.theme.indicatorColor,
          shadows: [
            BoxShadow(
              color: context.theme.shadowColor.withAlpha(110),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
