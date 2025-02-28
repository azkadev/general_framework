// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

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

import 'package:base_web_template_general_framework_project_scheme/database_scheme/database_mini_schema.dart';
import 'package:base_web_template_general_framework_project_scheme/scheme/application_configuration.dart';
import 'package:base_web_template_general_framework_project_secret/base_web_template_general_framework_project_secret_core.dart';
import 'package:general_framework/core/database/database_core.dart';
import 'package:general_lib/database/database_core.dart';
import 'package:general_lib/database/mini/mini.dart';
import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';
import "package:path/path.dart" as path;
// import "package:base_web_template_general_framework_project_secret/base_web_template_general_framework_project_secret_core.dart";

class BaseWebTemplateGeneralFrameworkProjectClientDatabase extends GeneralFrameworkDatabase {
  final DatabaseGeneralLib databaseGeneralLib;
  final BaseWebTemplateGeneralFrameworkProjectSecretClientSide baseWebTemplateGeneralFrameworkProjectSecretClientSide;

  BaseWebTemplateGeneralFrameworkProjectClientDatabase({
    DatabaseGeneralLib? databaseGeneralLib,
    required this.baseWebTemplateGeneralFrameworkProjectSecretClientSide,
  }) : databaseGeneralLib = databaseGeneralLib ?? DatabaseGeneralLib();

  late final DatabaseMiniGeneralLibrary cores_database_mini_library;
  late final DatabaseMiniGeneralLibrary messages_database_mini_library;

  @override
  Directory get directory_base {
    final Directory directory = Directory(path.join(currentPath));
    if (Dart.isWeb) {
      return directory;
    } else {
      if (directory.existsSync() == false) {
        directory.createSync(recursive: true);
      }
    }
    return directory;
  }

  Directory get directory_database {
    final Directory directory = Directory(path.join(directory_base.path, "base_web_template_general_framework_project_database"));
    if (Dart.isWeb) {
      return directory;
    } else {
      if (directory.existsSync() == false) {
        directory.createSync(recursive: true);
      }
    }
    return directory;
  }

  @override
  void ensureInitializedDatabase() {
    {
      directory_base;
      directory_database;
    }
  }

  DatabaseMiniGeneralLibraryBaseOptions get databaseMiniGeneralLibraryBaseOptions => DatabaseMiniGeneralLibraryBaseOptions(
        crypto: baseWebTemplateGeneralFrameworkProjectSecretClientSide.crypto,
        isUseCrypto: true,
        isIgnoreError: true,
      );

  @override
  FutureOr<void> ensureInitialized({
    required String currentPath,
    required Client httpClient,
  }) async {
    await super.ensureInitialized(currentPath: currentPath, httpClient: httpClient);
    {
      cores_database_mini_library = await databaseGeneralLib.openDatabaseMiniAsync(
        key: "database_core",
        databaseMiniGeneralLibraryBaseOptions: databaseMiniGeneralLibraryBaseOptions,
        defaultData: {},
      );
      messages_database_mini_library = await databaseGeneralLib.openDatabaseMiniAsync(
        key: "messages",
        databaseMiniGeneralLibraryBaseOptions: databaseMiniGeneralLibraryBaseOptions,
        defaultData: {},
      );
    }
  }

  DatabaseMiniSchema coreDatabaseValue() {
    return cores_database_mini_library.valueBuilder(
      builder: (db) {
        return DatabaseMiniSchema(db.stateData);
      },
    );
  }

  ApplicationConfiguration get application_configuration {
    final value = coreDatabaseValue();
    if (value["application_configuration"] is Map == false) {
      value["application_configuration"] = {};
    }

    return ApplicationConfiguration(value.application_configuration.toJson());
  }

  FutureOr<void> saveCoreDatabase() async {
    await cores_database_mini_library.write();
  }
}
