import 'dart:async';
import 'dart:io';

import 'package:general_framework/core/client/core.dart';

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

  void ensureInitializedDirectory() async {
    {
      directoryBase;
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
