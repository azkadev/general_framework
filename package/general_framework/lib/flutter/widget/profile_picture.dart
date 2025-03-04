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
// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

// import 'package:hive_flutter/hive_flutter.dart';

import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/image/image_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter/material.dart';

/// UncompleteDocumentation
class ProfilePictureGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  final dynamic pathImage;

  /// UncompleteDocumentation
  final String nick_name;

  /// UncompleteDocumentation
  final double width;

  /// UncompleteDocumentation
  final double height;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? borderRadius;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final void Function()? onLongPress;

  /// UncompleteDocumentation
  final void Function(bool data)? onHighlightChanged;

  /// UncompleteDocumentation
  final bool isWithBorder;

  /// UncompleteDocumentation
  final void Function(Object e, StackTrace? stackTrace)? onError;

  /// UncompleteDocumentation
  final Widget Function(BuildContext context, Object error, StackTrace? stackTrace)? errorBuilder;

  /// UncompleteDocumentation
  final bool isUseShadow;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final ColorFilter? colorFilter;

  /// UncompleteDocumentation
  const ProfilePictureGeneralFrameworkWidget({
    super.key,
    this.colorFilter,
    this.isLoading = false,
    this.onError,
    this.color,
    this.margin,
    this.isUseShadow = true,
    this.isWithBorder = false,
    required this.pathImage,
    required this.width,
    required this.height,
    this.nick_name = "-",
    this.borderRadius,
    this.onLongPress,
    this.onHighlightChanged,
    this.errorBuilder,
    required this.onPressed,
  });

  /// UncompleteDocumentation
  Widget body(BuildContext context) {
    final decorationImageOrNull = ImageGeneralUiGeneralFramework.decorationImageOrNull(
      pathImage: pathImage,
      onError: onError,
      imageGeneralUiOptions: ImageGeneralUiGeneralFrameworkOptions(
        colorFilter: colorFilter,
        fit: BoxFit.cover,
      ),
    );
    final child = Container(
      height: height,
      width: width,
      margin: () {
        if (isWithBorder) {
          return null;
        }
        return margin;
      }(),
      decoration: BoxDecoration(
        color: color ?? context.theme.primaryColor,
        borderRadius: borderRadius ?? BorderRadius.circular(25),
        image: decorationImageOrNull,
        boxShadow: () {
          if (isWithBorder) {
            return null;
          }
          if (isUseShadow) {
            return context.extensionGeneralLibFlutterBoxShadows();
          }
          return null;
        }(),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        minWidth: 0,
        clipBehavior: Clip.antiAlias,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHighlightChanged: onHighlightChanged,
        highlightColor: Colors.transparent,
        child: () {
          if (decorationImageOrNull != null) {
            return null;
          }
          return Center(
            child: Text(
              nick_name.characters.firstOrNull ?? "-",
              style: context.theme.textTheme.titleSmall,
            ),
          );
        }(),
      ),
    );
    if (isWithBorder) {
      return Container(
        padding: const EdgeInsets.all(2),
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(25),
          border: context.extensionGeneralLibFlutterBorderAll(),
          boxShadow: isUseShadow ? context.extensionGeneralLibFlutterBoxShadows() : null,
        ),
        child: child,
      );
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    final child = body(context);
    if (isLoading) {
      return SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: child,
      );
    }
    return child;
  }
}
