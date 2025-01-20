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

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/widget/text_form_field.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

enum SignPageType {
  sign_in,
  sign_up,
  reset,
}

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  SignPageType signPageType = SignPageType.sign_in;
  final TextEditingController username_text_editing_controller =
      TextEditingController();
  final TextEditingController password_text_editing_controller =
      TextEditingController();
  final TextEditingController new_password_text_editing_controller =
      TextEditingController();
  final TextEditingController secret_words_text_editing_controller =
      TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    username_text_editing_controller.dispose();
    password_text_editing_controller.dispose();
    new_password_text_editing_controller.dispose();
    secret_words_text_editing_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign"),
        backgroundColor: context.theme.primaryColor,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height -
                context.mediaQueryData.padding.top -
                context.mediaQueryData.padding.bottom,
            minWidth: context.width,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.mediaQueryData.padding.top,
              ),
              if (signPageType == SignPageType.sign_in) ...[
                usernameFormWidget(),
                passwordFormWidget(),
              ] else if (signPageType == SignPageType.sign_up) ...[
                usernameFormWidget(),
                newPasswordFormWidget(),
              ] else if (signPageType == SignPageType.reset) ...[
                usernameFormWidget(),
                newPasswordFormWidget(),
              ],
              ButtonGeneralFrameworkWidget(
                width: context.width,
                onPressed: () {
                  onSignPressed();
                },
                child: Text(
                  signPageType.name
                      .split("_")
                      .map((e) => e.toLowerCase().toUpperCaseFirstData())
                      .join(" "),
                ),
              ),
              SizedBox(
                height: context.mediaQueryData.padding.bottom,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignPressed() {
    context.routerGeneralLibFlutter().pushReplacementNamed(routeName: "/home");
  }

  Widget usernameFormWidget() {
    return textFormFieldWidget(
      controller: username_text_editing_controller,
      labelText: "Username",
      hintText: "username",
    );
  }

  Widget passwordFormWidget() {
    return textFormFieldWidget(
        controller: password_text_editing_controller,
        labelText: "Password",
        hintText: "password 121301301 0");
  }

  Widget newPasswordFormWidget() {
    return textFormFieldWidget();
  }

  Widget secretWordsFormWidget() {
    return textFormFieldWidget(
      controller: secret_words_text_editing_controller,
    );
  }

  Widget textFormFieldWidget({
    EdgeInsetsGeometry? padding,
    String? hintText,
    String? labelText,
    IconData prefixIconData = Icons.people,
    Color color = Colors.white,
    TextEditingController? controller,
    String? Function(String?)? validator,
    bool readOnly = false,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(10),
      child: TextFormFieldGeneralFrameworkWidget(
        labelText: labelText,
        hintText: hintText,
        controller: controller,
        onChanged: (value) {},
      ),
    );
  }
}
