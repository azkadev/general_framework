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
// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, unnecessary_string_interpolations

import 'dart:io';

import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

import "package:path/path.dart" as path;

void main(List<String> args) async {
  final Directory directory_template = Directory(path.join(Directory.current.path, "template"));
  // directory_template_base.listSync().whereType<Directory>();
  Process.runSync("dart", [
    "format",
    directory_template.uri.toFilePath(),
  ]);
  final List<FileSystemEntity> fileSystemEntitys = directory_template.listSync().where((element) => element.statSync().type == FileSystemEntityType.directory).toList();
  fileSystemEntitys.sort((a, b) => a.path.compareTo(b.path));
  for (var element in fileSystemEntitys) {
    final String base_name = "${path.basename(element.path)}";

    if (element is Directory) {
      final List<ScriptGenerator> scirpts = element.listSync().toScriptGenerate(
            scriptGeneratorOptions: ScriptGeneratorOptions(
              fileSystemEntityIgnore: "",
              isVerbose: false,
            ),
          );
      final String script = scirpts.toScriptDart(scriptName: base_name);
      final File file = File(path.join(Directory.current.path, "lib", "templates", "${base_name}_template.dart"));
      if (file.parent.existsSync() == false) {
        file.parent.createSync(
          recursive: true,
        );
      }
      file.writeAsStringSync(script);
    }
  }

  Process.runSync("dart", [
    "format",
    Directory(path.join(Directory.current.path, "lib", "templates")).uri.toFilePath(),
  ]);
}
