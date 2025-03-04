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

import "dart:io";

import "package:path/path.dart" as path;

void main() async {
  final Directory directory_template = Directory(path.join(Directory.current.path, "template"));
  final TemplateGenerator templateGenerator = TemplateGenerator(
    name: "bot_discord",
    isApplication: false,
    isBigProject: true,
    isHasServer: false,
    directoryBase: directory_template,
  );
  await templateGenerator.start();
  exit(0);
}

class TemplateGenerator {
  final String name;
  final bool isApplication;
  final bool isBigProject;
  final bool isHasServer;
  final Directory directoryBase;
  TemplateGenerator({
    required this.name,
    required this.isHasServer,
    required this.directoryBase,
    required this.isApplication,
    required this.isBigProject,
  });
  Future<int> shell({
    required String executable,
    required List<String> arguments,
    required String workingDirectory,
  }) async {
    final Process process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
    );
    process.stderr.listen((e) {
      stderr.add(e);
    });
    process.stdout.listen((e) {
      stdout.add(e);
    });

    return await process.exitCode;
  }

  String get nameTemplate {
    return "${name}_general_framework${isBigProject ? "_project" : ""}";
  }

  List<String> get projectTemplates {
    return [
      "${nameTemplate}_${isApplication ? "flutter" : "dart"}",
      "${nameTemplate}_client",
      "${nameTemplate}_client_database",
      "${nameTemplate}_isar_scheme",
      "${nameTemplate}_language",
      "${nameTemplate}_scheme",
      "${nameTemplate}_secret",
      if (isHasServer) ...[
        "${nameTemplate}_api",
        "${nameTemplate}_api_database",
        "${nameTemplate}_api_server",
        "${nameTemplate}_media_server",
      ],
    ];
  }

  Future<void> start() async {
    final String name_template = nameTemplate;
    if (await shell(executable: "dart", arguments: ["create", name_template, "--no-pub", "--force"], workingDirectory: directoryBase.path) != 0) {
      exit(1);
    }
    final Directory directory_project_library = Directory(path.join(directoryBase.path, name_template, "library"));
    if (directory_project_library.existsSync() == false) {
      directory_project_library.createSync(recursive: true);
    }
    {
      for (final projectTemplate in projectTemplates) {
        final bool is_flutter = RegExp("flutter", caseSensitive: false).hasMatch(projectTemplate);
        if (await shell(
                executable: is_flutter ? "flutter" : "dart",
                arguments: [
                  "create",
                  projectTemplate,
                  "--no-pub",
                  if (is_flutter == false) "--force",
                  "--template",
                  "package",
                ],
                workingDirectory: directory_project_library.path) !=
            0) {
          exit(1);
        }
      }
    }
  }
}
