// ignore_for_file: non_constant_identifier_names

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
import 'dart:async';

import 'package:general_framework/templates/app_template_general_framework_project_template.dart';
import 'package:general_framework/templates/app_ui_template_general_framework_template.dart';
import 'package:general_framework/templates/base_template_general_framework_project_template.dart';
import 'package:general_framework/templates/base_web_template_general_framework_project_template.dart';
import 'package:general_framework/templates/telegram_bot_template_general_framework_project_template.dart';
import 'package:general_framework/templates/telegram_userbot_template_general_framework_project_template.dart';
import 'package:general_lib/extension/string.dart';
import 'package:general_lib/script_generate/script_generate.dart';
import "package:path/path.dart" as path;
import 'package:io_universe/io_universe.dart';

/// UncompleteDocumentation
class GeneralFrameworkApi {
  /// UncompleteDocumentation
  GeneralFrameworkApi();

  /// UncompleteDocumentation
  Map<String, List<ScriptGenerator>> get templates {
    return {
      "app": app_template_general_framework_project_script_generators,
      "app_ui": app_ui_template_general_framework_script_generators,
      "base": base_template_general_framework_project_script_generators,
      "base_web": base_web_template_general_framework_project_script_generators,
      "telegram_bot":
          telegram_bot_template_general_framework_project_script_generators,
      "telegram_userbot":
          telegram_userbot_template_general_framework_project_script_generators,
    };
  }

  /// UncompleteDocumentation
  Future<Map> createProject({
    required String name_project,
    required List<ScriptGenerator> template_project,
    required String current_path,
    required bool is_force,
    required FutureOr<dynamic> Function(ScriptGeneratorStatus status) onStatus,
  }) async {
    name_project = name_project.trim().snakeCaseClass();
    if (name_project.isEmpty) {
      return {
        "@type": "error",
        "message": "name_project_cant_empty",
      };
    }
    final Directory directoryProject =
        Directory(path.join(current_path, name_project));
    if (directoryProject.existsSync() && is_force == false) {
      return {
        "@type": "error",
        "message": "directory_project_already_exist",
      };
    }
    final Stream<ScriptGeneratorStatus> status =
        template_project.generateToDirectory(
      directoryBase: directoryProject,
    );
    await for (final ScriptGeneratorStatus element in status) {
      await onStatus(element);
    }
    return {
      "@type": "ok",
    };
  }
}
