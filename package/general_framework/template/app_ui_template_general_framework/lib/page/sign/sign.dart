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
