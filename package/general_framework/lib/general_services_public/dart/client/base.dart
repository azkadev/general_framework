import 'dart:async';
import 'dart:io';

import 'package:general_framework/core/client/core.dart';
import 'package:general_lib/dart/dart.dart';
import 'package:path/path.dart' as path;

/// UncompleteDocumentation
abstract class GeneralServicePublicClientBaseCore {}

/// UncompleteDocumentation
abstract class GeneralServicePublicClient<T extends GeneralFrameworkClient>
    implements GeneralServicePublicClientBaseCore {
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
    final Directory directory = Directory(
        path.join(directoryBase.path, "general_services_public_database"));

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
    final Directory directory = Directory(
        path.join(directoryBase.path, "general_services_public_files"));

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
