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
import 'dart:convert';

/// UncompleteDocumentation
class PackagexProjectGeneralFramework {
  /// UncompleteDocumentation
  static bool isSame({required String data}) {
    return [default_data_to_string, json.encode(default_data)].contains(data);
  }

  /// UncompleteDocumentation
  static String get default_data_to_string {
    return (JsonEncoder.withIndent(" " * 2).convert(default_data));
  }

  /// UncompleteDocumentation
  static Map get default_data {
    return {
      "name": "general_framework",
      "description":
          "General Framework Library for help you create project more easy with general standarization style code base",
      "version": "0.0.5",
      "homepage": "https://github.com/azkadev/general_framework",
      "repository": "https://github.com/azkadev/general_framework",
      "documentation": "https://azkadev.github.io/general_framework/",
      "funding": ["https://github.com/sponsors/azkadev"],
      "platforms": {
        "android": null,
        "ios": null,
        "linux": null,
        "macos": null,
        "web": null,
        "windows": null
      },
      "executables": {"general_framework": "general_framework"},
      "dependency_overrides": {"pointycastle": "3.8.0", "mime": "^2.0.0"},
      "issue_tracker": "https://t.me/DEVELOPER_GLOBAL_PUBLIC",
      "obfuscate": true,
      "split-debug-info": "0.0.0",
      "build-name": "0.0.0",
      "build-number": 1,
      "split-per-abi": true,
      "no-tree-shake-icons": true
    };
  }
}
