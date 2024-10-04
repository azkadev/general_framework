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
import 'package:general_lib_flutter/general_lib_flutter.dart';

class TextFormFieldGeneralFrameworkWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData prefixIconData;
  final Color color;
  final TextEditingController? controller;
  final String? Function(String? data)? validator;
  final bool readOnly;
  final bool obscureText;
  final Widget? suffixIcon;
  final void Function(String value)? onChanged;
  const TextFormFieldGeneralFrameworkWidget({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIconData = Icons.people,
    this.color = Colors.white,
    this.controller,
    this.validator,
    this.readOnly = false,
    this.obscureText = false,
    this.suffixIcon,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: context.theme.indicatorColor,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      readOnly: readOnly,
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
      decoration: InputDecoration(
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
        prefixIcon: Icon(
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
        ),
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
    );
  }
}
