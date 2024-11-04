import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/general_services_public/dart/client/base.dart';
import "package:path/path.dart" as path;

abstract class GeneralServicePublicClientFlutterBaseCore {}

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
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/home", (context, data) {});
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/ads", (context, data) {});
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/create_ads", (context, data) {});
    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/bot", (context, data) {});

    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/developer", (context, data) {});

    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/unban", (context, data) {});

    generalFrameworkClientFlutter.routeGeneralLibFlutter.all("general_services_public/sign", (context, data) {});
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
