import 'package:app_ui_template_general_framework/page/home/home.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:general_lib_flutter/widget/widget.dart';
import "package:general_lib/general_lib.dart";
import 'package:simulate/simulate_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Simulate.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static GeneralLibFlutterApp generalLibFlutterApp = GeneralLibFlutterApp();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: generalLibFlutterApp,
      builder: (themeMode, lightTheme, darkTheme, widget) {
        final MaterialApp child = MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: darkTheme,
          theme: lightTheme,
          themeMode: themeMode,
          onUnknownRoute: route.toOnUnknownRoute,
          initialRoute: "/",
          routes: route.toRoutes(),
        );

        if (Dart.isDebug) {
          if (Dart.isDesktop) {
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
      return const HomePage();
    },
    onRoute: () {
      return {
        "/": (context, data) {
          return const HomePage();
        },
        "/settings": (context, data) {
          return const HomePage();
        },
        "/sign": (context, data) {
          return const HomePage();
        },
      };
    },
  );
}
