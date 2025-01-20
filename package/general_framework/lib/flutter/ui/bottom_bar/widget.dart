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
class BottomBarGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final BoxConstraints? constraints;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final AlignmentGeometry? alignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation
  final double? height;

  /// UncompleteDocumentation
  final double? width;

  /// UncompleteDocumentation
  final bool isAddBottomBarPadding;

  /// UncompleteDocumentation
  final WidgetBuilder? topBuilder;

  /// UncompleteDocumentation
  final WidgetBuilder builder;

  /// UncompleteDocumentation
  const BottomBarGeneralFrameworkWidget({
    super.key,
    this.height,
    this.constraints,
    this.width,
    this.isAddBottomBarPadding = false,
    // required this.builder,
    this.decorationBuilder,
    this.alignment,
    this.padding,
    this.margin,
    this.clipBehavior = Clip.none,
    this.topBuilder,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final BoxConstraints? constraints = this.constraints;
    if (constraints != null) {
      return ConstrainedBox(
        constraints: constraints,
        child: Builder(
          builder: (context) {
            return bodyBuilder(context: context);
          },
        ),
      );
    }
    return bodyBuilder(context: context);
  }

  /// UncompleteDocumentation

  Widget bodyBuilder({required BuildContext context}) {
    final WidgetBuilder? topBuilder = this.topBuilder;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (topBuilder != null) ...[
          topBuilder(context),
        ],
        Flexible(
          child: Container(
            margin: margin,
            height: height,
            width: width ?? context.width,
            padding: padding,
            clipBehavior: clipBehavior,
            alignment: alignment,
            decoration: (decorationBuilder ??
                    decorationBuilderGeneralFrameworkWidgetDefault)
                .call(
              context,
              BoxDecoration(
                color: context.theme.appBarTheme.backgroundColor,
              ),
            ),
            child: builder(context),
          ),
        ),
        if (isAddBottomBarPadding) ...[
          SizedBox(
            height: context.mediaQueryData.padding.bottom,
          ),
        ],
      ],
    );
  }
}
