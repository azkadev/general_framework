
// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:general_framework/ui/widgets/framework.dart';
import 'package:general_lib/dart/dart.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:universal_io/io.dart';
import "package:path/path.dart" as path;

class GeneralClientAppDirectory {
  Directory app_temp_directory = Directory("");
  Directory app_support_directory = Directory("");
  Directory app_document_directory = Directory("");
  Directory app_cache_directory = Directory("");
  Directory app_external_storage_directory = Directory("");
  Directory app_download_directory = Directory("");
  GeneralClientAppDirectory();
  Future<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(String text) onLoading,
  }) async {
    if (Dart.isWeb) {
      return;
    }
    app_temp_directory = await path_provider.getTemporaryDirectory();
    app_support_directory = await path_provider.getApplicationSupportDirectory();
    app_document_directory = await path_provider.getApplicationDocumentsDirectory();

    app_cache_directory = await Future(() async {
      try {
        return await path_provider.getApplicationCacheDirectory();
      } catch (e) {}

      return Directory(path.join(app_document_directory.parent.uri.toFilePath(), "cache"));
    });

    app_external_storage_directory = await Future(() async {
      try {
        final Directory? directory_procces = await path_provider.getExternalStorageDirectory();
        if (directory_procces != null) {
          return directory_procces;
        }
      } catch (e) {}

      return Directory(path.join(app_document_directory.parent.uri.toFilePath(), "External Storage"));
    });

    app_download_directory = await Future(() async {
      try {
        final Directory? directory_procces = await path_provider.getDownloadsDirectory();
        if (directory_procces != null) {
          return directory_procces;
        }
      } catch (e) {}

      return Directory(path.join(app_document_directory.parent.uri.toFilePath(), "Downloads"));
    });
  }
}