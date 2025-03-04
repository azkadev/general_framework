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
import 'dart:io';

import 'package:general_framework/core/client/core.dart';
import 'package:general_lib/dart/dart.dart';
import 'package:path/path.dart' as path;

/// UncompleteDocumentation
abstract class GeneralServicePublicClientBaseCore {}

/// UncompleteDocumentation
abstract class GeneralServicePublicClient<T extends GeneralFrameworkClient> implements GeneralServicePublicClientBaseCore {
  /// UncompleteDocumentation
  final GeneralFrameworkClientFunction<T> generalFrameworkClientFunction;

  /// UncompleteDocumentation
  GeneralServicePublicClient({
    required this.generalFrameworkClientFunction,
  });

  /// UncompleteDocumentation

  String basePath = "";
  bool _isInitialized = false;

  /// UncompleteDocumentation
  Directory get directoryBase {
    final Directory directory = Directory(basePath);

    /// web is not support crete diectory so return
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  /// UncompleteDocumentation
  Directory get directoryDatabase {
    final Directory directory = Directory(path.join(directoryBase.path, "general_services_public_database"));

    /// web is not support crete diectory so return
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  /// UncompleteDocumentation
  Directory get directoryFiles {
    final Directory directory = Directory(path.join(directoryBase.path, "general_services_public_files"));

    /// web is not support crete diectory so return
    if (Dart.isWeb) {
      return directory;
    }
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  /// UncompleteDocumentation
  void ensureInitializedDirectory() async {
    {
      directoryBase;
      directoryDatabase;

      directoryFiles;
    }
  }

  /// UncompleteDocumentation

  FutureOr<void> ensureInitialized({
    required String currentPath,
  }) async {
    if (_isInitialized) {
      return;
    }
    this.basePath = currentPath;
    ensureInitializedDirectory();
    _isInitialized = true;
  }
}
