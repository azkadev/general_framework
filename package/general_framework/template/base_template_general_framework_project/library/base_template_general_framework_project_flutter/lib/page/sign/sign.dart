// ignore_for_file: constant_identifier_names

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
import 'package:base_template_general_framework_project_client/api/api.dart';
import 'package:base_template_general_framework_project_flutter/client/core.dart';
import 'package:base_template_general_framework_project_flutter/page/home/home.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/widget/text_form_field.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

enum SignPageType {
  sign_in,
  sign_up,
  reset_password;

  String title() {
    return name.split("_").map((e) => e.toLowerCase().toUpperCaseFirstData()).join(" ");
  }
}

class SignPage extends BaseTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget {
  const SignPage({super.key, required super.generalFrameworkClientFlutter});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  SignPageType signPageType = SignPageType.sign_in;
  final TextEditingController usernameTextEditingController = TextEditingController();
  final TextEditingController passwordTextEditingController = TextEditingController();
  final TextEditingController newPasswordTextEditingController = TextEditingController();

  final TextEditingController secretWordsTextEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    usernameTextEditingController.dispose();
    passwordTextEditingController.dispose();
    newPasswordTextEditingController.dispose();
    secretWordsTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(signPageType.title()),
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        color: context.theme.indicatorColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.height,
              minWidth: context.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                usernameFieldWidget(),
                if (signPageType == SignPageType.sign_in) ...[
                  passwordFieldWidget(),
                ] else ...[
                  newPasswordFieldWidget(),
                ],
                Container(
                  width: context.width,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: context.theme.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: MaterialButton(
                    onPressed: () {
                      signButton();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(signPageType.title()),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.mediaQueryData.padding.bottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget usernameFieldWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormFieldGeneralFrameworkWidget(
        prefixIconData: Icons.person,
        controller: usernameTextEditingController,
        labelText: "Username",
        hintText: "username",
        onChanged: (value) {},
      ),
    );
  }

  Widget passwordFieldWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormFieldGeneralFrameworkWidget(
        prefixIconData: Icons.key,
        controller: passwordTextEditingController,
        labelText: "Password",
        hintText: "password",
        onChanged: (value) {},
      ),
    );
  }

  Widget newPasswordFieldWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormFieldGeneralFrameworkWidget(
        prefixIconData: Icons.key,
        controller: passwordTextEditingController,
        labelText: "Password",
        hintText: "password",
        onChanged: (value) {},
      ),
    );
  }

  Future<void> signButton() async {
    await Future(() async {
      final String username = usernameTextEditingController.text.trim();
      final String password = passwordTextEditingController.text.trim();
      final String newPassword = newPasswordTextEditingController.text.trim();
      final String secretWords = secretWordsTextEditingController.text.trim();
      if (username.isEmpty) {}
      if (signPageType == SignPageType.sign_in) {
        final res = await widget.generalFrameworkClientFlutter.generalFrameworkClient.api_signIn(
          signInParameters: SignIn.create(
            username: username,
            password: password,
          ),
        );
        res.rawData.printPretty();
        if (res.json_scheme_utils_checkDataIsSameBySpecialType()) {
          context.routerGeneralLibFlutter().pushAndRemoveUntil(
            newRoute: MaterialPageRoute(
              builder: (context) {
                return HomePage(generalFrameworkClientFlutter: widget.generalFrameworkClientFlutter);
              },
            ),
            routeName: "/",
            parameters: {},
          );
        }
      } else if (signPageType == SignPageType.sign_up) {
        await widget.generalFrameworkClientFlutter.generalFrameworkClient.api_signUp(
          signUpParameters: SignUp.create(
            username: username,
            password: newPassword,
          ),
        );
      } else if (signPageType == SignPageType.reset_password) {
        secretWords;
      }
    });
  }
}
