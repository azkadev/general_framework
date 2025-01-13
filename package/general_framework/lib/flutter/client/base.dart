// ignore_for_file: non_constant_identifier_names, overridden_fields, empty_catches

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

import 'package:flutter/material.dart';
import 'package:general/core/player/player_controller.dart';
import 'package:general/core/player/player_core.dart';
import 'package:general/core/player/player_model_data.dart';
import 'package:general/flutter/general_flutter_core.dart';
import 'package:general_framework/core/client/core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/flutter/client/general_framework_client_flutter_app_directory.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
typedef GeneralFrameworkClientFlutterFunction<
        T extends GeneralFrameworkClientFlutter>
    = T Function();

/// UncompleteDocumentation

abstract class GeneralFrameworkClientFlutterCore {
  /// UncompleteDocumentation
  FutureOr<dynamic> onInvokeResult(
      Map result,
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) {}

  /// UncompleteDocumentation
  FutureOr<Map?> onInvokeValidation(Map parameters,
      GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions) {
    return null;
  }

  /// UncompleteDocumentation
  Widget onErrorRoute(BuildContext context,
      RouteDataGeneralLibFlutter routeDataGeneralLibFlutter) {
    throw UnimplementedError();
  }

  /// UncompleteDocumentation

  Widget onNotFoundRoute(BuildContext context,
      RouteDataGeneralLibFlutter routeDataGeneralLibFlutter) {
    throw UnimplementedError();
  }

  /// UncompleteDocumentation

  void ensureInitializedRoute() {}

  /// UncompleteDocumentation

  GeneralLibFlutterApp generalLibFlutterAppFunction() {
    throw UnimplementedError();
  }
}

/// UncompleteDocumentation

abstract class GeneralFrameworkClientFlutter<T extends GeneralFrameworkClient>
    implements GeneralFrameworkClientFlutterCore {
  /// UncompleteDocumentation
  final GlobalKey<NavigatorState> navigatorKey;

  /// UncompleteDocumentation
  final GeneralFlutter generalLibrary;

  /// UncompleteDocumentation
  final T generalFrameworkClient;

  /// UncompleteDocumentation
  late final RouteGeneralLibFlutter routeGeneralLibFlutter =
      RouteGeneralLibFlutter(
    onErrorRoute: onErrorRoute,
    onNotFoundRoute: onNotFoundRoute,
  );

  late final GeneralLibraryPlayerBase _player = generalLibrary.media_player;
  late final GeneralLibraryPlayerControllerBase _player_notification;

  /// UncompleteDocumentation
  final GeneralFrameworkClientFlutterAppDirectory
      generalFrameworkClientFlutterAppDirectory =
      GeneralFrameworkClientFlutterAppDirectory();

  /// UncompleteDocumentation
  GeneralFrameworkClientFlutter({
    required this.navigatorKey,
    required this.generalLibrary,
    required this.generalFrameworkClient,
  }) {
    ensureInitializedRoute();
  }

  /// UncompleteDocumentation
  bool is_initialized = false;

  /// UncompleteDocumentation
  FutureOr<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(String textLoading) onLoading,
  }) async {
    if (is_initialized) {
      return;
    }
    is_initialized = true;
    await generalFrameworkClientFlutterAppDirectory.ensureInitialized(
      context: context,
      onLoading: onLoading,
    );
    await generalFrameworkClient.ensureInitialized(
      onInvokeResult: onInvokeResult,
      currentPath:
          generalFrameworkClientFlutterAppDirectory.app_support_directory.path,
      onInvokeValidation: onInvokeValidation,
    );

    try {
      _player.ensureInitialized();

      _player_notification =
          player().createPlayer(player_id: "app_notification");
    } catch (e) {}

    is_initialized = true;
  }

  /// UncompleteDocumentation

  GeneralLibraryPlayerBase player() {
    return _player;
  }

  /// UncompleteDocumentation
  GeneralLibraryPlayerControllerBase playerNotification() {
    return _player_notification;
  }

  /// UncompleteDocumentation
  Future<void> playSoundNotification({
    required String soundNotification,
  }) async {
    try {
      await playerNotification()
          .open(GeneralLibraryPlayerMediaBase(soundNotification));
    } catch (e) {}
  }
}
