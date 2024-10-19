import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import "package:general_lib_flutter/general_lib_flutter.dart";

typedef DecorationBuilderGeneralFrameworkWidget = Decoration Function(BuildContext context, BoxDecoration decoration);

class MenuContainerBuilderGeneralFrameworkWidget extends StatelessWidget {
  final bool isLoading;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Clip? clipBehavior;
  final DecorationBuilderGeneralFrameworkWidget decorationBuilder;
  final WidgetBuilder builder;
  const MenuContainerBuilderGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    required this.width,
    required this.height,
    required this.constraints,
    required this.transform,
    required this.transformAlignment,
    required this.margin,
    required this.decorationBuilder,
    required this.padding,
    required this.clipBehavior,
    required this.builder,
  });

  static Decoration decorationBuilderDefault(BuildContext context, BoxDecoration decoration) {
    return decoration;
  }

  @override
  Widget build(BuildContext context) {
    return SkeletonizerGeneralFramework(
      enabled: isLoading,
      child: Container(
        width: width,
        height: height,
        constraints: constraints,
        transform: transform,
        transformAlignment: transformAlignment,
        margin: margin ?? const EdgeInsets.all(10),
        padding: padding,
        decoration: decorationBuilder(
          context,
          BoxDecoration(
            color: context.theme.primaryColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: context.theme.shadowColor.withAlpha(110),
                spreadRadius: 2.5,
                blurRadius: 3,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
        ),
        clipBehavior: clipBehavior ?? Clip.antiAlias,
        child: builder(context),
      ),
    );
  }
}

class MenuContainerGeneralFrameworkWidget extends StatelessWidget {
  final bool isLoading;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;

  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Clip? clipBehavior;
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> Function(BuildContext context) menuBuilder;
  const MenuContainerGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    this.width,
    this.height,
    this.constraints,
    this.transform,
    this.transformAlignment,
    this.margin,
    this.padding,
    this.clipBehavior,
    this.decorationBuilder,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    required this.menuBuilder,
  });
  static TextStyle textStyleBuilderDefault(BuildContext context, TextStyle textStyle) {
    return textStyle;
  }

  static Widget lisTile({
    required BuildContext context,
    Widget? leading,
    Widget? trailing,
    bool isSelected = false,
    EdgeInsetsGeometry? contentPadding,
    required String title,
    String subtitle = "",
    TextOverflow? subtitleTextOverflow,
    int? subtitleMaxLines,
    void Function()? onLongPress,
    void Function()? onTap,
    TextStyle Function(BuildContext context, TextStyle textStyle)? textStyleBuilder,
  }) {
    return MaterialButton(
      onLongPress: onLongPress,
      onPressed: onTap,
      color: (isSelected) ? context.theme.highlightColor : null,
      child: ListTile(
        contentPadding: contentPadding ?? const EdgeInsets.only(),
        leading: leading,
        title: Text(
          title,
          style: (textStyleBuilder ?? textStyleBuilderDefault).call(context, (context.theme.textTheme.bodyMedium ?? const TextStyle().copyWith(color: context.theme.indicatorColor))),
        ),
        subtitle: () {
          if (subtitle.trim().isNotEmpty) {
            return Text(
              subtitle.trim(),
              style: (textStyleBuilder ?? textStyleBuilderDefault).call(context, (context.theme.textTheme.bodySmall ?? const TextStyle().copyWith(color: context.theme.hintColor))),
              overflow: subtitleTextOverflow ?? TextOverflow.ellipsis,
              maxLines: subtitleMaxLines,
            );
          }
          return null;
        }(),
        trailing: trailing,
      ),
    );
  }

  static Widget title({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
    AlignmentGeometry alignment = Alignment.center,
    required String title,
    TextStyle Function(BuildContext context, TextStyle textStyle)? textStyleBuilder,
    TextOverflow? textOverflow,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(10),
      child: Align(
        alignment: alignment,
        child: Text(
          title,
          style: (textStyleBuilder ?? textStyleBuilderDefault).call(context, (context.theme.textTheme.titleSmall ?? const TextStyle().copyWith(color: context.theme.indicatorColor))),
          overflow: textOverflow,
        ),
      ),
    );
  }

  static Widget divider({
    required BuildContext context,
  }) {
    return Divider(
      color: context.theme.dividerColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MenuContainerBuilderGeneralFrameworkWidget(
      isLoading: isLoading,
      width: width,
      height: height,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      margin: margin,
      decorationBuilder: decorationBuilder ?? MenuContainerBuilderGeneralFrameworkWidget.decorationBuilderDefault,
      padding: padding,
      clipBehavior: clipBehavior,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          children: menuBuilder(context),
        );
      },
    );
  }
}
