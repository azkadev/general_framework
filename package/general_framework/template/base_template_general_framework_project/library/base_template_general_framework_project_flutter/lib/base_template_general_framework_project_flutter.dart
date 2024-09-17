// ignore_for_file: non_constant_identifier_names

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

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database_core.dart';
import 'package:base_template_general_framework_project_flutter/client/client.dart';
import 'package:base_template_general_framework_project_flutter/page/account/account.dart';
import 'package:base_template_general_framework_project_flutter/page/chat/chat.dart';
import 'package:base_template_general_framework_project_flutter/page/home/home.dart';
import 'package:base_template_general_framework_project_flutter/page/settings/settings.dart';
import 'package:base_template_general_framework_project_flutter/page/sign/sign.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret.dart';
import 'package:flutter/material.dart';
import 'package:general/flutter/general_flutter_core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:general_lib_flutter/widget/widget.dart';

class BaseTemplateGeneralFrameworkProjectFlutter {
  static final GeneralLibFlutterApp generalLibFlutterApp = GeneralLibFlutterApp();
  static final GeneralFlutter generalFlutter = GeneralFlutter();
  static late final BaseTemplateGeneralFrameworkProjectClientFlutter baseTemplateGeneralFrameworkProjectClientFlutter;

  static bool _is_initialized = false;

  static void ensureInitialized({
    required List<String> arguments,
    GlobalKey<NavigatorState>? navigatorKey,
    required BaseTemplateGeneralFrameworkProjectSecretClientSide baseTemplateGeneralFrameworkProjectSecretClientSide,
  }) {
    if (_is_initialized) {
      return;
    }
    WidgetsFlutterBinding.ensureInitialized();
    baseTemplateGeneralFrameworkProjectClientFlutter = BaseTemplateGeneralFrameworkProjectClientFlutter(
      generalFrameworkClient: BaseTemplateGeneralFrameworkProjectClient(
        generalLibrary: generalFlutter,
        generalFrameworkClientInvokeOptions: GeneralFrameworkClientInvokeOptions(
          networkClientConnectionType: NetworkClientConnectionType.websocket,
          durationTimeOut: const Duration(minutes: 1),
          isInvokeThrowOnError: false,
        ),
        baseTemplateGeneralFrameworkProjectSecretClientSide: baseTemplateGeneralFrameworkProjectSecretClientSide,
        generalFrameworkDatabase: BaseTemplateGeneralFrameworkProjectClientDatabase(),
      ),
      navigatorKey: navigatorKey ?? GlobalKey<NavigatorState>(),
      generalLibrary: generalFlutter,
    );
    _is_initialized = true;
  }

  static void run() {
    runApp(BaseTemplateGeneralFrameworkProjectFlutterApp(
      generalFrameworkClientFlutter: baseTemplateGeneralFrameworkProjectClientFlutter,
    ));
  }
}

class BaseTemplateGeneralFrameworkProjectFlutterApp extends BaseTemplateGeneralFrameworkProjectClientFlutterAppStatelessWidget {
  BaseTemplateGeneralFrameworkProjectFlutterApp({
    super.key,
    required super.generalFrameworkClientFlutter,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: BaseTemplateGeneralFrameworkProjectFlutter.generalLibFlutterApp,
      builder: (themeMode, lightTheme, darkTheme, widget) {
        final MaterialApp child = MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: generalFrameworkClientFlutter.navigatorKey,
          theme: lightTheme.copyWith(
            textTheme: Typography().black,
          ),
          darkTheme: darkTheme.copyWith(
            textTheme: Typography().white,
          ),
          themeMode: themeMode,
          onUnknownRoute: route.toOnUnknownRoute,
          routes: route.toRoutes(),
        );
        if (Dart.isDesktop) {}

        return child;
      },
    );
  }

  late final RouteGeneralLibFlutter route = RouteGeneralLibFlutter(
    // key: "BaseTemplateGeneralFrameworkProjectFlutterApp",
    // pageStorageBucket: PageStorageBucket(),
    onUnknownRoute: (context, routeData) {
      return HomePage(generalFrameworkClientFlutter: generalFrameworkClientFlutter);
    },
    onRoute: () {
      return {
        "/": (context, data) {
          return BaseTemplateGeneralFrameworkProjectFlutterAppMain(
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
        "/account": (context, data) {
          final Account account = data.builder(
            onBuilder: () {
              dynamic body = data.arguments;
              if (body is Account) {
                return body;
              } else if (body is JsonScheme) {
                return Account(body.toJson());
              } else if (body is Map) {
                return Account(body);
              }

              return Account({});
            },
          );

          return AccountPage(
            account: account,
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
        "/chat": (context, data) {
          final Account account = data.builder(
            onBuilder: () {
              final body = data.arguments;
              if (body is Account) {
                return body;
              } else if (body is JsonScheme) {
                return Account(body.toJson());
              } else if (body is Map) {
                return Account(body);
              }

              return Account({});
            },
          );
          return ChatPage(
            account: account,
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
        "/home": (context, data) {
          return HomePage(
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
        "/settings": (context, data) {
          return SettingsPage(
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
        "/sign": (context, data) {
          return SignPage(
            generalFrameworkClientFlutter: generalFrameworkClientFlutter,
          );
        },
      };
    },
  );
}

class BaseTemplateGeneralFrameworkProjectFlutterAppMain extends BaseTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget {
  const BaseTemplateGeneralFrameworkProjectFlutterAppMain({super.key, required super.generalFrameworkClientFlutter});

  @override
  State<BaseTemplateGeneralFrameworkProjectFlutterAppMain> createState() => _BaseTemplateGeneralFrameworkProjectFlutterAppMainState();
}

class _BaseTemplateGeneralFrameworkProjectFlutterAppMainState extends State<BaseTemplateGeneralFrameworkProjectFlutterAppMain> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      task();
    });
  }

  void task() async {
    Future(() async {
      await widget.generalFrameworkClientFlutter.ensureInitialized(
        context: context,
        onLoading: (textLoading) {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height,
            minWidth: context.width,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
