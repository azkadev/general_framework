import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class MaterialOutlineGeneralFrameworkBuilderGeneralWidget
    extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final Color? color;
  final Widget child;
  final bool isLoading;
  final BoxConstraints? constraints;
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

class MaterialOutlineGeneralFrameworkButtonBuilderGeneralWidget
    extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final Widget child;
  final bool isLoading;
  final void Function()? onPressed;
  final Color? color;
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

class MaterialOutlineGeneralFrameworkButtonGeneralWidget
    extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final String text;
  final bool isLoading;
  final void Function()? onPressed;
  final Color? color;
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
