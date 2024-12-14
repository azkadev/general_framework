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
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

// import 'dart:convert';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:base_template_general_framework_project_scheme/schemes/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/database_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/schemes/schemes.dart';
import 'package:base_template_general_framework_project_scheme/schemes/update_scheme.dart';
import 'package:general_lib/general_lib.dart';

import "package:path/path.dart" as path;

extension DirectoryExtension on Directory {
  Directory recreate() {
    if (existsSync()) {
      deleteSync(recursive: true);
    }
    createSync(recursive: true);
    return this;
  }
}

void main(List<String> args) async {
  print("Start");
  await generateApi(
    directoryBase: Directory(path.join(Directory.current.path, "lib")),
  );
  await generateDatabaseSql();

  await generateClientApi();
  await generateApiApi();
  await generateIsarDatabase();
  print("Complete");
  exit(0);
}

Future<void> generateApi({
  required Directory directoryBase,
}) async {
  for (var i = 0; i < database_schemes.length; i++) {
    // database_schemes[i].general_lib_extension_updateForce(data: data);
    database_schemes[i].general_lib_extension_updateForce(data: {
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
    ).recreate(),
  );
  List<String> api_methods = [];
  for (var i = 0; i < api_schemes.length; i++) {
    if (api_methods.contains(api_schemes[i]["@type"])) {
      throw "Api method found double";
    } else {
      api_methods.add(api_schemes[i]["@type"]);
    }
    // api_schemes[i].general_lib_extension_updateForce(data: data);
    api_schemes[i].general_lib_extension_updateForce(data: {
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
    ).recreate(),
  );
  try {
    for (var i = 0; i < update_schemes.length; i++) {
      update_schemes[i].general_lib_extension_updateForce(data: {
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
      ).recreate(),
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
      ).recreate(),
    );
  } catch (e, stack) {
    print("$e $stack");
  }
  try {
    for (var i = 0; i < schemes.length; i++) {
      // schemes[i].general_lib_extension_updateForce(data:{
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
      ).recreate(),
    );
  } catch (e, stack) {
    print("$e $stack");
  }
}

Future<void> generateDatabaseSql() async {
  List<Map> jsonDatas = database_schemes;
  Directory(path.join(Directory.current.path, "supabase_scheme")).recreate();
  for (var jsonData in jsonDatas) {
    if (!jsonData.containsKey("@type")) {
      continue;
    }

    if (jsonData["@is_local_only"] == true) {
      continue;
    }

    if (RegExp("(${GeneralLibSchemeType.local.toSpesialType()})\$",
            caseSensitive: false)
        .hasMatch(jsonData["@type"])) {
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
    String table_name = (jsonData["@type"] as String)
        .replaceAll(RegExp(r"(database)$", caseSensitive: false), "");
    String res = jsonToSqlSupabase(
      jsonData: jsonData,
      tableName: table_name.snakeCaseClass(),
    );

    File file = File(path.join(Directory.current.path, "supabase_scheme",
        "${table_name.snakeCaseClass()}.supabase_sql"));
    file.writeAsStringSync(res);
  }
}

Future<void> generateClientApi() async {
  final Directory directory = Directory(path.join(
    Directory.current.path,
    "..",
    "base_template_general_framework_project_client",
    "lib",
    "api",
  ));

  if (directory.existsSync() == false) {
    directory.createSync(recursive: true);
  }
  final File file = File(path.join(directory.path, "api.dart"));
  String script = """
// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart'; 
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:general_framework/core/client/options.dart'; 


extension BaseTemplateGeneralFrameworkProjectClientExtensionInvokeApiGenerate on BaseTemplateGeneralFrameworkProjectClient {


""";
  for (final Map element in api_schemes) {
    if (element["@type"] is String == false) {
      continue;
    }
    if (element["@return_type"] is String == false) {
      element["@return_type"] = "ok";
    }
    final String special_type = element["@type"].toString().camelCaseClass();

    final String return_type =
        element["@return_type"].toString().camelCaseClass();

    script += "\n";
    script += """

  /// generate
  Future<${return_type}> api_${special_type.toLowerCaseFirstData()}({
    required ${special_type} ${special_type.toLowerCaseFirstData()}Parameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async { 
    return await invokeBuilder(
      parameters: ${special_type.toLowerCaseFirstData()}Parameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return ${return_type}(result);
      },
    );
  }

"""
        .trim();
    script += "\n";
  }
  script += "\n}";
  await file.writeAsString(script);
  Process.runSync("dart", [
    "format",
    directory.path,
  ]);
}

Future<void> generateApiApi() async {
  final Directory directory = Directory(path.join(
    Directory.current.path,
    "..",
    "base_template_general_framework_project_api",
    "lib",
    "api",
  ));

  if (directory.existsSync() == false) {
    directory.createSync(recursive: true);
  }

  List<String> script_export = [];

  for (final Map element in api_schemes) {
    if (element["@type"] is String == false) {
      continue;
    }
    if (element["@return_type"] is String == false) {
      element["@return_type"] = "ok";
    }
    final String special_name = element["@type"].toString().snakeCaseClass();
    if (script_export.contains(special_name) == false) {
      script_export.add(special_name);
    }
    final String special_type = element["@type"].toString().camelCaseClass();

    final String return_type =
        element["@return_type"].toString().camelCaseClass();

    File file =
        File(path.join(directory.uri.toFilePath(), "${special_name}.dart"));
    int size = () {
      if (file.existsSync()) {
        int size = file.statSync().size;
        return size;
      }
      return 0;
    }();
    if (size > 1) {
      continue;
    }
    String script = """
// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_api/update/update.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtension${special_type.toLowerCaseFirstData()}${return_type} on BaseTemplateGeneralFrameworkProjectApi {

""";
    script += "\n";

    script += """

  FutureOr<${return_type}> api_${special_type.toLowerCaseFirstData()}({
      required InvokeRequestData invokeRequestData,
}) {

    final ${special_type} ${special_type.toLowerCaseFirstData()} = invokeRequestData.parametersBuilder<${special_type}>(
      builder: (parameters) {
        return ${special_type}(parameters.toJson());
      },
    );

    return ${return_type}({
      "@type": "error",
      "message": "unimplemented"
    });
  }
""";
    script += "\n";
    script += "}";
    script = script.trim();

    print("update: ${special_name}.dart");
    await file.writeAsString(script);
  }
  script_export.sort();

  await File(path.join(directory.uri.toFilePath(), "api.dart"))
      .writeAsString(script_export.map((e) {
    return "export ${json.encode("${e}.dart")};";
  }).join("\n"));
  Process.runSync("dart", [
    "format",
    directory.path,
  ]);
}

Future<void> generateIsarDatabase() async {
  print("START");
  // List<Map<String, dynamic>> datas = [
  //   {
  //     "@type": "user",
  //     "id": 0,
  //     "first_name": "",
  //     "last_name": "",
  //     "title": "",
  //     "username": "",
  //     "phone_number": "",
  //     "is_bot": false,
  //   },
  //   {
  //     "@type": "callApiRequestCache",
  //     "method": "",
  //     "client_user_id": 0,
  //     "count": 0,
  //     "expire_date": 0,
  //   },
  //   {
  //     "@type": "accountData",
  //     "id": 0,
  //     "first_name": "",
  //     "last_name": "",
  //     "username": "",
  //     "type": "",
  //   },
  //   {
  //     "@type": "invokeData",
  //     "client_user_id": 0,
  //     "date": 0,
  //     "method": "",
  //     "data": "",
  //   },
  //   {
  //     "@type": "sessionData",
  //     "client_user_id": 0,
  //     "client_token": "",
  //     "created_date": 0,
  //     "last_update_date": 0,
  //     "program_date": 0,
  //     "app_id": "",
  //     "is_default": false,
  //   },
  // ];
  //
  final Directory directory = Directory(path.join(
    Directory.current.path,
    "..",
    "base_template_general_framework_project_isar_scheme",
  ));

  if (directory.existsSync() == false) {
    directory.createSync(recursive: true);
  }
  final Directory directory_lib_database_scheme = Directory(path.join(
    directory.path,
    "lib",
    "database",
    "scheme",
  ));

  directory_lib_database_scheme.recreate();
  for (var i = 0; i < database_schemes.length; i++) {
    database_schemes[i].general_lib_extension_updateForce(data: {
      "id": 0,
    });
    Map<String, dynamic> data = database_schemes[i];

    if (data["@type"] is String == false) {
      continue;
    }
    data["@type"] =
        (data["@type"] as String).camelCaseClass().toLowerCaseFirstData();
    JsonDataScript jsonDataScript = jsonToIsar(
      data,
      className: (data["@type"]),
      isarVersion: 4,
    );
    await jsonDataScript.saveToFile(directory_lib_database_scheme);
  }
  Process.runSync("dart", [
    "format",
    directory.path,
  ]);
  final result = await Process.start(
    "dart",
    [
      "run",
      "build_runner",
      "build",
      "--delete-conflicting-outputs",
    ],
    workingDirectory: directory.path,
  );
  int exit_code = await result.exitCode;
  print(exit_code);
}
