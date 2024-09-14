// ignore_for_file: non_constant_identifier_names

// import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:base_template_general_framework_project_scheme/schemes/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/schemes.dart';
import 'package:base_template_general_framework_project_scheme/schemes/update_scheme.dart';
import 'package:general_lib/general_lib.dart'; 

import "package:path/path.dart" as path;
 

extension DirectoryExtension on Directory {
  Directory get init {
    if (existsSync()) {
      deleteSync(recursive: true);
    }
    createSync(recursive: true);
    return this;
  }
}

void main(List<String> args) async {
  
  await generateApi(
    directoryBase: Directory(path.join(Directory.current.path, "lib")),
  );
  await generateDatabaseSql();
  // Process.runSync("dart", ["format", ""]);
  exit(0);
}


Future<void> generateApi({
  required Directory directoryBase,
}) async {
  for (var i = 0; i < database_schemes.length; i++) {
    // Map<String, dynamic> json_data_owner_platform_app_user_id = {};
    // Set<String> keys = {
    //   "drive",
    //   "coinlox",
    //   "ads_gateway",
    //   "envivore",
    //   "galaxeus",
    //   "glx",
    //   "hexaminate",
    //   "meesagee",
    //   "roleplayer",
    //   "specta",
    //   "global",
    //   "general_app",
    //   "telegram",
    // };

    // for (var element in keys) {
    // }
    // json_data_owner_platform_app_user_id["owner_account_user_id"] = 0;
    database_schemes[i].addAll({
      "from_app_id": "",
      "owner_account_user_id": 0,
    });
  }
  await jsonToScripts(
    database_schemes,
    directory: Directory(
      path.join(
        directoryBase.uri.toFilePath(),
        "database_scheme",
      ),
    ).init,
  );
  List<String> api_methods = [];
  for (var i = 0; i < api_schemes.length; i++) {
    if (api_methods.contains(api_schemes[i]["@type"])) {
      throw "Api method found double";
    } else {
      api_methods.add(api_schemes[i]["@type"]);
    }
    api_schemes[i].addAll({
      "@platform_id": "",
      "@platform_username": "",
      "@extra": "",
      "@expire_date": "",
      "@token": "",
    });
  }

  api_methods.sort();
//   File api_file_methods = File(path.join(directory_data.path, "api_methods.dart"));
//   await api_file_methods.writeAsString("""
// // ignore_for_file: non_constant_identifier_names
// List<String> api_method_lists = ${json.encode(api_methods)};
// """
//       .trim());

  await jsonToScripts(
    api_schemes,
    directory: Directory(
      path.join(
        directoryBase.uri.toFilePath(),
        "api_scheme",
      ),
    ).init,
  );
  try {
    for (var i = 0; i < update_schemes.length; i++) {
      update_schemes[i].addAll({
        "@extra": "",
        "@expire_date": "",
        "@client_id": "",
      });
    }
    await jsonToScripts(
      update_schemes,
      directory: Directory(
        path.join(
          directoryBase.uri.toFilePath(),
          "update_scheme",
        ),
      ).init,
    );
  } catch (e, stack) {
    print("$e $stack");
  }
  try {
    for (var i = 0; i < respond_schemes.length; i++) {
      respond_schemes[i].general_lib_extension_updateForce(data: {
        "@extra": "",
        "@expire_date": "",
        "@client_id": "",
      });
    }
    await jsonToScripts(
      respond_schemes,
      directory: Directory(
        path.join(
          directoryBase.uri.toFilePath(),
          "respond_scheme",
        ),
      ).init,
    );
  } catch (e, stack) {
    print("$e $stack");
  }
  try {
    for (var i = 0; i < schemes.length; i++) {
      // schemes[i].addAll({
      //   "@extra": "",
      //   "@expire_date": "",
      //   "@client_id": "",
      // });
    }
    await jsonToScripts(
      schemes,
      directory: Directory(
        path.join(
          directoryBase.uri.toFilePath(),
          "scheme",
        ),
      ).init,
    );
  } catch (e, stack) {
    print("$e $stack");
  }
}

Future<void> generateDatabaseSql() async {
  List<Map> jsonDatas = database_schemes;
  Directory(path.join(Directory.current.path, "supabase_scheme")).init;
  for (var jsonData in jsonDatas) {
    if (!jsonData.containsKey("@type")) {
      continue;
    }

    if (jsonData["@is_local_only"] == true) {
      continue;
    }

    // Set<String> keys = {
    //   "drive",
    //   "coinlox",
    //   "ads_gateway",
    //   "envivore",
    //   "galaxeus",
    //   "glx",
    //   "hexaminate",
    //   "meesagee",
    //   "roleplayer",
    //   "specta",
    //   "global",
    //   "general_app",
    //   "telegram",
    // };

    // for (var element in keys) {
    //   jsonData["owner_${element}_user_id"] = 0;
    // }
    jsonData["from_app_id"] = "";
    jsonData["owner_account_user_id"] = 0;
    String table_name = (jsonData["@type"] as String).replaceAll(RegExp(r"(database)$", caseSensitive: false), "");
    String res = jsonToSqlSupabase(
      jsonData: jsonData,
      tableName: table_name.snakeCaseClass(),
    );

    File file = File(path.join(Directory.current.path, "supabase_scheme", "${table_name.snakeCaseClass()}.supabase_sql"));
    file.writeAsStringSync(res);
  }
}
