import 'package:general_framework_docs/app.dart';
import 'package:general_framework_docs/landing/landing.dart';
import 'package:general_framework_docs/page/account/account.dart';
import 'package:general_framework_docs/page/chat/chat.dart';
import 'package:general_framework_docs/page/home/home.dart';
import 'package:general_framework_docs/page/settings/settings.dart';
import 'package:general_framework_docs/page/sign/sign.dart';
import 'package:general_framework_docs/page/story/story.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:general_lib_flutter/widget/widget.dart';
import "package:general_lib/general_lib.dart";
import 'package:simulate/simulate_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Simulate.ensureInitialized();

  runApp(GeneralFrameworkDocsMain());
}

class GeneralFrameworkDocsMain extends StatelessWidget {
  static GeneralLibFlutterApp generalLibFlutterApp = GeneralLibFlutterApp();
  GeneralFrameworkDocsMain({super.key});

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
      return const GeneralFrameworkDocs();
    },
    onRoute: () {
      return {
        "/": (context, data) {
          return const GeneralFrameworkDocs();
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

