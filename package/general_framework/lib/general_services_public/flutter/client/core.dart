import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/general_services_public/dart/client/base.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import "package:path/path.dart" as path;

abstract class GeneralServicePublicClientFlutterBaseCore {
  Widget profileAccount<T extends StatefulWidget>({
    required BuildContext context,
    required bool isLoading,
    required State<T> pageState,
  }) {
    throw UnimplementedError("");
  }

  dynamic home(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic ads(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic adsCreate(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic bot(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic developer(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic unban(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic sign(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }

  dynamic generalAppPublicAuthor(
    BuildContext context,
    RouteDataGeneralLibFlutter data,
  ) {
    throw UnimplementedError("");
  }
}

abstract class GeneralServicePublicClientFlutter<T extends GeneralFrameworkClientFlutter, K extends GeneralServicePublicClient> implements GeneralServicePublicClientFlutterBaseCore {
  final GeneralFrameworkClientFlutterFunction<T> generalFrameworkClientFlutterFunction;
  final K generalServicePublic;

  GeneralServicePublicClientFlutter({
    required this.generalFrameworkClientFlutterFunction,
    required this.generalServicePublic,
  });

  T get generalFrameworkClientFlutter {
    return generalFrameworkClientFlutterFunction();
  }

  FutureOr<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(
      String textLoading,
    ) onLoading,
  }) async {
    final generalFrameworkClientFlutterAppDirectory = generalFrameworkClientFlutter.generalFrameworkClientFlutterAppDirectory;
    await generalServicePublic.ensureInitialized(
      currentPath: path.join(generalFrameworkClientFlutterAppDirectory.app_support_directory.path, "general_services_public"),
    );
  }

  void ensureInitializedRoute() {
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/home", home);

    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/ads", ads);
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/ads/create", adsCreate);
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/bot", bot);
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/developer", developer);
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/unban", unban);
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/sign", sign);
    //
    //
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_app_public/author", generalAppPublicAuthor);
  }
}

abstract class GeneralServicesPublicFlutterAppStatefulWidget<T extends GeneralServicePublicClientFlutter> extends StatefulWidget {
  final T generalServicesPublicFlutter;
  const GeneralServicesPublicFlutterAppStatefulWidget({
    super.key,
    required this.generalServicesPublicFlutter,
  });
}

abstract class GeneralServicesPublicFlutterAppStatelessWidget<T extends GeneralServicePublicClientFlutter> extends StatelessWidget {
  final T generalServicesPublicFlutter;
  const GeneralServicesPublicFlutterAppStatelessWidget({
    super.key,
    required this.generalServicesPublicFlutter,
  });
}
