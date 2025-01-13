import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/general_services_public/dart/client/base.dart';
import 'package:general_lib/language/language_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import "package:path/path.dart" as path;

/// UncompleteDocumentation
abstract class GeneralServicePublicClientFlutterBaseCore {
  /// UncompleteDocumentation
  bool checkIsLoggin({
    required BuildContext context,
    required bool isReplace,
    required bool isUseSignPathName,
    required void Function(BuildContext context)? onSuccesSign,
  }) {
    throw UnimplementedError();
  }

  // Widget profileAccount<T extends StatefulWidget>({
  //   required BuildContext context,
  //   required bool isLoading,
  //   required State<T> pageState,
  // }) {
  //   throw UnimplementedError("");
  // }
  /// UncompleteDocumentation
  dynamic home(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  dynamic ads(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic adsCreate(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic bot(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic developer(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  dynamic unban(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  dynamic sign(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  dynamic generalAppPublicAuthor(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic generalAppPublicContent(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic generalAppPublicDocumentation(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic generalAppPublicProduct(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic generalAppPublicService(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  dynamic generalAppPublicPricing(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation
  String privacyPolicyContent({
    required Language? language,
  }) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  String termOfServicesContent({
    required Language? language,
  }) {
    throw UnimplementedError("");
  }

  /// UncompleteDocumentation

  GeneralLibFlutterApp generalLibFlutterApp() {
    throw UnimplementedError("");
  }
}

/// UncompleteDocumentation

abstract class GeneralServicePublicClientFlutter<
        T extends GeneralFrameworkClientFlutter,
        K extends GeneralServicePublicClient>
    implements GeneralServicePublicClientFlutterBaseCore {
  /// UncompleteDocumentation
  final GeneralFrameworkClientFlutterFunction<T>
      generalFrameworkClientFlutterFunction;

  /// UncompleteDocumentation
  final K generalServicePublic;

  /// UncompleteDocumentation

  GeneralServicePublicClientFlutter({
    required this.generalFrameworkClientFlutterFunction,
    required this.generalServicePublic,
  });

  /// UncompleteDocumentation
  T get generalFrameworkClientFlutter {
    return generalFrameworkClientFlutterFunction();
  }

  /// UncompleteDocumentation
  FutureOr<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(
      String textLoading,
    ) onLoading,
  }) async {
    final generalFrameworkClientFlutterAppDirectory =
        generalFrameworkClientFlutter.generalFrameworkClientFlutterAppDirectory;
    await generalServicePublic.ensureInitialized(
      currentPath: path.join(
          generalFrameworkClientFlutterAppDirectory.app_support_directory.path,
          "general_services_public"),
    );
  }

  /// UncompleteDocumentation

  void ensureInitializedRoute() {
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/home", home);

    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/ads", ads);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/ads/create", adsCreate);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/bot", bot);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/developer", developer);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/unban", unban);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_services_public/sign", sign);
    //
    //
    //
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/author", generalAppPublicAuthor);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/content", generalAppPublicContent);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/documentation", generalAppPublicDocumentation);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/product", generalAppPublicProduct);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/sevice", generalAppPublicService);
    generalFrameworkClientFlutter.routeGeneralLibFlutter
        .all("general_app_public/pricing", generalAppPublicPricing);
  }
}

/// UncompleteDocumentation

abstract class GeneralServicesPublicFlutterAppStatefulWidget<
    T extends GeneralServicePublicClientFlutter> extends StatefulWidget {
  /// UncompleteDocumentation
  final T generalServicesPublicFlutter;

  /// UncompleteDocumentation
  const GeneralServicesPublicFlutterAppStatefulWidget({
    super.key,
    required this.generalServicesPublicFlutter,
  });
}

/// UncompleteDocumentation
abstract class GeneralServicesPublicFlutterAppStatelessWidget<
    T extends GeneralServicePublicClientFlutter> extends StatelessWidget {
  /// UncompleteDocumentation
  final T generalServicesPublicFlutter;

  /// UncompleteDocumentation
  const GeneralServicesPublicFlutterAppStatelessWidget({
    super.key,
    required this.generalServicesPublicFlutter,
  });
}
