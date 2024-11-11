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

import 'package:base_web_template_general_framework_project_client/base_web_template_general_framework_project_client_core.dart';
import 'package:base_web_template_general_framework_project_client_database/base_web_template_general_framework_project_client_database_core.dart';
import 'package:base_web_template_general_framework_project_flutter/client/client.dart';
import 'package:base_web_template_general_framework_project_secret/base_web_template_general_framework_project_secret.dart';
import 'package:flutter/material.dart';
import 'package:general/flutter/general_flutter_core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class BaseWebTemplateGeneralFrameworkProjectFlutter {
  static const GeneralFlutter generalFlutter = GeneralFlutter();
  static late final BaseWebTemplateGeneralFrameworkProjectClientFlutter
      baseTemplateGeneralFrameworkProjectClientFlutter;

  static bool _is_initialized = false;

  static void ensureInitialized({
    required List<String> arguments,
    GlobalKey<NavigatorState>? navigatorKey,
    required BaseWebTemplateGeneralFrameworkProjectSecretClientSide
        baseTemplateGeneralFrameworkProjectSecretClientSide,
  }) {
    if (_is_initialized) {
      return;
    }
    WidgetsFlutterBinding.ensureInitialized();
    baseTemplateGeneralFrameworkProjectClientFlutter =
        BaseWebTemplateGeneralFrameworkProjectClientFlutter(
      generalFrameworkClient: BaseWebTemplateGeneralFrameworkProjectClient(
        generalLibrary: generalFlutter,
        generalFrameworkClientInvokeOptions:
            GeneralFrameworkClientInvokeOptions(
          networkClientConnectionType: NetworkClientConnectionType.websocket,
          durationTimeOut: const Duration(minutes: 1),
          isInvokeThrowOnError: false,
        ),
        baseTemplateGeneralFrameworkProjectSecretClientSide:
            baseTemplateGeneralFrameworkProjectSecretClientSide,
        generalFrameworkDatabase:
            BaseWebTemplateGeneralFrameworkProjectClientDatabase(
          baseWebTemplateGeneralFrameworkProjectSecretClientSide:
              baseTemplateGeneralFrameworkProjectSecretClientSide,
        ),
      ),
      navigatorKey: navigatorKey ?? GlobalKey<NavigatorState>(),
      generalLibrary: generalFlutter,
    );
    _is_initialized = true;
  }

  static void run() {
    runApp(BaseWebTemplateGeneralFrameworkProjectFlutterApp(
      generalFrameworkClientFlutter:
          baseTemplateGeneralFrameworkProjectClientFlutter,
    ));
  }
}

class BaseWebTemplateGeneralFrameworkProjectFlutterApp
    extends BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatelessWidget {
  const BaseWebTemplateGeneralFrameworkProjectFlutterApp({
    super.key,
    required super.generalFrameworkClientFlutter,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: BaseWebTemplateGeneralFrameworkProjectClientFlutter
          .generalLibFlutterApp,
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
          onUnknownRoute:
              generalFrameworkClientFlutter.routeGeneralLibFlutter.route,
        );

        return child;
      },
    );
  }
}

class BaseWebTemplateGeneralFrameworkProjectFlutterAppMain
    extends BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget {
  const BaseWebTemplateGeneralFrameworkProjectFlutterAppMain(
      {super.key, required super.generalFrameworkClientFlutter});

  @override
  State<BaseWebTemplateGeneralFrameworkProjectFlutterAppMain> createState() =>
      _BaseWebTemplateGeneralFrameworkProjectFlutterAppMainState();
}

class _BaseWebTemplateGeneralFrameworkProjectFlutterAppMainState
    extends State<BaseWebTemplateGeneralFrameworkProjectFlutterAppMain> {
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
