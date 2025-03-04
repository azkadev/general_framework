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
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class TextWithBorderGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  final TextAlign? textAlign;

  /// UncompleteDocumentation
  final double strokeWidth;

  /// UncompleteDocumentation
  final Color? strokeColor;

  /// UncompleteDocumentation
  final TextOverflow? overflow;

  /// UncompleteDocumentation
  final TextStyleBuilderGeneralFrameworkWidget? textStyleBuilder;

  /// UncompleteDocumentation
  const TextWithBorderGeneralFrameworkWidget({
    super.key,
    required this.text,
    this.strokeColor,
    this.strokeWidth = 6,
    this.textStyleBuilder,
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = (textStyleBuilder ?? textStyleBuilderGeneralFrameworkWidgetDefault).call(
        context,
        (context.theme.textTheme.titleMedium ?? const TextStyle()).copyWith(
          color: context.theme.indicatorColor,
          fontWeight: FontWeight.bold,
        ));
    return Stack(
      children: List.generate(
        2,
        (index) {
          return Text(
            text,
            style: () {
              if (index == 0) {
                final Paint foreground = Paint();
                foreground.style = PaintingStyle.stroke;
                foreground.strokeWidth = strokeWidth;
                foreground.color = strokeColor ?? Colors.black;
                return textStyle.copyWith(
                  color: null,
                  foreground: foreground,
                );
              }
              return textStyle;
            }(),
            textAlign: textAlign,
            overflow: overflow,
          );
        },
      ),
    );
  }
}
