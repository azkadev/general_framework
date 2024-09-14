import 'dart:io';

import 'package:general_framework/templates/base_template_general_framework_project_template.dart';
import "package:general_lib/general_lib.dart";
import 'package:general_lib/script_generate/script_generate.dart';
import "package:path/path.dart" as path;

void main(List<String> args) {
  Directory directory = Directory(path.join(Directory.current.path, "temp", "azka_project"));
  if (directory.existsSync()) {
    directory.deleteSync(recursive: true);
  }
  directory.createSync(recursive: true);
  base_template_general_framework_project_script_generators.generateToDirectory(directoryBase: directory).listen((e) {
    print(e.text);
  });
}
