// ignore_for_file: avoid_print

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
// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, unused_local_variable, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'package:general_framework/api/api_core.dart';
import 'package:general_framework/packagex/packagex.dart';
import 'package:general_lib/fork/mason_logger/mason_logger.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/script_generate/script_generate.dart';
import "package:path/path.dart" as path;

/// UncompleteDocumentation
Logger logger = Logger();

/// UncompleteDocumentation
class GeneralFrameworkCli {
  /// UncompleteDocumentation
  static String seeYoutubeForDocumentOrTutorial() {
    return """
See https://youtube.com/@azkadev for detailed documentation and tutorial.
"""
        .trim();
  }

  /// UncompleteDocumentation
  static String watermark() {
    return """
General Framework Created By DEVELOPER AZKADEV - https://github.com/azkadev
Corporation - GLOBAL CORPORATION & GENERAL CORPORATION
"""
        .trim();
  }

  /// UncompleteDocumentation
  static String helpGlobal(
      {required String executable_name, required List<String> commands}) {
    return """
General Framework.

Usage: ${executable_name} <command> [arguments]

Global options:
  help                 Print this usage information. 
  version              Print version.

Available commands: 
  create     Create a new Dart project.
  list_template list template
  setup
  init

Run "glx help <command>" for more information about a command.
${GeneralFrameworkCli.seeYoutubeForDocumentOrTutorial()}

${GeneralFrameworkCli.watermark()}

Commands:
- ${commands.join("\n- ")}
"""
        .trim();
  }

  /// UncompleteDocumentation
  static void generalFrameworkCli({
    required List<String> arguments,
  }) async {
    final GeneralFrameworkApi generalFrameworkApi = GeneralFrameworkApi();
    final Args args = Args(arguments);
    final List<String> commands = [
      "create",
      "help",
      "version",
    ];
    commands.sort();
    final bool is_contains_help = args.contains(
      [
        "--help",
        "-h",
        "help",
      ],
      isRemoveIfFound: true,
    );
    final bool is_interactive = args.contains(
      [
        "--interactive",
        "-i",
        "-I",
      ],
      isRemoveIfFound: true,
    );
    String command = (args.arguments.firstOrNull ?? "").trim();
    final String executable_name =
        path.basenameWithoutExtension(Dart.executable);
    if (commands.contains(command) == false) {
      if (is_interactive) {
        command = logger.chooseOne("Commands?: ", choices: commands);
      } else {
        logger.info(GeneralFrameworkCli.helpGlobal(
          executable_name: executable_name,
          commands: commands,
        ));
        exit(1);
      }
    }

    if (command == "create") {
      final String name_project = (await Future(() async {
        String name_project_procces =
            (args.after(command) ?? "").trim().toLowerCase();
        if (name_project_procces.isEmpty) {
          if (is_interactive == false) {
            logger.info("please add arguments");
            exit(1);
          }

          while (true) {
            await Future.delayed(Duration(microseconds: 1));
            name_project_procces =
                logger.prompt("Name Project?: ").trim().toLowerCase();
            if (name_project_procces.isNotEmpty) {
              break;
            }
          }
        }
        return name_project_procces;
      }))
          .snakeCaseClass();
      final List<ScriptGenerator> template_project_procces =
          await Future(() async {
        {
          final String template_project_name_procces =
              (args.after(["-t", "--template"]) ?? "").trim().toLowerCase();
          final List<ScriptGenerator>? template_project_procces =
              generalFrameworkApi.templates[template_project_name_procces];
          if (template_project_procces != null) {
            return template_project_procces;
          }
          if (is_interactive == false) {
            logger.info("please add arguments");
            exit(1);
          }
        }
        {
          while (true) {
            final String template_project_name_procces = logger.chooseOne(
              "Pilih Template?: ",
              choices: generalFrameworkApi.templates.keys.toList(),
              defaultValue: generalFrameworkApi.templates.keys.firstOrNull,
              display: (choice) {
                return choice
                    .split(RegExp("([ ]+|_)"))
                    .map((e) => e.toLowerCase().toUpperCaseFirstData())
                    .join(" ");
              },
            );
            final List<ScriptGenerator>? template_project_procces =
                generalFrameworkApi.templates[template_project_name_procces];
            if (template_project_procces != null) {
              return template_project_procces;
            }
          }
        }
      });
      final Directory directory_project =
          Directory(path.join(Directory.current.path, name_project));
      if (directory_project.existsSync()) {
        if (args.contains(["-f", "--force"]) == false) {
          if (is_interactive == false) {
            logger.info(
                "Folder ${name_project} Already Exist. Use -f if you want force");
            exit(1);
          }
          {
            final question = logger.chooseOne(
              "Folder Already Exist?",
              choices: ["Continue", "Stop"]..sort(),
            );
            if (question != "Continue") {
              exit(1);
            }
          }
        }
      }
      await generalFrameworkApi.createProject(
        name_project: name_project,
        is_force: args.contains(["--force", "-force", "-f", "-F"]),
        template_project: template_project_procces,
        current_path: Directory.current.path,
        onStatus: (status) {
          print(status);
        },
      );
      exit(0);
    }

    if (command == "version") {
      print(jsonToMessage(PackagexProjectGeneralFramework.default_data,
          jsonFullMedia: {}));
      exit(0);
    }

    logger.info("unimplemented: ${command}");
    exit(1);
  }
}
