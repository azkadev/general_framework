// ignore_for_file: empty_catches

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import "package:general_lib_flutter/general_lib_flutter.dart";

import 'glowy_borders/glowy_borders.dart';

/// UncompleteDocumentation
class MenuContainerBuilderGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final Matrix4? transform;

  /// UncompleteDocumentation
  final AlignmentGeometry? transformAlignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final Clip? clipBehavior;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget decorationBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder builder;

  /// UncompleteDocumentation
  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isWithShadow;

  /// UncompleteDocumentation
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

/// UncompleteDocumentation
class MenuContainerGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final Matrix4? transform;

  /// UncompleteDocumentation
  final AlignmentGeometry? transformAlignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final Clip? clipBehavior;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final MainAxisAlignment mainAxisAlignment;

  /// UncompleteDocumentation
  final CrossAxisAlignment crossAxisAlignment;

  /// UncompleteDocumentation
  final List<Widget> Function(BuildContext context) menuBuilder;

  /// UncompleteDocumentation
  final Axis axis;

  /// UncompleteDocumentation
  final MainAxisSize mainAxisSize;

  /// UncompleteDocumentation
  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isWithShadow;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? builder;

  /// UncompleteDocumentait
  final bool isGlowOutside;

  ///
  final double glowBorderSize;

  ///
  final double glowSize;

  ///
  final List<Color>? glowGradientColors;

  ///
  final BorderRadiusGeometry? glowBorderRadius;

  /// UncompleteDocumentation
  const MenuContainerGeneralFrameworkWidget({
    super.key,
    this.glowBorderRadius,
    this.glowBorderSize = 0,
    this.glowSize = 0,
    this.glowGradientColors,
    this.isGlowOutside = false,
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

  /// UncompleteDocumentation
  static TextStyle textStyleBuilderDefault(
      BuildContext context, TextStyle textStyle) {
    return textStyle;
  }

  /// UncompleteDocumentation
  static Widget titleBuilderDefault(BuildContext context, Text child) {
    return child;
  }

  /// UncompleteDocumentation
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

  /// UncompleteDocumentation
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

  /// UncompleteDocumentation
  static Widget divider({
    required BuildContext context,
  }) {
    return Divider(
      color: context.theme.dividerColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final decorationBuilder = this.decorationBuilder ??
        decorationBuilderGeneralFrameworkWidgetDefault;
    final child = MenuContainerBuilderGeneralFrameworkWidget(
      isLoading: isLoading,
      width: width,
      height: height,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      margin: margin,
      decorationBuilder: decorationBuilder,
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
    if (isGlowOutside) {
      final BorderRadiusGeometry glowBorderRadius = () {
        if (this.glowBorderRadius != null) {
          return this.glowBorderRadius ?? BorderRadius.zero;
        }
        try {
          return (decorationBuilder as BoxDecoration).borderRadius ??
              BorderRadius.zero;
        } catch (e) {}
        return BorderRadius.zero;
      }();
      return AnimatedGradientBorderGeneralFrameworkWidget(
        borderSize: glowBorderSize,
        glowSize: glowSize,
        gradientColors: glowGradientColors ??
            [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              // Colors.purple.shade50,
              Colors.red,
              Colors.green,
              Colors.blue,
            ],
        borderRadius: glowBorderRadius,
        child: child,
      );
    }
    return child;
  }
}

/// UncompleteDocumentation
class MenuContainerResponsiveGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final WidgetBuilder titleBuilder;

  /// UncompleteDocumentation
  final List<Widget> Function(BuildContext context) menuBuilder;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final Matrix4? transform;

  /// UncompleteDocumentation
  final AlignmentGeometry? transformAlignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final Clip? clipBehavior;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final MainAxisAlignment mainAxisAlignment;

  /// UncompleteDocumentation
  final CrossAxisAlignment crossAxisAlignment;

  /// UncompleteDocumentation
  final Axis axis;

  /// UncompleteDocumentation

  final MainAxisSize mainAxisSize;

  /// UncompleteDocumentation
  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isWithShadow;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? builder;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? wrapBuilder;

  /// UncompleteDocumentation
  const MenuContainerResponsiveGeneralFrameworkWidget({
    super.key,
    required this.isLoading,
    required this.titleBuilder,
    required this.menuBuilder,
    this.wrapBuilder,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.isWithBorder = true,
    this.isWithShadow = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.axis = Axis.vertical,
    this.builder,
    this.clipBehavior,
    this.constraints,
    this.decorationBuilder,
    this.height,
    this.margin,
    this.padding,
    this.transform,
    this.transformAlignment,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPortrait = context.orientation.isPortrait;
    if (isPortrait) {
      return contentWidget(
        isPortrait: isPortrait,
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        contentWidget(
          isPortrait: isPortrait,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            for (final element in menuBuilder(context)) ...[
              () {
                final wrapBuilderFunction = wrapBuilder;
                if (wrapBuilderFunction != null) {
                  return wrapBuilderFunction(context, element);
                }
                return SizedBox(
                  width: context.width / 5,
                  child: element,
                );
              }(),
            ],
          ],
        ),
      ],
    );
  }

  /// UncompleteDocumentation
  Widget contentWidget({
    required bool isPortrait,
  }) {
    return MenuContainerGeneralFrameworkWidget(
      isLoading: isLoading,
      axis: axis,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      isWithBorder: isWithBorder,
      isWithShadow: isWithShadow,
      crossAxisAlignment: crossAxisAlignment,
      builder: builder,
      width: width,
      height: height,
      transform: transform,
      transformAlignment: transformAlignment,
      decorationBuilder: decorationBuilder,
      margin: margin,
      padding: padding,
      clipBehavior: clipBehavior,
      constraints: constraints,
      menuBuilder: (context) {
        return [
          titleBuilder(context),
          if (isPortrait) ...[
            ...menuBuilder(context),
          ],
        ];
      },
    );
  }
}
