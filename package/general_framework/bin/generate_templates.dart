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
  List<FileSystemEntity> fileSystemEntitys = directory_template.listSync().where((element) => element.statSync().type == FileSystemEntityType.directory).toList();
  fileSystemEntitys.sort((a, b) => a.path.compareTo(b.path));
  for (var element in fileSystemEntitys) {
    final String base_name = "${path.basename(element.path)}";

    if (element is Directory) {
      final List<ScriptGenerator> scirpts = element.listSync().toScriptGenerate();
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
