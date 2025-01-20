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
// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_framework/flutter/ui/ui.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// UncompleteDocumentation
typedef ButtonFlexibleGeneralFrameworkWidgetButton = void Function(
    BuildContext context, ButtonFlexibleDataGeneralFramework button);

/// UncompleteDocumentation
class ButtonFlexibleDataGeneralFramework {
  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final String url;

  /// UncompleteDocumentation
  final String callback_data;

  /// UncompleteDocumentation
  const ButtonFlexibleDataGeneralFramework({
    required this.title,
    required this.url,
    required this.callback_data,
  });

  /// UncompleteDocumentation
  ButtonFlexibleDataGeneralFramework copyWith({
    String? title,
    String? url,
    String? callback_data,
  }) {
    return ButtonFlexibleDataGeneralFramework(
      title: title ?? this.title,
      url: url ?? this.url,
      callback_data: callback_data ?? this.callback_data,
    );
  }
}

/// UncompleteDocumentation

class ButtonFlexibleGeneralFramework {
  /// UncompleteDocumentation
  final List<List<ButtonFlexibleDataGeneralFramework>> buttons;

  /// UncompleteDocumentation
  const ButtonFlexibleGeneralFramework({
    required this.buttons,
  });
}

/// UncompleteDocumentation

class ButtonFlexibleGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final ButtonFlexibleGeneralFramework button;

  /// UncompleteDocumentation
  final ButtonFlexibleGeneralFrameworkWidgetButton? onPressed;

  /// UncompleteDocumentation
  final ButtonFlexibleGeneralFrameworkWidgetButton? onLongPressed;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final BorderRadiusGeometry? borderRadius;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation

  final bool isWithBorder;

  /// UncompleteDocumentation
  final bool isWithBoxShadows;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  const ButtonFlexibleGeneralFrameworkWidget({
    super.key,
    required this.button,
    this.onPressed,
    this.onLongPressed,
    this.decorationBuilder,
    this.color,
    this.isLoading = false,
    this.isWithBoxShadows = true,
    this.isWithBorder = true,
    this.clipBehavior = Clip.antiAlias,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final List<
                ButtonFlexibleDataGeneralFramework> inline_keyboard_column
            in button.buttons) ...[
          () {
            return Row(
              children: [
                for (final ButtonFlexibleDataGeneralFramework inlineKeyboardData
                    in inline_keyboard_column) ...[
                  () {
                    return Expanded(
                      child: ButtonContainerMaterialGeneralFrameworkWidget(
                        width: context.width,
                        margin: padding ?? const EdgeInsets.all(2),
                        borderRadius: borderRadius ?? BorderRadius.circular(5),
                        isWithBorder: isWithBorder,
                        isWithBoxShadows: isWithBoxShadows,
                        color: color,
                        clipBehavior: clipBehavior,
                        decorationBuilder: decorationBuilder,
                        onLongPress: () {
                          (onLongPressed ?? onLongPressedDefault)
                              .call(context, inlineKeyboardData);
                        },
                        onPressed: () {
                          (onPressed ?? onPressedDefault)
                              .call(context, inlineKeyboardData);
                        },
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              inlineKeyboardData.title,
                              style: context.theme.textTheme.titleSmall,
                            ),
                          );
                        },
                      ),
                    );
                  }(),
                ],
              ],
            );
          }(),
        ],
      ],
    );
  }

  /// UncompleteDocumentation

  static void onLongPressedDefault(BuildContext context,
      ButtonFlexibleDataGeneralFramework inlineKeyboardData) {}

  /// UncompleteDocumentation
  static void onPressedDefault(BuildContext context,
      ButtonFlexibleDataGeneralFramework inlineKeyboardData) {
    if (inlineKeyboardData.url.trim().isNotEmpty) {
      context.showAlertGeneralFramework(
        alertGeneralFrameworkOptions: AlertGeneralFrameworkOptions(
          title: "Apakah anda yakin?",
          onCancelPressed: (context, alertGeneralFrameworkOptions) {
            launchUrlString(
              inlineKeyboardData.url,
            );
          },
          builder: (context, _) {
            return "Open: ${inlineKeyboardData.url}".trim();
          },
        ),
      );
      return;
    }
    if (inlineKeyboardData.callback_data.trim().isNotEmpty) {}
  }
}
