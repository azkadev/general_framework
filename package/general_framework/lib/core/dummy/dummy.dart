// ignore_for_file: non_constant_identifier_names

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

import 'package:general_framework/core/core.dart';
import 'package:general_framework/core/database/database_core.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_schema/general_schema.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class GeneralFrameworkApiDummy extends GeneralFrameworkApi {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  GeneralFrameworkApiDummy() : super(generalSchemaDatabase: GeneralFrameworkApiDatabaseDummy());

  @override
  FutureOr<void> dispose() async {
    return;
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType> getDetailStatusDeviceSupportAsync() {
    return GeneralSchemaDeviceStatusSupportType.unknown;
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    return GeneralSchemaDeviceStatusSupportType.unknown;
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    return GeneralSchemaLibraryStatusType.unknown;
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    return GeneralSchemaLibraryStatusType.unknown;
  }

  @override
  FutureOr<void> initialized() async {
    return;
  }

  @override
  FutureOr<JsonScheme> invokeRaw({required JsonScheme invokeParameters, required invokeOptions}) {
    return JsonScheme({"@type": "error", "message": "dummy"});
  }

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return false;
  }

  @override
  bool isDeviceSupportSync() {
    return false;
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class GeneralFrameworkApiDatabaseDummy extends GeneralFrameworkDatabase {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  GeneralFrameworkApiDatabaseDummy();

  @override
   Directory get directory_base => Directory("");

  @override
  FutureOr<void> dispose() async {
    return;
  }

  @override
  void ensureInitializedDatabase() {
   }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType> getDetailStatusDeviceSupportAsync() {
    return GeneralSchemaDeviceStatusSupportType.unknown;
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    return GeneralSchemaDeviceStatusSupportType.unknown;
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    return GeneralSchemaLibraryStatusType.unknown;
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    return GeneralSchemaLibraryStatusType.unknown;
  }

  @override
  FutureOr<void> initialized() async {
    return;
  }

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return false;
  }

  @override
  bool isDeviceSupportSync() {
    return false;
  }
}
