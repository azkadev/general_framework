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

import 'package:http/http.dart';
import 'package:io_universe/io_universe.dart';

/// UncompleteDocumentation
abstract class GeneralFrameworkDatabaseCore {
  /// UncompleteDocumentation
  Directory get directory_base {
    return Directory("");
  }

  /// UncompleteDocumentation

  void ensureInitializedDatabase() {}
}

/// UncompleteDocumentation

abstract class GeneralFrameworkDatabase
    implements GeneralFrameworkDatabaseCore {
  /// UncompleteDocumentation
  late final String currentPath;
  bool _is_initialized = false;

  /// UncompleteDocumentation
  late final Client httpClient;

  /// UncompleteDocumentation
  GeneralFrameworkDatabase();

  /// UncompleteDocumentation

  FutureOr<void> ensureInitialized({
    required String currentPath,
    required Client httpClient,
  }) async {
    if (_is_initialized) {
      return;
    }
    this.currentPath = currentPath;
    this.httpClient = httpClient;
    ensureInitializedDatabase();
    _is_initialized = true;
  }
}
