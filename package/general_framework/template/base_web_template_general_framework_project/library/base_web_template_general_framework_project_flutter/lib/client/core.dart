// ignore_for_file: use_build_context_synchronously, unnecessary_brace_in_string_interps

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
import 'dart:async';

import 'package:base_web_template_general_framework_project_client/base_web_template_general_framework_project_client_core.dart';
import 'package:base_web_template_general_framework_project_flutter/base_web_template_general_framework_project_flutter.dart';
import 'package:base_web_template_general_framework_project_flutter/page/account/account.dart';
import 'package:base_web_template_general_framework_project_flutter/page/chat/chat.dart';
import 'package:base_web_template_general_framework_project_flutter/page/home/home.dart';
import 'package:base_web_template_general_framework_project_flutter/page/landing/landing.dart';
import 'package:base_web_template_general_framework_project_flutter/page/settings/settings.dart';
import 'package:base_web_template_general_framework_project_flutter/page/sign/sign.dart';
import 'package:base_web_template_general_framework_project_scheme/respond_scheme/account.dart';
import 'package:flutter/material.dart';

import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/flutter/client/base.dart';
import 'package:general_framework/flutter/widget/core.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class BaseWebTemplateGeneralFrameworkProjectClientFlutter
    extends GeneralFrameworkClientFlutter<
        BaseWebTemplateGeneralFrameworkProjectClient> {
  BaseWebTemplateGeneralFrameworkProjectClientFlutter({
    required super.navigatorKey,
    required super.generalLibrary,
    required super.generalFrameworkClient,
  });

  static final GeneralLibFlutterApp generalLibFlutterApp =
      GeneralLibFlutterApp();
  bool _isInitialized = false;
  @override
  FutureOr<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(
      String textLoading,
    ) onLoading,
  }) async {
    await super.ensureInitialized(
      context: context,
      onLoading: onLoading,
    );
    if (_isInitialized) {
      return;
    }

    ensureInitializedNavigatorPush(context: context);
    _isInitialized = true;
  }

  void ensureInitializedNavigatorPush({
    required BuildContext context,
  }) async {
    context
        .routerGeneralLibFlutter()
        .pushReplacementNamed(routeName: "/", arguments: {});
    // if (token.isNotEmpty) {
    //   context.routerGeneralLibFlutter().pushReplacementNamed(routeName: "/home", arguments: {});
    // } else {
    //   context.routerGeneralLibFlutter().pushReplacementNamed(routeName: "/", arguments: {});
    // }
  }

  Widget signPage() {
    return SignPage(
      generalFrameworkClientFlutter: this,
    );
  }

  @override
  FutureOr<dynamic> onInvokeResult(
      Map result,
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    if (result["@type"] == "error") {
      final context = navigatorKey.currentContext;
      if (context == null) {
        return;
      }
      if (result["message"] is String == false) {
        result["message"] = "";
      }
      if (result["message"] == "session_not_found") {
        context
            .routerGeneralLibFlutter()
            .pushNamedAndRemoveUntil(routeName: "/sign", removeRouteName: "/");
        return;
      }
      final String message = (result["message"] as String)
          .trim()
          .split("_")
          .map((e) => e.toLowerCase().toUpperCaseFirstData())
          .join(" ");
      context.showSnackBar("Error: ${message}");
    }
  }

  @override
  FutureOr<Map?> onInvokeValidation(
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    return null;
  }

  @override
  void ensureInitializedRoute() {
    routeGeneralLibFlutter.all("/", (context, data) {
      if (_isInitialized == false) {
        return BaseWebTemplateGeneralFrameworkProjectFlutterAppMain(
          generalFrameworkClientFlutter: this,
        );
      }
      return LandingPage(
        generalFrameworkClientFlutter: this,
      );
    });
    routeGeneralLibFlutter.all("/account", (context, data) {
      final Account account = data.builder<Account>(
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
        generalFrameworkClientFlutter: this,
      );
    });

    routeGeneralLibFlutter.all("/chat", (context, data) {
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
        generalFrameworkClientFlutter: this,
      );
    });

    routeGeneralLibFlutter.all("/home", (context, data) {
      return HomePage(
        generalFrameworkClientFlutter: this,
      );
    });
    routeGeneralLibFlutter.all("/settings", (context, data) {
      return SettingsPage(
        generalFrameworkClientFlutter: this,
      );
    });
    routeGeneralLibFlutter.all("/sign", (context, data) {
      return SignPage(
        generalFrameworkClientFlutter: this,
      );
    });
  }

  @override
  GeneralLibFlutterApp generalLibFlutterAppFunction() {
    return generalLibFlutterApp;
  }

  @override
  Widget onErrorRoute(BuildContext context,
      RouteDataGeneralLibFlutter routeDataGeneralLibFlutter) {
    return const Scaffold(
      body: CircularProgressIndicator(),
    );
  }

  @override
  Widget onNotFoundRoute(BuildContext context,
      RouteDataGeneralLibFlutter routeDataGeneralLibFlutter) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: context.height, minWidth: context.width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: context.theme.indicatorColor,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Not Found Path: ${routeDataGeneralLibFlutter.path}",
                  style: context.theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget<
        T extends BaseWebTemplateGeneralFrameworkProjectClientFlutter>
    extends GeneralFrameworkClientFlutterAppStatefulWidget<T> {
  const BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget({
    super.key,
    required super.generalFrameworkClientFlutter,
  });
}

abstract class BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatelessWidget<
        T extends BaseWebTemplateGeneralFrameworkProjectClientFlutter>
    extends GeneralFrameworkClientFlutterAppStatelessWidget<T> {
  const BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatelessWidget({
    super.key,
    required super.generalFrameworkClientFlutter,
  });
}
