// ignore_for_file: non_constant_identifier_names, overridden_fields

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
import 'package:general/flutter/general_flutter_core.dart';
import 'package:general_framework/core/client/core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/flutter/client/general_framework_client_flutter_app_directory.dart';

abstract class GeneralFrameworkClientFlutterCore {
  FutureOr<dynamic> onInvokeResult(Map result, Map parameters, GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions) {}

  FutureOr<dynamic> onInvokeRequest(Map result, Map parameters, GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions) {}

  FutureOr<Map?> onInvokeValidation(Map parameters, GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions) {
    return null;
  }
 
}

abstract class GeneralFrameworkClientFlutter<T extends GeneralFrameworkClient> implements GeneralFrameworkClientFlutterCore {
  final GlobalKey<NavigatorState> navigatorKey;
  final GeneralFlutter generalLibrary;
  final T generalFrameworkClient;

  final GeneralFrameworkClientFlutterAppDirectory generalFrameworkClientFlutterAppDirectory = GeneralFrameworkClientFlutterAppDirectory();
  GeneralFrameworkClientFlutter({
    required this.navigatorKey,
    required this.generalLibrary,
    required this.generalFrameworkClient,
  });

  bool is_initialized = false;
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
      currentPath: generalFrameworkClientFlutterAppDirectory.app_support_directory.path,
      onInvokeRequest: onInvokeRequest,
      onInvokeValidation: onInvokeValidation,
    );
    is_initialized = true;
  }
}
