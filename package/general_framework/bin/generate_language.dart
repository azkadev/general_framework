// import 'package:general_lib_bot/utils.dart';
// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, empty_catches

import 'dart:async';

import 'package:general_framework/languages/languages.dart';
import 'package:general_lib/general_lib.dart';
import "package:path/path.dart" as path;
import 'package:translate_client/translate_client.dart';
import 'package:universal_io/io.dart';
import "extension.dart";

void main(List<String> args) async {
  final directory_lib_language = Directory(path.join(
    Directory.current.path,
    "lib",
    "language",
  )).recreate();
  await jsonToLanguageScript(
    language_raw: general_framework_language_scheme,
    default_language_code_id: "id",
    directory: Directory(path.join(
      directory_lib_language.path,
      "general_framework",
    )).recreate(),
    is_translate: false,
    onData:
        (String origin_data, language_code_id, default_language_code_id) async {
      return await onData(
          origin_data, language_code_id, default_language_code_id);
    },
  );
  Process.runSync("dart", ["format", directory_lib_language.uri.toFilePath()],
      workingDirectory: Directory.current.uri.toFilePath());
}

FutureOr<String?> onData(
    String origin_data, language_code_id, default_language_code_id) async {
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
