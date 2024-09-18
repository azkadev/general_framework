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
