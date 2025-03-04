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
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
enum StoriesGeneralFrameworkWidgetStyle {
  /// UncompleteDocumentation
  pofileInStories,
}

/// UncompleteDocumentation
class StoriesGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final StoriesGeneralFrameworkWidgetStyle storiesGeneralFrameworkWidgetStyle;

  /// UncompleteDocumentation
  final dynamic content;

  /// UncompleteDocumentation
  final dynamic profile;

  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? profileBuilder;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? titleBuilder;

  /// UncompleteDocumentation
  final WidgetBuilderGeneralFrameworkWidget? contentBuilder;

  /// UncompleteDocumentation
  final void Function()? profileOnPressed;

  /// UncompleteDocumentation
  final void Function()? onPressed;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? borderRadius;

  /// UncompleteDocumentation
  final bool isWithBlur;

  /// UncompleteDocumentation
  final bool profileIsUseShadow;

  /// UncompleteDocumentation
  final bool profileIsWithBorder;

  /// UncompleteDocumentation
  final bool isUseShadow;

  /// UncompleteDocumentation
  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation

  final ImageFilter? blurFilter;

  /// UncompleteDocumentation
  final BlendMode blurBlendMode;

  /// UncompleteDocumentation
  final ColorFilter? contentColorFilter;

  /// UncompleteDocumentation
  const StoriesGeneralFrameworkWidget({
    super.key,
    this.blurFilter,
    this.contentColorFilter,
    this.blurBlendMode = BlendMode.srcOver,
    this.isWithBlur = false,
    this.isLoading = false,
    this.profileIsUseShadow = true,
    this.profileIsWithBorder = true,
    this.contentBuilder,
    this.borderRadius,
    this.titleBuilder,
    this.profileBuilder,
    this.isUseShadow = true,
    this.profileOnPressed,
    this.isWithBorder = true,
    required this.profile,
    required this.title,
    required this.content,
    required this.onPressed,
    required this.storiesGeneralFrameworkWidgetStyle,
  });
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

  /// UncompleteDocumentation

  Widget body(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        (contentBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
          context,
          ProfilePictureGeneralFrameworkWidget(
            margin: const EdgeInsets.all(1),
            isUseShadow: isUseShadow,
            isWithBorder: isWithBorder,
            borderRadius: borderRadius,
            pathImage: content,
            width: context.width,
            height: context.height,
            onPressed: onPressed,
            colorFilter: contentColorFilter ?? const ColorFilter.mode(Color.fromARGB(100, 0, 0, 0), BlendMode.srcOver),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                (profileBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
                  context,
                  ProfilePictureGeneralFrameworkWidget(
                    isUseShadow: profileIsUseShadow,
                    isWithBorder: profileIsWithBorder,
                    pathImage: profile,
                    nick_name: title,
                    width: 35,
                    height: 35,
                    onPressed: profileOnPressed,
                  ),
                ),
                (titleBuilder ?? widgetBuilderGeneralFrameworkWidgetDefault).call(
                  context,
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      title,
                      style: (context.theme.textTheme.titleSmall ?? const TextStyle()).copyWith(
                        shadows: context.extensionGeneralLibFlutterShadows(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
