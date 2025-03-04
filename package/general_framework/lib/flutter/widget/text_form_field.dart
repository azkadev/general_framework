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
class TextFormFieldGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final String? hintText;

  /// UncompleteDocumentation
  final String? labelText;

  /// UncompleteDocumentation
  final IconData prefixIconData;

  /// UncompleteDocumentation
  final Widget Function(BuildContext context, Widget child)? prefixIconBuilder;

  /// UncompleteDocumentation
  final InputDecorationBuilderGeneralFrameworkWidget? inputDecorationBuilder;

  /// UncompleteDocumentation
  final Color color;

  /// UncompleteDocumentation
  final TextEditingController? controller;

  /// UncompleteDocumentation
  final String? Function(String? data)? validator;

  /// UncompleteDocumentation
  final bool readOnly;

  /// UncompleteDocumentation
  final bool obscureText;

  /// UncompleteDocumentation
  final Widget? suffixIcon;

  /// UncompleteDocumentation
  final void Function(String value)? onChanged;

  /// UncompleteDocumentation
  final int? minLines;

  /// UncompleteDocumentation
  final int? maxLength;

  /// UncompleteDocumentation
  final int? maxLines;

  /// UncompleteDocumentation
  final bool autofocus;

  /// UncompleteDocumentation
  final FocusNode? focusNode;

  /// UncompleteDocumentation
  final TextInputType? keyboardType;

  /// UncompleteDocumentation
  const TextFormFieldGeneralFrameworkWidget({
    super.key,
    this.keyboardType,
    this.autofocus = false,
    this.focusNode,
    this.minLines,
    this.maxLength,
    this.maxLines = 1,
    this.hintText,
    this.labelText,
    this.prefixIconBuilder,
    this.prefixIconData = Icons.people,
    this.color = Colors.white,
    this.controller,
    this.validator,
    this.readOnly = false,
    this.obscureText = false,
    this.suffixIcon,
    this.inputDecorationBuilder,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      focusNode: focusNode,
      cursorColor: context.theme.indicatorColor,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      readOnly: readOnly,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLength: maxLength,
      maxLines: maxLines,
      obscureText: obscureText,
      style: TextStyle(
        shadows: [
          BoxShadow(
            color: context.theme.shadowColor.withAlpha(110),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      onChanged: onChanged,
      clipBehavior: Clip.antiAlias,
      decoration: (inputDecorationBuilder ?? inputDecorationBuilderGeneralFrameworkWidgetDefault)(
        context,
        InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          hintText: hintText,
          labelText: labelText,
          labelStyle: context.theme.textTheme.labelSmall,
          hintStyle: TextStyle(
            fontSize: 14.0,
            shadows: [
              BoxShadow(
                color: context.theme.shadowColor.withAlpha(110),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          prefixIcon: () {
            final Widget child = Icon(
              prefixIconData,
              color: context.theme.indicatorColor,
              size: 18,
              shadows: [
                BoxShadow(
                  color: context.theme.shadowColor.withAlpha(110),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            );
            final prefixIconBuilder = this.prefixIconBuilder;
            if (prefixIconBuilder != null) {
              return prefixIconBuilder(context, child);
            }
            return child;
          }(),
          suffixIcon: suffixIcon,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.focusColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.focusColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          floatingLabelStyle: context.theme.textTheme.labelMedium,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.focusColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.focusColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.indicatorColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
