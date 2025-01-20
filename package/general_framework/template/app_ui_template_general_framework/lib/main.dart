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
import 'package:app_ui_template_general_framework/app.dart';
import 'package:app_ui_template_general_framework/landing/landing.dart';
import 'package:app_ui_template_general_framework/page/account/account.dart';
import 'package:app_ui_template_general_framework/page/chat/chat.dart';
import 'package:app_ui_template_general_framework/page/home/home.dart';
import 'package:app_ui_template_general_framework/page/settings/settings.dart';
import 'package:app_ui_template_general_framework/page/sign/sign.dart';
import 'package:app_ui_template_general_framework/page/story/story.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:general_lib_flutter/widget/widget.dart';
import "package:general_lib/general_lib.dart";
import 'package:simulate/simulate_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Simulate.ensureInitialized();

  runApp(AppUiTemplateGeneralFrameworkMain());
}

class AppUiTemplateGeneralFrameworkMain extends StatelessWidget {
  static GeneralLibFlutterApp generalLibFlutterApp = GeneralLibFlutterApp();
  AppUiTemplateGeneralFrameworkMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: generalLibFlutterApp,
      builder: (themeMode, lightTheme, darkTheme, widget) {
        final MaterialApp child = route.toMaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme,
          theme: lightTheme,
          themeMode: themeMode,
          initialRoute: "/",
        );
        if (Dart.isDebug) {
          if (Dart.isDesktop && Dart.isWeb == false) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              darkTheme: darkTheme,
              theme: lightTheme,
              themeMode: themeMode,
              home: SimulateApp(
                home: (context) {
                  return child;
                },
                generalLibFlutterApp: generalLibFlutterApp,
              ),
            );
          }
        }
        return child;
      },
    );
  }

  final RouteGeneralLibFlutter route = RouteGeneralLibFlutter(
    onUnknownRoute: (context, routeData) {
      return const AppUiTemplateGeneralFramework();
    },
    onRoute: () {
      return {
        "/": (context, data) {
          return const AppUiTemplateGeneralFramework();
        },
        "/landing": (context, data) {
          return const LandingPage();
        },
        "/account": (context, data) {
          return const AccountPage();
        },
        "/chat": (context, data) {
          return const ChatPage();
        },
        "/home": (context, data) {
          return const HomePage();
        },
        "/settings": (context, data) {
          return const SettingsPage();
        },
        "/sign": (context, data) {
          return const SignPage();
        },
        "/story": (context, data) {
          return const StoryPage();
        },
      };
    },
  );
}
