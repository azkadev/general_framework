import 'dart:async';
import 'dart:io';

import 'package:general_framework/core/client/core.dart';
import 'package:path/path.dart' as path;

abstract class GeneralServicePublicClientBaseCore {}

abstract class GeneralServicePublicClient<T extends GeneralFrameworkClient> implements GeneralServicePublicClientBaseCore {
  final GeneralFrameworkClientFunction<T> generalFrameworkClientFunction;

  GeneralServicePublicClient({
    required this.generalFrameworkClientFunction,
  });

  String basePath = "";
  bool _isInitialized = false;

  Directory get directoryBase {
    final Directory directory = Directory(basePath);
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  Directory get directoryDatabase {
    final Directory directory = Directory(path.join(directoryBase.path, "general_services_public_database"));
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  Directory get directoryFiles {
    final Directory directory = Directory(path.join(directoryBase.path, "general_services_public_files"));
    if (directory.existsSync() == false) {
      directory.createSync(recursive: true);
    }
    return directory;
  }

  void ensureInitializedDirectory() async {
    {
      directoryBase;
      directoryDatabase;

      directoryFiles;
    }
  }

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
