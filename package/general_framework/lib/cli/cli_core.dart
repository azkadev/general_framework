// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, unused_local_variable, prefer_const_constructors

import 'dart:io';

import 'package:general_framework/api/api_core.dart';
import 'package:general_lib/args/args.dart';
import 'package:mason_logger/mason_logger.dart';

Logger logger = Logger();
void generalFrameworkCli({
  required List<String> arguments,
}) async {
  GeneralFrameworkApi generalFrameworkApi = GeneralFrameworkApi();
  Args args = Args(arguments);
  List<String> commands = [
    "build",
    "create",
    "help",
  ];
  commands.sort();
  bool is_contains_help = [
    args.contains("--help"),
    args.contains("-h"),
  ].contains(true);
  bool is_interactive = [
    args.contains("--interactive"),
    args.contains("-I"),
  ].contains(true);
  String command = (args.arguments.firstOrNull ?? "").trim();
  if (commands.contains(command) == false) {
    if (is_interactive) {
      command = logger.chooseOne("Commands?: ", choices: commands);
    } else {
      logger.info(commands.join("\n"));
      exit(1);
    }
  }

  if (command == "build") {
    String build_type = (args.after(command) ?? "").trim().toLowerCase();
    List<String> build_types = [
      "",
    ];
  }

  if (command == "create") {
    String name_project = await Future(() async {
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
    });
  }

  logger.info("unimplemented: ${command}");
  exit(1);
}
