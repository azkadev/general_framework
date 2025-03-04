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
// import 'package:general_lib_bot/utils.dart';
// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, empty_catches

import 'dart:async';

import 'package:general_framework/languages/languages.dart';
import 'package:general_lib/general_lib.dart';
import "package:path/path.dart" as path;
import 'package:translate_client/translate_client.dart';
import 'package:io_universe/io_universe.dart';

void main(List<String> args) async {
  final directory_lib_language = Directory(path.join(
    Directory.current.path,
    "lib",
    "language",
  )).generalLibUtilsDangerRecreate();
  await jsonToLanguageScript(
    language_raw: general_framework_language_scheme,
    default_language_code_id: "id",
    directory: Directory(path.join(
      directory_lib_language.path,
      "general_framework",
    )).generalLibUtilsDangerRecreate(),
    is_translate: false,
    onData: (String origin_data, language_code_id, default_language_code_id) async {
      return await onData(origin_data, language_code_id, default_language_code_id);
    },
  );
  Process.runSync("dart", ["format", directory_lib_language.uri.toFilePath()], workingDirectory: Directory.current.uri.toFilePath());
}

FutureOr<String?> onData(String origin_data, language_code_id, default_language_code_id) async {
  if (["id", "en"].contains(language_code_id)) {
    RegExp regExp = RegExp(r"({[a-z0-9_]+})", caseSensitive: false);
    if (regExp.hashData(origin_data)) {
      List<RegExpMatch> regExpMatchs = regExp.allMatches(origin_data).toList();
      List<String> msgs = origin_data.split(regExp);
      String result_msg = "";
      for (var i = 0; i < msgs.length; i++) {
        String msg_part = msgs[i];
        try {
          result_msg += (await TranslateClient.translate(
            text: msg_part,
            toLanguageCode: language_code_id,
            fromLanguageCode: default_language_code_id,
          ));
        } catch (e) {
          result_msg += msg_part;
        }
        try {
          RegExpMatch regExpMatch = regExpMatchs[i];
          String data = regExpMatch.group(1) ?? "";
          if (data.isNotEmpty) {
            result_msg += "${data}";
          }
        } catch (e) {}
      }
      return result_msg;
    } else {
      try {
        return (await TranslateClient.translate(
          text: origin_data,
          toLanguageCode: language_code_id,
          fromLanguageCode: default_language_code_id,
        ));
      } catch (e) {}
    }
  }

  return null;
}
