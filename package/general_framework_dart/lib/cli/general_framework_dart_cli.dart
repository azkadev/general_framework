// ignore_for_file: unused_local_variable, non_constant_identifier_names

/* <!-- START LICENSE -->


Program Ini Di buat Oleh DEVELOPER Dari PERUSAHAAN GLOBAL CORPORATION 
Social Media: 

- Youtube: https://youtube.com/@Global_Corporation 
- Github: https://github.com/globalcorporation
- TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

Seluruh kode disini di buat 100% murni tanpa jiplak / mencuri kode lain jika ada akan ada link komment di baris code

Jika anda mau mengedit pastikan kredit ini tidak di hapus / di ganti!

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
 

import 'package:general_lib/extension/extension.dart'; 
import 'package:general_lib/args/args.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:general_framework_dart/api/general_framework_dart_api_core.dart';
import 'package:universal_io/io.dart';

Logger logger = Logger();

Future<void> packageFullTemplateDartCli(List<String> args_raw) async {
  GeneralFrameworkDartApi packageFullTemplateDartApi = GeneralFrameworkDartApi();
  Args args = Args(args_raw);

  bool is_interactive = true;
  if (Platform.environment["no_interactive"] == "true") {
    is_interactive = false;
  }

  String command = (args.arguments.firstOrNull ?? "").toLowerCase();
  List<String> commands = [
    "build",
    "create",
    "deploy",
    "run",
  ];
  commands.sort();
  if (commands.contains(command) == false) {
    if (is_interactive) {
      command = logger.chooseOne(
        "Pilih",
        choices: commands,
        display: (choice) {
          return choice.toUpperCaseFirstData();
        },
      );
    } else {
      print("Please use command: ${commands.join("\n")}");
      exit(1);
    }
  }

  GeneralFrameworkDartBuildType server_universeDartBuildType = GeneralFrameworkDartBuildType.release;

  if (args.contains("--debug")) {
    server_universeDartBuildType = GeneralFrameworkDartBuildType.debug;
  }

  if (args.contains("-d")) {
    server_universeDartBuildType = GeneralFrameworkDartBuildType.debug;
  }

  if (command == "create") {
    Directory directory_current = Directory.current;
    String new_project_name = await Future(() async {
      String new_project_name_from_command = (args.after(command) ?? "").toLowerCase();
      if (new_project_name_from_command.isNotEmpty) {
        return new_project_name_from_command;
      }
      if (is_interactive) {
        while (true) {
          await Future.delayed(Duration(microseconds: 1));
          String server_universeDartPlatformType = logger.prompt(
            "Name New Project: ",
          );

          if (server_universeDartPlatformType.isNotEmpty) {
            return server_universeDartPlatformType;
          }
        }
      }
      return "";
    });
    if (new_project_name.isEmpty) {
      print("Failed");
      exit(1);
    }
    await packageFullTemplateDartApi.create(
      newName: new_project_name,
      directoryBase: directory_current,
    );
  } 
  exit(1);
}
