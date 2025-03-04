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
