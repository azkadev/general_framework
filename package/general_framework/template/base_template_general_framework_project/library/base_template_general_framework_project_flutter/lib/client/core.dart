import 'dart:async';

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:flutter/material.dart';

import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/flutter/client/base.dart';

class BaseTemplateGeneralFrameworkProjectClientFlutter
    extends GeneralFrameworkClientFlutter<
        BaseTemplateGeneralFrameworkProjectClient> {
  BaseTemplateGeneralFrameworkProjectClientFlutter({
    required super.navigatorKey,
    required super.generalLibrary,
    required super.generalFrameworkClient,
  });

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
  }

  @override
  FutureOr<dynamic> onInvokeResult(
    Map result,
    Map parameters,
    GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions,
  ) async {}

  @override
  FutureOr<dynamic> onInvokeRequest(
      Map result,
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {}

  @override
  FutureOr<Map?> onInvokeValidation(
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    return null;
  }
}
