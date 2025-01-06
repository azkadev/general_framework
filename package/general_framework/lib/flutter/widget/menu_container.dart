import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import "package:general_lib_flutter/general_lib_flutter.dart";

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
  final bool isWithBorder;
  final bool isWithShadow;
  const MenuContainerBuilderGeneralFrameworkWidget({
    super.key,
    required this.isWithBorder,
    required this.isWithShadow,
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

  @override
  Widget build(BuildContext context) {
    final child = Container(
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
          border: () {
            if (isWithBorder) {
              return context.extensionGeneralLibFlutterBorderAll();
            }
            return null;
          }(),
          boxShadow: () {
            if (isWithShadow) {
              return context.extensionGeneralLibFlutterBoxShadows();
            }
            return null;
          }(),
        ),
      ),
      clipBehavior: clipBehavior ?? Clip.antiAlias,
      child: builder(context),
    );
    if (isLoading == false) {
      return child;
    }
    return SkeletonizerGeneralFramework(
      enabled: isLoading,
      child: child,
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
  final Axis axis;
  final MainAxisSize mainAxisSize;
  final bool isWithBorder;
  final bool isWithShadow;
  final WidgetBuilderGeneralFrameworkWidget? builder;
  const MenuContainerGeneralFrameworkWidget({
    super.key,
    this.mainAxisSize = MainAxisSize.min,
    this.axis = Axis.vertical,
    this.isWithBorder = true,
    this.isWithShadow = true,
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
    this.builder,
  });
  static TextStyle textStyleBuilderDefault(
      BuildContext context, TextStyle textStyle) {
    return textStyle;
  }

  static Widget titleBuilderDefault(BuildContext context, Text child) {
    return child;
  }

  static Widget lisTile({
    required BuildContext context,
    bool isLoading = false,
    Widget? leading,
    Widget? trailing,
    bool isSelected = false,
    EdgeInsetsGeometry? contentPadding,
    required String title,
    Widget Function(BuildContext context, Text child)? titleBuilder,
    String subtitle = "",
    TextOverflow? subtitleTextOverflow,
    int? subtitleMaxLines,
    void Function()? onLongPress,
    void Function()? onTap,
    TextStyle Function(BuildContext context, TextStyle textStyle)?
        textStyleBuilder,
  }) {
    final child = MaterialButton(
      onLongPress: onLongPress,
      onPressed: onTap,
      color: (isSelected) ? context.theme.highlightColor : null,
      highlightColor: Colors.transparent,
      child: ListTile(
        contentPadding: contentPadding ?? const EdgeInsets.only(),
        leading: leading,
        title: (titleBuilder ?? titleBuilderDefault).call(
          context,
          Text(
            title,
            style: (textStyleBuilder ?? textStyleBuilderDefault).call(
                context,
                (context.theme.textTheme.bodyMedium ??
                    const TextStyle()
                        .copyWith(color: context.theme.indicatorColor))),
          ),
        ),
        subtitle: () {
          if (subtitle.trim().isNotEmpty) {
            return Text(
              subtitle.trim(),
              style: (textStyleBuilder ?? textStyleBuilderDefault).call(
                  context,
                  (context.theme.textTheme.bodySmall ??
                      const TextStyle()
                          .copyWith(color: context.theme.hintColor))),
              overflow: subtitleTextOverflow ?? TextOverflow.ellipsis,
              maxLines: subtitleMaxLines,
            );
          }
          return null;
        }(),
        trailing: trailing,
      ),
    );
    if (isLoading) {
      return SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: child,
      );
    }
    return child;
  }

  static Widget title({
    required BuildContext context,
    EdgeInsetsGeometry? padding,
    AlignmentGeometry alignment = Alignment.center,
    required String title,
    TextStyle Function(BuildContext context, TextStyle textStyle)?
        textStyleBuilder,
    TextOverflow? textOverflow,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(10),
      child: Align(
        alignment: alignment,
        child: Text(
          title,
          style: (textStyleBuilder ?? textStyleBuilderDefault).call(
              context,
              (context.theme.textTheme.titleSmall ??
                  const TextStyle()
                      .copyWith(color: context.theme.indicatorColor))),
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
      decorationBuilder:
          decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault,
      padding: padding,
      clipBehavior: clipBehavior,
      builder: (context) {
        final Widget child = () {
          if (axis == Axis.horizontal) {
            return Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              children: menuBuilder(context),
            );
          }
          return Column(
            mainAxisSize: mainAxisSize,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            children: menuBuilder(context),
          );
        }();
        return (builder ?? widgetBuilderGeneralFrameworkWidgetDefault)(
            context, child);
      },
      isWithBorder: isWithBorder,
      isWithShadow: isWithShadow,
    );
  }
}
