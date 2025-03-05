// ignore_for_file: empty_catches

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

// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:general_lib/dart/dart.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:io_universe/io_universe.dart';
import "package:path/path.dart" as path;

/// UncompleteDocumentation
class GeneralFrameworkClientFlutterAppDirectory {
  /// UncompleteDocumentation
  Directory app_temp_directory = Directory("");

  /// UncompleteDocumentation
  Directory app_support_directory = Directory("");

  /// UncompleteDocumentation
  Directory app_document_directory = Directory("");

  /// UncompleteDocumentation
  Directory app_cache_directory = Directory("");

  /// UncompleteDocumentation
  Directory app_external_storage_directory = Directory("");

  /// UncompleteDocumentation
  Directory app_download_directory = Directory("");

  /// UncompleteDocumentation
  GeneralFrameworkClientFlutterAppDirectory();

  /// UncompleteDocumentation
  Future<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(String text) onLoading,
  }) async {
    if (Dart.isWeb) {
      return;
    }
    app_temp_directory = await path_provider.getTemporaryDirectory();
    app_support_directory =
        await path_provider.getApplicationSupportDirectory();
    app_document_directory =
        await path_provider.getApplicationDocumentsDirectory();

    app_cache_directory = await Future(() async {
      try {
        return await path_provider.getApplicationCacheDirectory();
      } catch (e) {}

      return Directory(
          path.join(app_document_directory.parent.uri.toFilePath(), "cache"));
    });

    app_external_storage_directory = await Future(() async {
      try {
        final Directory? directory_procces =
            await path_provider.getExternalStorageDirectory();
        if (directory_procces != null) {
          return directory_procces;
        }
      } catch (e) {}

      return Directory(path.join(
          app_document_directory.parent.uri.toFilePath(), "ApplicationData"));
    });

    app_download_directory = await Future(() async {
      try {
        final Directory? directory_procces =
            await path_provider.getDownloadsDirectory();
        if (directory_procces != null) {
          return directory_procces;
        }
      } catch (e) {}

      return Directory(path.join(
          app_document_directory.parent.uri.toFilePath(), "Downloads"));
    });
  }
}
