// ignore_for_file: non_constant_identifier_names

// import 'dart:io';
import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

List<ScriptGenerator>
    base_template_general_framework_project_script_generators = [
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("base_template_general_framework_project"),
    file_system_entity: Directory(".github"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(".github/workflows"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: File(".github/FUNDING.yaml"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""github: ["azkadev"]""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("base_template_general_framework_project"),
    file_system_entity: Directory("library"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity:
            Directory("library/base_template_general_framework_project_api"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api/bin/base_template_general_framework_project_api.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api.dart'
    as base_template_general_framework_project_api;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_api.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_api/lib/api"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_api/lib/api/api.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "sign_in.dart";
export "sign_up.dart";
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_api/lib/api/sign_in.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/ok.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsignInOk
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_signIn() {
    return Ok({"@type": "error", "message": "unimplemented"});
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_api/lib/api/sign_up.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/ok.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtensionsignUpOk
    on BaseTemplateGeneralFrameworkProjectApi {
  FutureOr<Ok> api_signUp() {
    return Ok({"@type": "error", "message": "unimplemented"});
  }
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api/lib/base_template_general_framework_project_api.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api/lib/base_template_general_framework_project_api_core.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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

class BaseTemplateGeneralFrameworkProjectApi {
  BaseTemplateGeneralFrameworkProjectApi();
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api/test/base_template_general_framework_project_api_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: 'base_template_general_framework_project_api'
description: 'A sample command-line application.'
version: '1.0.0'
publish_to: none
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  base_template_general_framework_project_scheme:
    path: ../base_template_general_framework_project_scheme
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_api_database"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_database/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_database/bin/base_template_general_framework_project_api_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database.dart'
    as base_template_general_framework_project_api_database;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_api_database.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_database/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_database/lib/base_template_general_framework_project_api_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_database/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_database/test/base_template_general_framework_project_api_database_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api_database/base_template_general_framework_project_api_database.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_database/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_database/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_database/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_database/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_api_database'
description: 'A sample command-line application.'
version: '1.0.0'
publish_to: none
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  base_template_general_framework_project_scheme:
    path: ../base_template_general_framework_project_scheme
  collection: '^1.18.0' 
  general_lib: '^0.0.44'
  path: '^1.9.0'
  http: '^1.2.2'
  yet_another_json_isolate: '^2.0.0'
  supabase: '^2.3.0'
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_database/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_api_server"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_server/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_server/bin/base_template_general_framework_project_api_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api_server/base_template_general_framework_project_api_server.dart'
    as base_template_general_framework_project_api_server;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_api_server.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_server/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_server/lib/base_template_general_framework_project_api_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_api_server/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_api_server/test/base_template_general_framework_project_api_server_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_api_server/base_template_general_framework_project_api_server.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_server/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_server/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_server/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_server/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_api_server'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: null
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_api_server/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity:
            Directory("library/base_template_general_framework_project_client"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client/bin/base_template_general_framework_project_client.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client.dart'
    as base_template_general_framework_project_client;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_client.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_client/lib/api"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_client/lib/api/api.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:general_framework/core/client/options.dart';

extension BaseTemplateGeneralFrameworkProjectClientExtensionInvokeApiGenerate
    on BaseTemplateGeneralFrameworkProjectClient {
  /// generate
  Future<Ok> api_signUp({
    required SignUp signUpParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signUpParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }

  /// generate
  Future<Ok> api_signIn({
    required SignIn signInParameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeBuilder(
      parameters: signInParameters.toJson(),
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
      onResult: (result) {
        return Ok(result);
      },
    );
  }
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client/lib/base_template_general_framework_project_client.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client/lib/base_template_general_framework_project_client_core.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'dart:convert';

import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret.dart';
import 'package:general_framework/core/client/client.dart';

/// base template general framework
class BaseTemplateGeneralFrameworkProjectClient extends GeneralFrameworkClient {
  final BaseTemplateGeneralFrameworkProjectSecret
      baseTemplateGeneralFrameworkProjectSecret;

  BaseTemplateGeneralFrameworkProjectClient({
    required this.baseTemplateGeneralFrameworkProjectSecret,
    required super.generalLibrary,
    required super.networkClientConnectionType,
    required super.generalFrameworkClientInvokeOptions,
    required super.generalFrameworkDatabase,
    super.eventEmitter,
    super.eventInvoke,
    super.eventUpdate,
    super.httpClient,
  }) : super(
          apiUrl: baseTemplateGeneralFrameworkProjectSecret.apiUrl,
        );

  @override
  FutureOr<void> ensureInitialized({
    required InvokeClientFunction<dynamic> onInvokeResult,
    required InvokeClientFunction<dynamic> onInvokeRequest,
    required InvokeClientValidationFunction<Map?> onInvokeValidation,
    required String currentPath,
  }) async {
    await super.ensureInitialized(
      currentPath: currentPath,
      onInvokeValidation:
          (parameters, generalFrameworkClientInvokeOptions) async {
        final Map result = await onInvokeValidationDefault(
                parameters, generalFrameworkClientInvokeOptions) ??
            {};
        if (result.isNotEmpty) {
          return result;
        }
        return await onInvokeValidation(
            parameters, generalFrameworkClientInvokeOptions);
      },
      onInvokeResult:
          (result, parameters, generalFrameworkClientInvokeOptions) async {
        await onInvokeResultDefault(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
        await onInvokeResult(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
      },
      onInvokeRequest:
          (result, parameters, generalFrameworkClientInvokeOptions) async {
        await onInvokeRequestDefault(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
        await onInvokeRequest(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
      },
    );
  }

  FutureOr<Map?> onInvokeValidationDefault(
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    return null;
  }

  FutureOr<dynamic> onInvokeRequestDefault(
      Map<dynamic, dynamic> result,
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) {}

  FutureOr<dynamic> onInvokeResultDefault(
      Map<dynamic, dynamic> result,
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) {}

  @override
  String decryptData({required String data}) {
    return baseTemplateGeneralFrameworkProjectSecret.crypto
        .decrypt(data_base64: data);
  }

  @override
  String encryptData({required Map data}) {
    return baseTemplateGeneralFrameworkProjectSecret.crypto
        .encrypt(data: json.encode(data));
  }
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client/test/base_template_general_framework_project_client_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: 'base_template_general_framework_project_client'
description: 'A sample command-line application.'
version: '1.0.0'
publish_to: none
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies:
  path: '^1.9.0' 
  general_lib: '^0.0.44'
  general: '^0.0.29'
  base_template_general_framework_project_scheme:
    path: ../base_template_general_framework_project_scheme
  base_template_general_framework_project_secret:
    path: ../base_template_general_framework_project_secret
  general_framework:
    path: ../../../../
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_client_database"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_database/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_database/bin/base_template_general_framework_project_client_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database.dart'
    as base_template_general_framework_project_client_database;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_client_database.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_database/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_database/lib/base_template_general_framework_project_client_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_database/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_database/test/base_template_general_framework_project_client_database_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_client_database/base_template_general_framework_project_client_database.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_database/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_database/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_database/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_database/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_client_database'
description: 'A sample command-line application.'
version: '1.0.0'
publish_to: none
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies:

  base_template_general_framework_project_scheme:
    path: ../base_template_general_framework_project_scheme
  collection: '^1.18.0' 
  general_lib: '^0.0.44'
  path: '^1.9.0'
  http: '^1.2.2' 
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_database/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_client_isar_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_isar_scheme/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_isar_scheme/bin/base_template_general_framework_project_client_isar_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value:
                    r"""import 'package:base_template_general_framework_project_client_isar_scheme/base_template_general_framework_project_client_isar_scheme.dart'
    as base_template_general_framework_project_client_isar_scheme;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_client_isar_scheme.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_isar_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_client_isar_scheme/lib/database"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "library/base_template_general_framework_project_client_isar_scheme/lib/database/scheme"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "library/base_template_general_framework_project_client_isar_scheme/lib/database/scheme/account_database.dart"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""// ignore_for_file: non_constant_identifier_names, unnecessary_this

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:isar/isar.dart';
part "account_database.g.dart";

@collection
class AccountDatabase {
  // Id id = Isar.autoIncrement;

  String special_type = "accountDatabase";

  String from_app_id = "";

  int owner_account_user_id = 0;

  int id = 0;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "@type") {
      this.special_type = value;
    }

    if (key == "from_app_id") {
      this.from_app_id = value;
    }

    if (key == "owner_account_user_id") {
      this.owner_account_user_id = value;
    }

    if (key == "id") {
      this.id = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "@type": special_type,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
      "id": id,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {
      "@type": "accountDatabase",
      "from_app_id": "",
      "owner_account_user_id": 0,
      "id": 0
    };
  }

  static AccountDatabase create({
    bool utils_is_print_data = false,
  }) {
    AccountDatabase accountDatabase_data_create = AccountDatabase();

    if (utils_is_print_data) {
      // print(accountDatabase_data_create.toStringPretty());
    }

    return accountDatabase_data_create;
  }
}
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "library/base_template_general_framework_project_client_isar_scheme/lib/database/scheme/account_database.g.dart"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_database.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetAccountDatabaseCollection on Isar {
  IsarCollection<int, AccountDatabase> get accountDatabases =>
      this.collection();
}

const AccountDatabaseSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'AccountDatabase',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'special_type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'from_app_id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'owner_account_user_id',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, AccountDatabase>(
    serialize: serializeAccountDatabase,
    deserialize: deserializeAccountDatabase,
    deserializeProperty: deserializeAccountDatabaseProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeAccountDatabase(IsarWriter writer, AccountDatabase object) {
  IsarCore.writeString(writer, 1, object.special_type);
  IsarCore.writeString(writer, 2, object.from_app_id);
  IsarCore.writeLong(writer, 3, object.owner_account_user_id);
  return object.id;
}

@isarProtected
AccountDatabase deserializeAccountDatabase(IsarReader reader) {
  final object = AccountDatabase();
  object.special_type = IsarCore.readString(reader, 1) ?? '';
  object.from_app_id = IsarCore.readString(reader, 2) ?? '';
  object.owner_account_user_id = IsarCore.readLong(reader, 3);
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeAccountDatabaseProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readLong(reader, 3);
    case 0:
      return IsarCore.readId(reader);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _AccountDatabaseUpdate {
  bool call({
    required int id,
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseUpdateImpl implements _AccountDatabaseUpdate {
  const _AccountDatabaseUpdateImpl(this.collection);

  final IsarCollection<int, AccountDatabase> collection;

  @override
  bool call({
    required int id,
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (special_type != ignore) 1: special_type as String?,
          if (from_app_id != ignore) 2: from_app_id as String?,
          if (owner_account_user_id != ignore) 3: owner_account_user_id as int?,
        }) >
        0;
  }
}

sealed class _AccountDatabaseUpdateAll {
  int call({
    required List<int> id,
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseUpdateAllImpl implements _AccountDatabaseUpdateAll {
  const _AccountDatabaseUpdateAllImpl(this.collection);

  final IsarCollection<int, AccountDatabase> collection;

  @override
  int call({
    required List<int> id,
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return collection.updateProperties(id, {
      if (special_type != ignore) 1: special_type as String?,
      if (from_app_id != ignore) 2: from_app_id as String?,
      if (owner_account_user_id != ignore) 3: owner_account_user_id as int?,
    });
  }
}

extension AccountDatabaseUpdate on IsarCollection<int, AccountDatabase> {
  _AccountDatabaseUpdate get update => _AccountDatabaseUpdateImpl(this);

  _AccountDatabaseUpdateAll get updateAll =>
      _AccountDatabaseUpdateAllImpl(this);
}

sealed class _AccountDatabaseQueryUpdate {
  int call({
    String? special_type,
    String? from_app_id,
    int? owner_account_user_id,
  });
}

class _AccountDatabaseQueryUpdateImpl implements _AccountDatabaseQueryUpdate {
  const _AccountDatabaseQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<AccountDatabase> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (special_type != ignore) 1: special_type as String?,
      if (from_app_id != ignore) 2: from_app_id as String?,
      if (owner_account_user_id != ignore) 3: owner_account_user_id as int?,
    });
  }
}

extension AccountDatabaseQueryUpdate on IsarQuery<AccountDatabase> {
  _AccountDatabaseQueryUpdate get updateFirst =>
      _AccountDatabaseQueryUpdateImpl(this, limit: 1);

  _AccountDatabaseQueryUpdate get updateAll =>
      _AccountDatabaseQueryUpdateImpl(this);
}

class _AccountDatabaseQueryBuilderUpdateImpl
    implements _AccountDatabaseQueryUpdate {
  const _AccountDatabaseQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<AccountDatabase, AccountDatabase, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? special_type = ignore,
    Object? from_app_id = ignore,
    Object? owner_account_user_id = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (special_type != ignore) 1: special_type as String?,
        if (from_app_id != ignore) 2: from_app_id as String?,
        if (owner_account_user_id != ignore) 3: owner_account_user_id as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension AccountDatabaseQueryBuilderUpdate
    on QueryBuilder<AccountDatabase, AccountDatabase, QOperations> {
  _AccountDatabaseQueryUpdate get updateFirst =>
      _AccountDatabaseQueryBuilderUpdateImpl(this, limit: 1);

  _AccountDatabaseQueryUpdate get updateAll =>
      _AccountDatabaseQueryBuilderUpdateImpl(this);
}

extension AccountDatabaseQueryFilter
    on QueryBuilder<AccountDatabase, AccountDatabase, QFilterCondition> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      special_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      from_app_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      owner_account_user_idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension AccountDatabaseQueryObject
    on QueryBuilder<AccountDatabase, AccountDatabase, QFilterCondition> {}

extension AccountDatabaseQuerySortBy
    on QueryBuilder<AccountDatabase, AccountDatabase, QSortBy> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      sortByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension AccountDatabaseQuerySortThenBy
    on QueryBuilder<AccountDatabase, AccountDatabase, QSortThenBy> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenBySpecial_typeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByFrom_app_idDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy>
      thenByOwner_account_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }
}

extension AccountDatabaseQueryWhereDistinct
    on QueryBuilder<AccountDatabase, AccountDatabase, QDistinct> {
  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctBySpecial_type({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByFrom_app_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountDatabase, AccountDatabase, QAfterDistinct>
      distinctByOwner_account_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }
}

extension AccountDatabaseQueryProperty1
    on QueryBuilder<AccountDatabase, AccountDatabase, QProperty> {
  QueryBuilder<AccountDatabase, String, QAfterProperty> special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, String, QAfterProperty> from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, int, QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension AccountDatabaseQueryProperty2<R>
    on QueryBuilder<AccountDatabase, R, QAfterProperty> {
  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, (R, String), QAfterProperty>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, (R, int), QAfterProperty>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}

extension AccountDatabaseQueryProperty3<R1, R2>
    on QueryBuilder<AccountDatabase, (R1, R2), QAfterProperty> {
  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      special_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, String), QOperations>
      from_app_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, int), QOperations>
      owner_account_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<AccountDatabase, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }
}
""",
                        children: [],
                      )
                    ],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_isar_scheme/lib/base_template_general_framework_project_client_isar_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_client_isar_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_client_isar_scheme/test/base_template_general_framework_project_client_isar_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value:
                    r"""import 'package:base_template_general_framework_project_client_isar_scheme/base_template_general_framework_project_client_isar_scheme.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_isar_scheme/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_isar_scheme/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_isar_scheme/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_isar_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: base_template_general_framework_project_client_isar_scheme
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo
publish_to: none
environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

  base_template_general_framework_project_scheme:
    path: ../base_template_general_framework_project_scheme  
  isar: '^4.0.0-dev.14'
dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
  build_runner: 'any'""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_client_isar_scheme/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_flutter"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_flutter/.idea"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_flutter/.idea/libraries"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_flutter/.idea/libraries/Dart_SDK.xml"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<component name="libraryTable">
  <library name="Dart SDK">
    <CLASSES>
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/async" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/collection" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/convert" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/core" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/developer" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/html" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/io" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/isolate" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/math" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/mirrors" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/typed_data" />
    </CLASSES>
    <JAVADOC />
    <SOURCES />
  </library>
</component>""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_flutter/.idea/modules.xml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="ProjectModuleManager">
    <modules>
      <module fileurl="file://$PROJECT_DIR$/base_template_general_framework_project_flutter.iml" filepath="$PROJECT_DIR$/base_template_general_framework_project_flutter.iml" />
    </modules>
  </component>
</project>
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_flutter/.idea/workspace.xml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="FileEditorManager">
    <leaf>
      <file leaf-file-name="main.dart" pinned="false" current-in-tab="true">
        <entry file="file://$PROJECT_DIR$/lib/main.dart">
          <provider selected="true" editor-type-id="text-editor">
            <state relative-caret-position="0">
              <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />
            </state>
          </provider>
        </entry>
      </file>
    </leaf>
  </component>
  <component name="ToolWindowManager">
    <editor active="true" />
    <layout>
      <window_info id="Project" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="true" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="0" side_tool="false" content_ui="combo" />
    </layout>
  </component>
  <component name="ProjectView">
    <navigator currentView="ProjectPane" proportions="" version="1">
    </navigator>
    <panes>
      <pane id="ProjectPane">
        <option name="show-excluded-files" value="false" />
      </pane>
    </panes>
  </component>
  <component name="PropertiesComponent">
    <property name="last_opened_file_path" value="$PROJECT_DIR$" />
    <property name="dart.analysis.tool.window.force.activate" value="true" />
    <property name="show.migrate.to.gradle.popup" value="false" />
  </component>
</project>
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_flutter/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_flutter/lib/client"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_flutter/lib/client/client.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "core.dart";
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_flutter/lib/client/core.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import 'dart:async';

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart';
import 'package:flutter/material.dart';

import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/flutter/client/base.dart';

class BaseTemplateGeneralFrameworkProjectClientFlutter
    extends GeneralFrameworkClientFlutter<
        BaseTemplateGeneralFrameworkProjectClient> {
  BaseTemplateGeneralFrameworkProjectClientFlutter({
    required super.navigatorKey,
    required super.generalLibrary,
    required super.generalFrameworkClient,
  });

  @override
  FutureOr<void> ensureInitialized({
    required BuildContext context,
    required FutureOr<void> Function(
      String textLoading,
    ) onLoading,
  }) async {
    await super.ensureInitialized(
      context: context,
      onLoading: onLoading,
    );
  }

  @override
  FutureOr<dynamic> onInvokeResult(
    Map result,
    Map parameters,
    GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions,
  ) async {}

  @override
  FutureOr<dynamic> onInvokeRequest(
      Map result,
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {}

  @override
  FutureOr<Map?> onInvokeValidation(
      Map parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    return null;
  }
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_flutter/lib/base_template_general_framework_project_flutter.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/.flutter-plugins"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This is a generated file; do not edit or check into version control.
battery_plus=/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/
camera=/home/galaxeus/.pub-cache/hosted/pub.dev/camera-0.11.0+2/
camera_android_camerax=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/
camera_avfoundation=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+1/
camera_web=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.4/
camera_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/
file_picker=/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/
flutter_background=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/
flutter_plugin_android_lifecycle=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.21/
flutter_tts=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/
gamepads=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads-0.1.2/
gamepads_android=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_android-0.1.2/
gamepads_darwin=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_darwin-0.1.2/
gamepads_ios=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_ios-0.1.2/
gamepads_linux=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_linux-0.1.1+1/
gamepads_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_windows-0.1.1+1/
local_auth=/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth-2.3.0/
local_auth_android=/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_android-1.0.43/
local_auth_darwin=/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/
local_auth_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_windows-1.0.11/
media_kit_video=/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/
package_info_plus=/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/
path_provider=/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider-2.1.4/
path_provider_android=/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_android-2.2.10/
path_provider_foundation=/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_foundation-2.4.0/
path_provider_linux=/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_linux-2.2.1/
path_provider_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_windows-2.3.0/
permission_handler=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler-11.3.1/
permission_handler_android=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_android-12.0.7/
permission_handler_apple=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.5/
permission_handler_html=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_html-0.1.3+2/
permission_handler_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_windows-0.2.1/
safe_device=/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.8/
screen_brightness=/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness-0.2.2+1/
screen_brightness_android=/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_android-0.1.0+2/
screen_brightness_ios=/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_ios-0.1.0/
screen_brightness_macos=/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_macos-0.1.0+1/
screen_brightness_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_windows-0.1.3/
sim_card_info=/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/
sms_flutter=/home/galaxeus/.pub-cache/hosted/pub.dev/sms_flutter-0.0.0/
speech_to_text=/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/
url_launcher=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher-6.3.0/
url_launcher_android=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_android-6.3.8/
url_launcher_ios=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_ios-6.3.1/
url_launcher_linux=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_linux-3.1.1/
url_launcher_macos=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_macos-3.2.0/
url_launcher_web=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_web-2.3.3/
url_launcher_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_windows-3.1.2/
volume_controller=/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.7/
wakelock_plus=/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/.flutter-plugins-dependencies"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_avfoundation","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+1/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_ios-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"path_provider_foundation","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_foundation-2.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"permission_handler_apple","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.5/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.8/","native_build":true,"dependencies":[]},{"name":"screen_brightness_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_ios-0.1.0/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"sms_flutter","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sms_flutter-0.0.0/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"url_launcher_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_ios-6.3.1/","native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.7/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"android":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_android_camerax","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/","native_build":true,"dependencies":[]},{"name":"flutter_plugin_android_lifecycle","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.21/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_android-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_android-1.0.43/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"path_provider_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_android-2.2.10/","native_build":true,"dependencies":[]},{"name":"permission_handler_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_android-12.0.7/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.8/","native_build":true,"dependencies":[]},{"name":"screen_brightness_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_android-0.1.0+2/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"sms_flutter","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sms_flutter-0.0.0/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","native_build":true,"dependencies":[]},{"name":"url_launcher_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_android-6.3.8/","native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.7/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"macos":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_darwin-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"path_provider_foundation","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_foundation-2.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"screen_brightness_macos","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_macos-0.1.0+1/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"url_launcher_macos","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_macos-3.2.0/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"linux":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":false,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"gamepads_linux","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_linux-0.1.1+1/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"path_provider_linux","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_linux-2.2.1/","native_build":false,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"url_launcher_linux","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_linux-3.1.1/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"windows":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_windows-0.1.1+1/","native_build":true,"dependencies":[]},{"name":"local_auth_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_windows-1.0.11/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"path_provider_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/path_provider_windows-2.3.0/","native_build":false,"dependencies":[]},{"name":"permission_handler_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_windows-0.2.1/","native_build":true,"dependencies":[]},{"name":"screen_brightness_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_windows-0.1.3/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"url_launcher_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_windows-3.1.2/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"web":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","dependencies":[]},{"name":"camera_web","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.4/","dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","dependencies":[]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","dependencies":[]},{"name":"permission_handler_html","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_html-0.1.3+2/","dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","dependencies":[]},{"name":"sms_flutter","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sms_flutter-0.0.0/","dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","dependencies":[]},{"name":"url_launcher_web","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/url_launcher_web-2.3.3/","dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","dependencies":["package_info_plus"]}]},"dependencyGraph":[{"name":"battery_plus","dependencies":[]},{"name":"camera","dependencies":["camera_android_camerax","camera_avfoundation","camera_web","flutter_plugin_android_lifecycle"]},{"name":"camera_android_camerax","dependencies":[]},{"name":"camera_avfoundation","dependencies":[]},{"name":"camera_web","dependencies":[]},{"name":"camera_windows","dependencies":[]},{"name":"file_picker","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"gamepads","dependencies":["gamepads_android","gamepads_darwin","gamepads_ios","gamepads_linux","gamepads_windows"]},{"name":"gamepads_android","dependencies":[]},{"name":"gamepads_darwin","dependencies":[]},{"name":"gamepads_ios","dependencies":[]},{"name":"gamepads_linux","dependencies":[]},{"name":"gamepads_windows","dependencies":[]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"media_kit_video","dependencies":["wakelock_plus","screen_brightness","volume_controller"]},{"name":"package_info_plus","dependencies":[]},{"name":"path_provider","dependencies":["path_provider_android","path_provider_foundation","path_provider_linux","path_provider_windows"]},{"name":"path_provider_android","dependencies":[]},{"name":"path_provider_foundation","dependencies":[]},{"name":"path_provider_linux","dependencies":[]},{"name":"path_provider_windows","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"safe_device","dependencies":[]},{"name":"screen_brightness","dependencies":["screen_brightness_android","screen_brightness_ios","screen_brightness_macos","screen_brightness_windows"]},{"name":"screen_brightness_android","dependencies":[]},{"name":"screen_brightness_ios","dependencies":[]},{"name":"screen_brightness_macos","dependencies":[]},{"name":"screen_brightness_windows","dependencies":[]},{"name":"sim_card_info","dependencies":[]},{"name":"sms_flutter","dependencies":["url_launcher"]},{"name":"speech_to_text","dependencies":[]},{"name":"url_launcher","dependencies":["url_launcher_android","url_launcher_ios","url_launcher_linux","url_launcher_macos","url_launcher_web","url_launcher_windows"]},{"name":"url_launcher_android","dependencies":[]},{"name":"url_launcher_ios","dependencies":[]},{"name":"url_launcher_linux","dependencies":[]},{"name":"url_launcher_macos","dependencies":[]},{"name":"url_launcher_web","dependencies":[]},{"name":"url_launcher_windows","dependencies":[]},{"name":"volume_controller","dependencies":[]},{"name":"wakelock_plus","dependencies":["package_info_plus"]}],"date_created":"2024-09-14 16:39:32.078053","version":"3.22.3"}""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.buildlog/
.history
.svn/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
# Libraries should not include pubspec.lock, per https://dart.dev/guides/libraries/private-files#pubspeclock.
/pubspec.lock
**/doc/api/
.dart_tool/
build/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/.metadata"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "b0850beeb25f6d5b10426284f506557f66181b36"
  channel: "stable"

project_type: package
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""include: package:flutter_lints/flutter.yaml

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/base_template_general_framework_project_flutter.iml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<module type="JAVA_MODULE" version="4">
  <component name="NewModuleRootManager" inherit-compiler-output="true">
    <exclude-output />
    <content url="file://$MODULE_DIR$">
      <sourceFolder url="file://$MODULE_DIR$/lib" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/test" isTestSource="true" />
      <excludeFolder url="file://$MODULE_DIR$/.dart_tool" />
      <excludeFolder url="file://$MODULE_DIR$/.idea" />
      <excludeFolder url="file://$MODULE_DIR$/build" />
    </content>
    <orderEntry type="jdk" jdkName="Android API 29 Platform" jdkType="Android SDK" />
    <orderEntry type="sourceFolder" forTests="false" />
    <orderEntry type="library" name="Dart Packages" level="project" />
    <orderEntry type="library" name="Dart SDK" level="project" />
    <orderEntry type="library" name="Flutter Plugins" level="project" />
  </component>
</module>
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 0.0.1

* TODO: Describe initial release.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""TODO: Add your license here.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: 'base_template_general_framework_project_flutter'
description: 'A new Flutter package project.'
version: '0.0.1'
homepage: null
publish_to: none
environment: 
  sdk: '>=3.3.3 <4.0.0'
  flutter: '>=1.17.0'
dependencies: 
  flutter: 
    sdk: 'flutter'
  path: '^1.9.0' 
  general_lib: '^0.0.44'
  general: '^0.0.29'
  base_template_general_framework_project_client:
    path: ../base_template_general_framework_project_client
  base_template_general_framework_project_secret:
    path: ../base_template_general_framework_project_secret
  general_framework:
    path: ../../../../
dev_dependencies: 
  flutter_test: 
    sdk: 'flutter'
  flutter_lints: '^3.0.0'
flutter: null
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_flutter/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "library/base_template_general_framework_project_media_server"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_media_server/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_media_server/bin/base_template_general_framework_project_media_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_media_server/base_template_general_framework_project_media_server.dart'
    as base_template_general_framework_project_media_server;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_media_server.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_media_server/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_media_server/lib/base_template_general_framework_project_media_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_media_server/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_media_server/test/base_template_general_framework_project_media_server_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_media_server/base_template_general_framework_project_media_server.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_media_server/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_media_server/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_media_server/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_media_server/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_media_server'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: null
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_media_server/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity:
            Directory("library/base_template_general_framework_project_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_scheme/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_scheme/bin/base_template_general_framework_project_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value:
                    r"""// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

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
  Directory get init {
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
//   await api_file_methods.writeAsString('''
// // ignore_for_file: non_constant_identifier_names
// List<String> api_method_lists = ${json.encode(api_methods)};
// '''
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
  String script = '''
// ignore_for_file: non_constant_identifier_names

import 'package:base_template_general_framework_project_client/base_template_general_framework_project_client_core.dart'; 
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:general_framework/core/client/options.dart'; 


extension BaseTemplateGeneralFrameworkProjectClientExtensionInvokeApiGenerate on BaseTemplateGeneralFrameworkProjectClient {


''';
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
    script += '''

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

'''
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
    if (file.existsSync()) {
      int size = file.statSync().size;
      if (size > 1) {
        continue;
      }
    }
    String script = '''
// ignore_for_file: non_constant_identifier_names
import 'dart:async';

import 'package:base_template_general_framework_project_api/base_template_general_framework_project_api_core.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/ok.dart';

extension BaseTemplateGeneralFrameworkProjectApiExtension${special_type.toLowerCaseFirstData()}${return_type} on BaseTemplateGeneralFrameworkProjectApi {

''';
    script += "\n";

    script += '''

  FutureOr<${return_type}> api_${special_type.toLowerCaseFirstData()}() {
    return ${return_type}({
      "@type": "error",
      "message": "unimplemented"
    });
  }
''';
    script += "\n";
    script += "}";
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
    "base_template_general_framework_project_client_isar_scheme",
  ));

  if (directory.existsSync() == false) {
    directory.createSync(recursive: true);
  }

  for (var i = 0; i < database_schemes.length; i++) {
    database_schemes[i].addAll({
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
    await jsonDataScript.saveToFile(Directory(path.join(
      directory.path,
      "lib",
      "database",
      "scheme",
    )));
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
    ],
    workingDirectory: directory.path,
  );
  int exit_code = await result.exitCode;
  print(exit_code);
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/api_scheme"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/api_scheme/api_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "sign_in.dart";
export "sign_up.dart";
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/api_scheme/sign_in.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class SignIn extends JsonScheme {
  SignIn(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "signIn",
      "username": "",
      "password": "",
      "@platform_id": "",
      "@platform_username": "",
      "@extra": "",
      "@expire_date": "",
      "@token": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == signIn
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [SignIn]
  /// Empty
  static SignIn empty() {
    return SignIn({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  set username(String? value) {
    rawData["username"] = value;
  }

  String? get password {
    try {
      if (rawData["password"] is String == false) {
        return null;
      }
      return rawData["password"] as String;
    } catch (e) {
      return null;
    }
  }

  set password(String? value) {
    rawData["password"] = value;
  }

  String? get special_platform_id {
    try {
      if (rawData["@platform_id"] is String == false) {
        return null;
      }
      return rawData["@platform_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_id(String? value) {
    rawData["@platform_id"] = value;
  }

  String? get special_platform_username {
    try {
      if (rawData["@platform_username"] is String == false) {
        return null;
      }
      return rawData["@platform_username"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_username(String? value) {
    rawData["@platform_username"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_token {
    try {
      if (rawData["@token"] is String == false) {
        return null;
      }
      return rawData["@token"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_token(String? value) {
    rawData["@token"] = value;
  }

  static SignIn create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "signIn",
    String? username,
    String? password,
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
  }) {
    // SignIn signIn = SignIn({
    final Map signIn_data_create_json = {
      "@type": special_type,
      "username": username,
      "password": password,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,
    };

    signIn_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (signIn_data_create_json.containsKey(key) == false) {
          signIn_data_create_json[key] = value;
        }
      });
    }
    return SignIn(signIn_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/api_scheme/sign_up.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class SignUp extends JsonScheme {
  SignUp(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "signUp",
      "username": "",
      "password": "",
      "@return_type": "ok",
      "@platform_id": "",
      "@platform_username": "",
      "@extra": "",
      "@expire_date": "",
      "@token": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == signUp
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [SignUp]
  /// Empty
  static SignUp empty() {
    return SignUp({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  set username(String? value) {
    rawData["username"] = value;
  }

  String? get password {
    try {
      if (rawData["password"] is String == false) {
        return null;
      }
      return rawData["password"] as String;
    } catch (e) {
      return null;
    }
  }

  set password(String? value) {
    rawData["password"] = value;
  }

  String? get special_return_type {
    try {
      if (rawData["@return_type"] is String == false) {
        return null;
      }
      return rawData["@return_type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_return_type(String? value) {
    rawData["@return_type"] = value;
  }

  String? get special_platform_id {
    try {
      if (rawData["@platform_id"] is String == false) {
        return null;
      }
      return rawData["@platform_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_id(String? value) {
    rawData["@platform_id"] = value;
  }

  String? get special_platform_username {
    try {
      if (rawData["@platform_username"] is String == false) {
        return null;
      }
      return rawData["@platform_username"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_platform_username(String? value) {
    rawData["@platform_username"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_token {
    try {
      if (rawData["@token"] is String == false) {
        return null;
      }
      return rawData["@token"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_token(String? value) {
    rawData["@token"] = value;
  }

  static SignUp create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "signUp",
    String? username,
    String? password,
    String special_return_type = "ok",
    String special_platform_id = "",
    String special_platform_username = "",
    String special_extra = "",
    String special_expire_date = "",
    String special_token = "",
  }) {
    // SignUp signUp = SignUp({
    final Map signUp_data_create_json = {
      "@type": special_type,
      "username": username,
      "password": password,
      "@return_type": special_return_type,
      "@platform_id": special_platform_id,
      "@platform_username": special_platform_username,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@token": special_token,
    };

    signUp_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (signUp_data_create_json.containsKey(key) == false) {
          signUp_data_create_json[key] = value;
        }
      });
    }
    return SignUp(signUp_data_create_json);
  }
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/database_scheme"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/database_scheme/account_database.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class AccountDatabase extends JsonScheme {
  AccountDatabase(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "accountDatabase",
      "from_app_id": "",
      "owner_account_user_id": 0
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == accountDatabase
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [AccountDatabase]
  /// Empty
  static AccountDatabase empty() {
    return AccountDatabase({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get from_app_id {
    try {
      if (rawData["from_app_id"] is String == false) {
        return null;
      }
      return rawData["from_app_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set from_app_id(String? value) {
    rawData["from_app_id"] = value;
  }

  num? get owner_account_user_id {
    try {
      if (rawData["owner_account_user_id"] is num == false) {
        return null;
      }
      return rawData["owner_account_user_id"] as num;
    } catch (e) {
      return null;
    }
  }

  set owner_account_user_id(num? value) {
    rawData["owner_account_user_id"] = value;
  }

  static AccountDatabase create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "accountDatabase",
    String? from_app_id,
    num? owner_account_user_id,
  }) {
    // AccountDatabase accountDatabase = AccountDatabase({
    final Map accountDatabase_data_create_json = {
      "@type": special_type,
      "from_app_id": from_app_id,
      "owner_account_user_id": owner_account_user_id,
    };

    accountDatabase_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (accountDatabase_data_create_json.containsKey(key) == false) {
          accountDatabase_data_create_json[key] = value;
        }
      });
    }
    return AccountDatabase(accountDatabase_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/database_scheme/database_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "account_database.dart";
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/respond_scheme"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/respond_scheme/error.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Error extends JsonScheme {
  Error(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "error",
      "message": "",
      "@extra": "",
      "@expire_date": "",
      "@client_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == error
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Error]
  /// Empty
  static Error empty() {
    return Error({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get message {
    try {
      if (rawData["message"] is String == false) {
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  set message(String? value) {
    rawData["message"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  static Error create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "error",
    String? message,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Error error = Error({
    final Map error_data_create_json = {
      "@type": special_type,
      "message": message,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    error_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (error_data_create_json.containsKey(key) == false) {
          error_data_create_json[key] = value;
        }
      });
    }
    return Error(error_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/respond_scheme/ok.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Ok extends JsonScheme {
  Ok(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "ok", "@extra": "", "@expire_date": "", "@client_id": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == ok
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Ok]
  /// Empty
  static Ok empty() {
    return Ok({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  static Ok create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "ok",
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Ok ok = Ok({
    final Map ok_data_create_json = {
      "@type": special_type,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    ok_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (ok_data_create_json.containsKey(key) == false) {
          ok_data_create_json[key] = value;
        }
      });
    }
    return Ok(ok_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/respond_scheme/respond_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "error.dart";
export "ok.dart";
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/scheme"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/scheme/error.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Error extends JsonScheme {
  Error(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "error", "message": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == error
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Error]
  /// Empty
  static Error empty() {
    return Error({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get message {
    try {
      if (rawData["message"] is String == false) {
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  set message(String? value) {
    rawData["message"] = value;
  }

  static Error create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "error",
    String? message,
  }) {
    // Error error = Error({
    final Map error_data_create_json = {
      "@type": special_type,
      "message": message,
    };

    error_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (error_data_create_json.containsKey(key) == false) {
          error_data_create_json[key] = value;
        }
      });
    }
    return Error(error_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/scheme/ok.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Ok extends JsonScheme {
  Ok(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "ok"};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == ok
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Ok]
  /// Empty
  static Ok empty() {
    return Ok({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  static Ok create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "ok",
  }) {
    // Ok ok = Ok({
    final Map ok_data_create_json = {
      "@type": special_type,
    };

    ok_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (ok_data_create_json.containsKey(key) == false) {
          ok_data_create_json[key] = value;
        }
      });
    }
    return Ok(ok_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/scheme/scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "error.dart";
export "ok.dart";
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/schemes"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/api_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""final List<Map<String, dynamic>> api_schemes = [
  {"@type": "signUp", "username": "", "password": "", "@return_type": "ok"},
  {
    "@type": "signIn",
    "username": "",
    "password": "",
  }
];
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/database_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""final List<Map<String, dynamic>> database_schemes = [
  {
    "@type": "accountDatabase",
  },
];
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/default_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/respond_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""final List<Map<String, dynamic>> respond_schemes = [
  {
    "@type": "ok",
  },
  {
    "@type": "error",
    "message": "",
  },
];
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/schemes.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""final List<Map<String, dynamic>> schemes = [
  {
    "@type": "ok",
  },
  {
    "@type": "error",
    "message": "",
  },
];
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/schemes/update_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""final List<Map<String, dynamic>> update_schemes = [
  {
    "@type": "ok",
  },
  {
    "@type": "error",
    "message": "",
  },
];
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "library/base_template_general_framework_project_scheme/lib/update_scheme"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/update_scheme/error.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Error extends JsonScheme {
  Error(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {
      "@type": "error",
      "message": "",
      "@extra": "",
      "@expire_date": "",
      "@client_id": ""
    };
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == error
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Error]
  /// Empty
  static Error empty() {
    return Error({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get message {
    try {
      if (rawData["message"] is String == false) {
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  set message(String? value) {
    rawData["message"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  static Error create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "error",
    String? message,
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Error error = Error({
    final Map error_data_create_json = {
      "@type": special_type,
      "message": message,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    error_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (error_data_create_json.containsKey(key) == false) {
          error_data_create_json[key] = value;
        }
      });
    }
    return Error(error_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/update_scheme/ok.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

class Ok extends JsonScheme {
  Ok(super.rawData);

  /// return default data
  ///
  static Map get defaultData {
    return {"@type": "ok", "@extra": "", "@expire_date": "", "@client_id": ""};
  }

  /// check data
  /// if raw data
  /// - rawData["@type"] == ok
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  /// create [Ok]
  /// Empty
  static Ok empty() {
    return Ok({});
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_type(String? value) {
    rawData["@type"] = value;
  }

  String? get special_extra {
    try {
      if (rawData["@extra"] is String == false) {
        return null;
      }
      return rawData["@extra"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_extra(String? value) {
    rawData["@extra"] = value;
  }

  String? get special_expire_date {
    try {
      if (rawData["@expire_date"] is String == false) {
        return null;
      }
      return rawData["@expire_date"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_expire_date(String? value) {
    rawData["@expire_date"] = value;
  }

  String? get special_client_id {
    try {
      if (rawData["@client_id"] is String == false) {
        return null;
      }
      return rawData["@client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  set special_client_id(String? value) {
    rawData["@client_id"] = value;
  }

  static Ok create({
    bool schemeUtilsIsSetDefaultData = false,
    String special_type = "ok",
    String special_extra = "",
    String special_expire_date = "",
    String special_client_id = "",
  }) {
    // Ok ok = Ok({
    final Map ok_data_create_json = {
      "@type": special_type,
      "@extra": special_extra,
      "@expire_date": special_expire_date,
      "@client_id": special_client_id,
    };

    ok_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (ok_data_create_json.containsKey(key) == false) {
          ok_data_create_json[key] = value;
        }
      });
    }
    return Ok(ok_data_create_json);
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "library/base_template_general_framework_project_scheme/lib/update_scheme/update_scheme.dart"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""export "error.dart";
export "ok.dart";
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_scheme/lib/base_template_general_framework_project_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_scheme/supabase_scheme"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_scheme/supabase_scheme/account.supabase_sql"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""-- 1. Create table
CREATE TABLE account ( 
  id bigint generated by default as identity primary key,
  from_app_id text null default format(''::text),
  owner_account_user_id bigint null default 0
);

-- 2. Enable RLS
alter table account enable row level security;

-- 3. ADD Column in Tabble Exist (Optional)
ALTER TABLE account ADD COLUMN from_app_id text DEFAULT format(''::text);
ALTER TABLE account ADD COLUMN owner_account_user_id bigint DEFAULT 0;

-- Recommendation""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_scheme/test/base_template_general_framework_project_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_scheme/base_template_general_framework_project_scheme.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_scheme/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_scheme/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_scheme/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: 'base_template_general_framework_project_scheme'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  path: '^1.9.0' 
  general_lib: '^0.0.44'
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_scheme/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity:
            Directory("library/base_template_general_framework_project_secret"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "library/base_template_general_framework_project_secret/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_secret/lib/base_template_general_framework_project_secret.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
export "base_template_general_framework_project_secret_core.dart";
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "library/base_template_general_framework_project_secret/lib/base_template_general_framework_project_secret_core.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:general_lib/crypto/crypto.dart';

class BaseTemplateGeneralFrameworkProjectSecret {
  final String apiUrl;
  final Crypto crypto = Crypto.defaultCrypto();

  BaseTemplateGeneralFrameworkProjectSecret({
    required this.apiUrl,
    required String cryptoKey,
    required String cryptoIv,
  }) {
    crypto.defaultKey = cryptoKey;
    crypto.defaultIv = cryptoIv;
  }

  BaseTemplateGeneralFrameworkProjectSecret copyWith({
    String? apiUrl,
    String? cryptoKey,
    String? cryptoIv,
  }) {
    return BaseTemplateGeneralFrameworkProjectSecret(
      apiUrl: apiUrl ?? this.apiUrl,
      cryptoKey: cryptoKey ?? crypto.defaultKey,
      cryptoIv: cryptoIv ?? crypto.defaultIv,
    );
  }

  static BaseTemplateGeneralFrameworkProjectSecret defaultData() {
    return BaseTemplateGeneralFrameworkProjectSecret(
      apiUrl: "",
      cryptoKey: Crypto.defaultCrypto().defaultKey,
      cryptoIv: Crypto.defaultCrypto().defaultIv,
    );
  }
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_secret/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_secret/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_secret/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_secret/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: 'base_template_general_framework_project_secret'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  general_lib: '^0.0.44'
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "library/base_template_general_framework_project_secret/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("base_template_general_framework_project"),
    file_system_entity: Directory("production"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "production/base_template_general_framework_project_production_api_server"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_api_server/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_api_server/bin/base_template_general_framework_project_production_api_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_production_api_server/base_template_general_framework_project_production_api_server.dart'
    as base_template_general_framework_project_production_api_server;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_production_api_server.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_api_server/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_api_server/lib/base_template_general_framework_project_production_api_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_api_server/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_api_server/test/base_template_general_framework_project_production_api_server_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_production_api_server/base_template_general_framework_project_production_api_server.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_api_server/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_api_server/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_api_server/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_api_server/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_production_api_server'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: null
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_api_server/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "production/base_template_general_framework_project_production_app"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/.idea"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/.idea/libraries"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/.idea/libraries/Dart_SDK.xml"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<component name="libraryTable">
  <library name="Dart SDK">
    <CLASSES>
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/async" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/collection" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/convert" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/core" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/developer" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/html" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/io" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/isolate" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/math" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/mirrors" />
      <root url="file:///home/galaxeus/development/flutter/bin/cache/dart-sdk/lib/typed_data" />
    </CLASSES>
    <JAVADOC />
    <SOURCES />
  </library>
</component>""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/.idea/libraries/KotlinJavaRuntime.xml"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<component name="libraryTable">
  <library name="KotlinJavaRuntime">
    <CLASSES>
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-stdlib.jar!/" />
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-reflect.jar!/" />
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-test.jar!/" />
    </CLASSES>
    <JAVADOC />
    <SOURCES>
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-stdlib-sources.jar!/" />
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-reflect-sources.jar!/" />
      <root url="jar://$KOTLIN_BUNDLED$/lib/kotlin-test-sources.jar!/" />
    </SOURCES>
  </library>
</component>
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/.idea/runConfigurations"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/.idea/runConfigurations/main_dart.xml"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<component name="ProjectRunConfigurationManager">
  <configuration default="false" name="main.dart" type="FlutterRunConfigurationType" factoryName="Flutter">
    <option name="filePath" value="$PROJECT_DIR$/lib/main.dart" />
    <method />
  </configuration>
</component>""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/.idea/modules.xml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="ProjectModuleManager">
    <modules>
      <module fileurl="file://$PROJECT_DIR$/base_template_general_framework_project_production_app.iml" filepath="$PROJECT_DIR$/base_template_general_framework_project_production_app.iml" />
      <module fileurl="file://$PROJECT_DIR$/android/base_template_general_framework_project_production_app_android.iml" filepath="$PROJECT_DIR$/android/base_template_general_framework_project_production_app_android.iml" />
    </modules>
  </component>
</project>
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/.idea/workspace.xml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="FileEditorManager">
    <leaf>
      <file leaf-file-name="main.dart" pinned="false" current-in-tab="true">
        <entry file="file://$PROJECT_DIR$/lib/main.dart">
          <provider selected="true" editor-type-id="text-editor">
            <state relative-caret-position="0">
              <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />
            </state>
          </provider>
        </entry>
      </file>
    </leaf>
  </component>
  <component name="ToolWindowManager">
    <editor active="true" />
    <layout>
      <window_info id="Project" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="true" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="0" side_tool="false" content_ui="combo" />
    </layout>
  </component>
  <component name="ProjectView">
    <navigator currentView="ProjectPane" proportions="" version="1">
    </navigator>
    <panes>
      <pane id="ProjectPane">
        <option name="show-excluded-files" value="false" />
      </pane>
    </panes>
  </component>
  <component name="PropertiesComponent">
    <property name="last_opened_file_path" value="$PROJECT_DIR$" />
    <property name="dart.analysis.tool.window.force.activate" value="true" />
    <property name="show.migrate.to.gradle.popup" value="false" />
  </component>
</project>
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/android"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/android/app"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/android/app/src"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/android/app/src/debug"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/android/app/src/debug/AndroidManifest.xml"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value:
                                r"""<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- The INTERNET permission is required for development. Specifically,
         the Flutter tool needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
""",
                            children: [],
                          )
                        ],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/android/app/src/main"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: Directory(
                                "production/base_template_general_framework_project_production_app/android/app/src/main/kotlin"),
                            state_data: {},
                            file_system_entity_type:
                                FileSystemEntityType.directory,
                            value: "",
                            children: [
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/kotlin/com"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [
                                  ScriptGenerator(
                                    is_generate: true,
                                    directory_base: Directory(
                                        "base_template_general_framework_project"),
                                    file_system_entity: Directory(
                                        "production/base_template_general_framework_project_production_app/android/app/src/main/kotlin/com/example"),
                                    state_data: {},
                                    file_system_entity_type:
                                        FileSystemEntityType.directory,
                                    value: "",
                                    children: [
                                      ScriptGenerator(
                                        is_generate: true,
                                        directory_base: Directory(
                                            "base_template_general_framework_project"),
                                        file_system_entity: Directory(
                                            "production/base_template_general_framework_project_production_app/android/app/src/main/kotlin/com/example/base_template_general_framework_project_production_app"),
                                        state_data: {},
                                        file_system_entity_type:
                                            FileSystemEntityType.directory,
                                        value: "",
                                        children: [
                                          ScriptGenerator(
                                            is_generate: true,
                                            directory_base: Directory(
                                                "base_template_general_framework_project"),
                                            file_system_entity: File(
                                                "production/base_template_general_framework_project_production_app/android/app/src/main/kotlin/com/example/base_template_general_framework_project_production_app/MainActivity.kt"),
                                            state_data: {},
                                            file_system_entity_type:
                                                FileSystemEntityType.file,
                                            value:
                                                r"""package com.example.base_template_general_framework_project_production_app

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()
""",
                                            children: [],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: Directory(
                                "production/base_template_general_framework_project_production_app/android/app/src/main/res"),
                            state_data: {},
                            file_system_entity_type:
                                FileSystemEntityType.directory,
                            value: "",
                            children: [
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/drawable"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [
                                  ScriptGenerator(
                                    is_generate: true,
                                    directory_base: Directory(
                                        "base_template_general_framework_project"),
                                    file_system_entity: File(
                                        "production/base_template_general_framework_project_production_app/android/app/src/main/res/drawable/launch_background.xml"),
                                    state_data: {},
                                    file_system_entity_type:
                                        FileSystemEntityType.file,
                                    value:
                                        r"""<?xml version="1.0" encoding="utf-8"?>
<!-- Modify this file to customize your launch splash screen -->
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@android:color/white" />

    <!-- You can insert your own image assets here -->
    <!-- <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/launch_image" />
    </item> -->
</layer-list>
""",
                                    children: [],
                                  )
                                ],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/drawable-v21"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [
                                  ScriptGenerator(
                                    is_generate: true,
                                    directory_base: Directory(
                                        "base_template_general_framework_project"),
                                    file_system_entity: File(
                                        "production/base_template_general_framework_project_production_app/android/app/src/main/res/drawable-v21/launch_background.xml"),
                                    state_data: {},
                                    file_system_entity_type:
                                        FileSystemEntityType.file,
                                    value:
                                        r"""<?xml version="1.0" encoding="utf-8"?>
<!-- Modify this file to customize your launch splash screen -->
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="?android:colorBackground" />

    <!-- You can insert your own image assets here -->
    <!-- <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/launch_image" />
    </item> -->
</layer-list>
""",
                                    children: [],
                                  )
                                ],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/mipmap-hdpi"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/mipmap-mdpi"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/mipmap-xhdpi"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/mipmap-xxhdpi"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/mipmap-xxxhdpi"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/values"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [
                                  ScriptGenerator(
                                    is_generate: true,
                                    directory_base: Directory(
                                        "base_template_general_framework_project"),
                                    file_system_entity: File(
                                        "production/base_template_general_framework_project_production_app/android/app/src/main/res/values/styles.xml"),
                                    state_data: {},
                                    file_system_entity_type:
                                        FileSystemEntityType.file,
                                    value:
                                        r"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Theme applied to the Android Window while the process is starting when the OS's Dark Mode setting is off -->
    <style name="LaunchTheme" parent="@android:style/Theme.Light.NoTitleBar">
        <!-- Show a splash screen on the activity. Automatically removed when
             the Flutter engine draws its first frame -->
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>
    <!-- Theme applied to the Android Window as soon as the process has started.
         This theme determines the color of the Android Window while your
         Flutter UI initializes, as well as behind your Flutter UI while its
         running.

         This Theme is only used starting with V2 of Flutter's Android embedding. -->
    <style name="NormalTheme" parent="@android:style/Theme.Light.NoTitleBar">
        <item name="android:windowBackground">?android:colorBackground</item>
    </style>
</resources>
""",
                                    children: [],
                                  )
                                ],
                              ),
                              ScriptGenerator(
                                is_generate: true,
                                directory_base: Directory(
                                    "base_template_general_framework_project"),
                                file_system_entity: Directory(
                                    "production/base_template_general_framework_project_production_app/android/app/src/main/res/values-night"),
                                state_data: {},
                                file_system_entity_type:
                                    FileSystemEntityType.directory,
                                value: "",
                                children: [
                                  ScriptGenerator(
                                    is_generate: true,
                                    directory_base: Directory(
                                        "base_template_general_framework_project"),
                                    file_system_entity: File(
                                        "production/base_template_general_framework_project_production_app/android/app/src/main/res/values-night/styles.xml"),
                                    state_data: {},
                                    file_system_entity_type:
                                        FileSystemEntityType.file,
                                    value:
                                        r"""<?xml version="1.0" encoding="utf-8"?>
<resources>
    <!-- Theme applied to the Android Window while the process is starting when the OS's Dark Mode setting is on -->
    <style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">
        <!-- Show a splash screen on the activity. Automatically removed when
             the Flutter engine draws its first frame -->
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>
    <!-- Theme applied to the Android Window as soon as the process has started.
         This theme determines the color of the Android Window while your
         Flutter UI initializes, as well as behind your Flutter UI while its
         running.

         This Theme is only used starting with V2 of Flutter's Android embedding. -->
    <style name="NormalTheme" parent="@android:style/Theme.Black.NoTitleBar">
        <item name="android:windowBackground">?android:colorBackground</item>
    </style>
</resources>
""",
                                    children: [],
                                  )
                                ],
                              )
                            ],
                          ),
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/android/app/src/main/AndroidManifest.xml"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value:
                                r"""<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application
        android:label="base_template_general_framework_project_production_app"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:launchMode="singleTop"
            android:taskAffinity=""
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <!-- Specifies an Android theme to apply to this Activity as soon as
                 the Android process has started. This theme is visible to the user
                 while the Flutter UI initializes. After that, this theme continues
                 to determine the Window background behind the Flutter UI. -->
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <!-- Don't delete the meta-data below.
             This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
    <!-- Required to query activities that can process text, see:
         https://developer.android.com/training/package-visibility and
         https://developer.android.com/reference/android/content/Intent#ACTION_PROCESS_TEXT.

         In particular, this is used by the Flutter engine in io.flutter.plugin.text.ProcessTextPlugin. -->
    <queries>
        <intent>
            <action android:name="android.intent.action.PROCESS_TEXT"/>
            <data android:mimeType="text/plain"/>
        </intent>
    </queries>
</manifest>
""",
                            children: [],
                          )
                        ],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/android/app/src/profile"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/android/app/src/profile/AndroidManifest.xml"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value:
                                r"""<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- The INTERNET permission is required for development. Specifically,
         the Flutter tool needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>
</manifest>
""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/android/app/build.gradle"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""plugins {
    id "com.android.application"
    id "kotlin-android"
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id "dev.flutter.flutter-gradle-plugin"
}

def localProperties = new Properties()
def localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader("UTF-8") { reader ->
        localProperties.load(reader)
    }
}

def flutterVersionCode = localProperties.getProperty("flutter.versionCode")
if (flutterVersionCode == null) {
    flutterVersionCode = "1"
}

def flutterVersionName = localProperties.getProperty("flutter.versionName")
if (flutterVersionName == null) {
    flutterVersionName = "1.0"
}

android {
    namespace = "com.example.base_template_general_framework_project_production_app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.base_template_general_framework_project_production_app"
        // You can update the following values to match your application needs.
        // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutterVersionCode.toInteger()
        versionName = flutterVersionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.debug
        }
    }
}

flutter {
    source = "../.."
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/android/gradle"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/android/gradle/wrapper"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/android/gradle/wrapper/gradle-wrapper.properties"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https\://services.gradle.org/distributions/gradle-7.6.3-all.zip
""",
                        children: [],
                      )
                    ],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/.gitignore"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java

# Remember to never publicly share your keystore.
# See https://flutter.dev/docs/deployment/android#reference-the-keystore-from-the-app
key.properties
**/*.keystore
**/*.jks
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
.dart_tool/
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/base_template_general_framework_project_production_app_android.iml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<module type="JAVA_MODULE" version="4">
  <component name="FacetManager">
    <facet type="android" name="Android">
      <configuration>
        <option name="ALLOW_USER_CONFIGURATION" value="false" />
        <option name="GEN_FOLDER_RELATIVE_PATH_APT" value="/gen" />
        <option name="GEN_FOLDER_RELATIVE_PATH_AIDL" value="/gen" />
        <option name="MANIFEST_FILE_RELATIVE_PATH" value="/app/src/main/AndroidManifest.xml" />
        <option name="RES_FOLDER_RELATIVE_PATH" value="/app/src/main/res" />
        <option name="ASSETS_FOLDER_RELATIVE_PATH" value="/app/src/main/assets" />
        <option name="LIBS_FOLDER_RELATIVE_PATH" value="/app/src/main/libs" />
        <option name="PROGUARD_LOGS_FOLDER_RELATIVE_PATH" value="/app/src/main/proguard_logs" />
      </configuration>
    </facet>
  </component>
  <component name="NewModuleRootManager" inherit-compiler-output="true">
    <exclude-output />
    <content url="file://$MODULE_DIR$">
      <sourceFolder url="file://$MODULE_DIR$/app/src/main/java" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/app/src/main/kotlin" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/gen" isTestSource="false" generated="true" />
    </content>
    <orderEntry type="jdk" jdkName="Android API 29 Platform" jdkType="Android SDK" />
    <orderEntry type="sourceFolder" forTests="false" />
    <orderEntry type="library" name="Flutter for Android" level="project" />
    <orderEntry type="library" name="KotlinJavaRuntime" level="project" />
  </component>
</module>
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/build.gradle"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = "../build"
subprojects {
    project.buildDir = "${rootProject.buildDir}/${project.name}"
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register("clean", Delete) {
    delete rootProject.buildDir
}
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/gradle.properties"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value:
                    r"""org.gradle.jvmargs=-Xmx4G -XX:+HeapDumpOnOutOfMemoryError
android.useAndroidX=true
android.enableJetifier=true
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/gradlew"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""#!/usr/bin/env bash

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn ( ) {
    echo "$*"
}

die ( ) {
    echo
    echo "$*"
    echo
    exit 1
}

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
esac

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -H -n`
    if [ $? -eq 0 ] ; then
        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
            MAX_FD="$MAX_FD_LIMIT"
        fi
        ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then
            warn "Could not set maximum file descriptor limit: $MAX_FD"
        fi
    else
        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi

# For Darwin, add options to specify how the application appears in the dock
if $darwin; then
    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""
fi

# For Cygwin, switch paths to Windows format before running java
if $cygwin ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`
    SEP=""
    for dir in $ROOTDIRSRAW ; do
        ROOTDIRS="$ROOTDIRS$SEP$dir"
        SEP="|"
    done
    OURCYGPATTERN="(^($ROOTDIRS))"
    # Add a user-defined pattern to the cygpath arguments
    if [ "$GRADLE_CYGPATTERN" != "" ] ; then
        OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"
    fi
    # Now convert the arguments - kludge to limit ourselves to /bin/sh
    i=0
    for arg in "$@" ; do
        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`
        CHECK2=`echo "$arg"|egrep -c "^-"`                                 ### Determine if an option

        if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then                    ### Added a condition
            eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`
        else
            eval `echo args$i`="\"$arg\""
        fi
        i=$((i+1))
    done
    case $i in
        (0) set -- ;;
        (1) set -- "$args0" ;;
        (2) set -- "$args0" "$args1" ;;
        (3) set -- "$args0" "$args1" "$args2" ;;
        (4) set -- "$args0" "$args1" "$args2" "$args3" ;;
        (5) set -- "$args0" "$args1" "$args2" "$args3" "$args4" ;;
        (6) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;
        (7) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;
        (8) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;
        (9) set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;;
    esac
fi

# Split up the JVM_OPTS And GRADLE_OPTS values into an array, following the shell quoting and substitution rules
function splitJvmOpts() {
    JVM_OPTS=("$@")
}
eval splitJvmOpts $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS
JVM_OPTS[${#JVM_OPTS[*]}]="-Dorg.gradle.appname=$APP_BASE_NAME"

exec "$JAVACMD" "${JVM_OPTS[@]}" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/gradlew.bat"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/local.properties"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""sdk.dir=/home/galaxeus/Android/Sdk
flutter.sdk=/home/galaxeus/development/flutter""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/android/settings.gradle"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""pluginManagement {
    def flutterSdkPath = {
        def properties = new Properties()
        file("local.properties").withInputStream { properties.load(it) }
        def flutterSdkPath = properties.getProperty("flutter.sdk")
        assert flutterSdkPath != null, "flutter.sdk not set in local.properties"
        return flutterSdkPath
    }()

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id "dev.flutter.flutter-plugin-loader" version "1.0.0"
    id "com.android.application" version "7.3.0" apply false
    id "org.jetbrains.kotlin.android" version "1.7.10" apply false
}

include ":app"
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/ios"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/ios/Flutter"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Flutter/AppFrameworkInfo.plist"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>CFBundleDevelopmentRegion</key>
  <string>en</string>
  <key>CFBundleExecutable</key>
  <string>App</string>
  <key>CFBundleIdentifier</key>
  <string>io.flutter.flutter.app</string>
  <key>CFBundleInfoDictionaryVersion</key>
  <string>6.0</string>
  <key>CFBundleName</key>
  <string>App</string>
  <key>CFBundlePackageType</key>
  <string>FMWK</string>
  <key>CFBundleShortVersionString</key>
  <string>1.0</string>
  <key>CFBundleSignature</key>
  <string>????</string>
  <key>CFBundleVersion</key>
  <string>1.0</string>
  <key>MinimumOSVersion</key>
  <string>12.0</string>
</dict>
</plist>
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Flutter/Debug.xcconfig"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#include "Generated.xcconfig"
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Flutter/Release.xcconfig"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#include "Generated.xcconfig"
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/ios/Runner"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets/AppIcon.appiconset"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""/* <!-- START LICENSE -->


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
{
  "images" : [
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "Icon-App-83.5x83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "Icon-App-1024x1024@1x.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
""",
                            children: [],
                          )
                        ],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets/LaunchImage.imageset"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""/* <!-- START LICENSE -->


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
{
  "images" : [
    {
      "idiom" : "universal",
      "filename" : "LaunchImage.png",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@3x.png",
      "scale" : "3x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
""",
                            children: [],
                          ),
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/ios/Runner/Base.lproj"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/ios/Runner/Base.lproj/LaunchScreen.storyboard"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12121" systemVersion="16G29" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" colorMatched="YES" initialViewController="01J-lp-oVM">
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12089"/>
    </dependencies>
    <scenes>
        <!--View Controller-->
        <scene sceneID="EHf-IW-A2E">
            <objects>
                <viewController id="01J-lp-oVM" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="Ydg-fD-yQy"/>
                        <viewControllerLayoutGuide type="bottom" id="xbc-2k-c8Z"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <imageView opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" image="LaunchImage" translatesAutoresizingMaskIntoConstraints="NO" id="YRO-k0-Ey4">
                            </imageView>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerX" secondItem="Ze5-6b-2t3" secondAttribute="centerX" id="1a2-6s-vTC"/>
                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerY" secondItem="Ze5-6b-2t3" secondAttribute="centerY" id="4X2-HB-R7a"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="53" y="375"/>
        </scene>
    </scenes>
    <resources>
        <image name="LaunchImage" width="168" height="185"/>
    </resources>
</document>
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/ios/Runner/Base.lproj/Main.storyboard"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="10117" systemVersion="15F34" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" initialViewController="BYZ-38-t0r">
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="10085"/>
    </dependencies>
    <scenes>
        <!--Flutter View Controller-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="FlutterViewController" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="y3c-jy-aDJ"/>
                        <viewControllerLayoutGuide type="bottom" id="wfy-db-euE"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
        </scene>
    </scenes>
</document>
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Runner/AppDelegate.swift"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import Flutter
import UIKit

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Runner/Info.plist"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleDisplayName</key>
	<string>Base Template General Framework Project Production App</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>base_template_general_framework_project_production_app</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>$(FLUTTER_BUILD_NAME)</string>
	<key>CFBundleSignature</key>
	<string>????</string>
	<key>CFBundleVersion</key>
	<string>$(FLUTTER_BUILD_NUMBER)</string>
	<key>LSRequiresIPhoneOS</key>
	<true/>
	<key>UILaunchStoryboardName</key>
	<string>LaunchScreen</string>
	<key>UIMainStoryboardFile</key>
	<string>Main</string>
	<key>UISupportedInterfaceOrientations</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>UISupportedInterfaceOrientations~ipad</key>
	<array>
		<string>UIInterfaceOrientationPortrait</string>
		<string>UIInterfaceOrientationPortraitUpsideDown</string>
		<string>UIInterfaceOrientationLandscapeLeft</string>
		<string>UIInterfaceOrientationLandscapeRight</string>
	</array>
	<key>CADisableMinimumFrameDurationOnPhone</key>
	<true/>
	<key>UIApplicationSupportsIndirectInputEvents</key>
	<true/>
</dict>
</plist>
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Runner/Runner-Bridging-Header.h"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#import "GeneratedPluginRegistrant.h"
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.xcworkspace"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>IDEDidComputeMac32BitWarning</key>
	<true/>
</dict>
</plist>
""",
                            children: [],
                          ),
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>PreviewsEnabled</key>
	<false/>
</dict>
</plist>
""",
                            children: [],
                          )
                        ],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""<?xml version="1.0" encoding="UTF-8"?>
<Workspace
   version = "1.0">
   <FileRef
      location = "self:">
   </FileRef>
</Workspace>
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/xcshareddata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/xcshareddata/xcschemes"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<Scheme
   LastUpgradeVersion = "1510"
   version = "1.3">
   <BuildAction
      parallelizeBuildables = "YES"
      buildImplicitDependencies = "YES">
      <BuildActionEntries>
         <BuildActionEntry
            buildForTesting = "YES"
            buildForRunning = "YES"
            buildForProfiling = "YES"
            buildForArchiving = "YES"
            buildForAnalyzing = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "97C146ED1CF9000F007C117D"
               BuildableName = "Runner.app"
               BlueprintName = "Runner"
               ReferencedContainer = "container:Runner.xcodeproj">
            </BuildableReference>
         </BuildActionEntry>
      </BuildActionEntries>
   </BuildAction>
   <TestAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      shouldUseLaunchSchemeArgsEnv = "YES">
      <MacroExpansion>
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "97C146ED1CF9000F007C117D"
            BuildableName = "Runner.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </MacroExpansion>
      <Testables>
         <TestableReference
            skipped = "NO"
            parallelizable = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "331C8080294A63A400263BE5"
               BuildableName = "RunnerTests.xctest"
               BlueprintName = "RunnerTests"
               ReferencedContainer = "container:Runner.xcodeproj">
            </BuildableReference>
         </TestableReference>
      </Testables>
   </TestAction>
   <LaunchAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      launchStyle = "0"
      useCustomWorkingDirectory = "NO"
      ignoresPersistentStateOnLaunch = "NO"
      debugDocumentVersioning = "YES"
      debugServiceExtension = "internal"
      allowLocationSimulation = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "97C146ED1CF9000F007C117D"
            BuildableName = "Runner.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </LaunchAction>
   <ProfileAction
      buildConfiguration = "Profile"
      shouldUseLaunchSchemeArgsEnv = "YES"
      savedToolIdentifier = ""
      useCustomWorkingDirectory = "NO"
      debugDocumentVersioning = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "97C146ED1CF9000F007C117D"
            BuildableName = "Runner.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </ProfileAction>
   <AnalyzeAction
      buildConfiguration = "Debug">
   </AnalyzeAction>
   <ArchiveAction
      buildConfiguration = "Release"
      revealArchiveInOrganizer = "YES">
   </ArchiveAction>
</Scheme>
""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Runner.xcodeproj/project.pbxproj"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 54;
	objects = {

/* Begin PBXBuildFile section */
		1498D2341E8E89220040F4C2 /* GeneratedPluginRegistrant.m in Sources */ = {isa = PBXBuildFile; fileRef = 1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */; };
		331C808B294A63AB00263BE5 /* RunnerTests.swift in Sources */ = {isa = PBXBuildFile; fileRef = 331C807B294A618700263BE5 /* RunnerTests.swift */; };
		3B3967161E833CAA004F5970 /* AppFrameworkInfo.plist in Resources */ = {isa = PBXBuildFile; fileRef = 3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */; };
		74858FAF1ED2DC5600515810 /* AppDelegate.swift in Sources */ = {isa = PBXBuildFile; fileRef = 74858FAE1ED2DC5600515810 /* AppDelegate.swift */; };
		97C146FC1CF9000F007C117D /* Main.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FA1CF9000F007C117D /* Main.storyboard */; };
		97C146FE1CF9000F007C117D /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FD1CF9000F007C117D /* Assets.xcassets */; };
		97C147011CF9000F007C117D /* LaunchScreen.storyboard in Resources */ = {isa = PBXBuildFile; fileRef = 97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */; };
/* End PBXBuildFile section */

/* Begin PBXContainerItemProxy section */
		331C8085294A63A400263BE5 /* PBXContainerItemProxy */ = {
			isa = PBXContainerItemProxy;
			containerPortal = 97C146E61CF9000F007C117D /* Project object */;
			proxyType = 1;
			remoteGlobalIDString = 97C146ED1CF9000F007C117D;
			remoteInfo = Runner;
		};
/* End PBXContainerItemProxy section */

/* Begin PBXCopyFilesBuildPhase section */
		9705A1C41CF9048500538489 /* Embed Frameworks */ = {
			isa = PBXCopyFilesBuildPhase;
			buildActionMask = 2147483647;
			dstPath = "";
			dstSubfolderSpec = 10;
			files = (
			);
			name = "Embed Frameworks";
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXCopyFilesBuildPhase section */

/* Begin PBXFileReference section */
		1498D2321E8E86230040F4C2 /* GeneratedPluginRegistrant.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = GeneratedPluginRegistrant.h; sourceTree = "<group>"; };
		1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.c.objc; path = GeneratedPluginRegistrant.m; sourceTree = "<group>"; };
		331C807B294A618700263BE5 /* RunnerTests.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RunnerTests.swift; sourceTree = "<group>"; };
		331C8081294A63A400263BE5 /* RunnerTests.xctest */ = {isa = PBXFileReference; explicitFileType = wrapper.cfbundle; includeInIndex = 0; path = RunnerTests.xctest; sourceTree = BUILT_PRODUCTS_DIR; };
		3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.plist.xml; name = AppFrameworkInfo.plist; path = Flutter/AppFrameworkInfo.plist; sourceTree = "<group>"; };
		74858FAD1ED2DC5600515810 /* Runner-Bridging-Header.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = "Runner-Bridging-Header.h"; sourceTree = "<group>"; };
		74858FAE1ED2DC5600515810 /* AppDelegate.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = AppDelegate.swift; sourceTree = "<group>"; };
		7AFA3C8E1D35360C0083082E /* Release.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; name = Release.xcconfig; path = Flutter/Release.xcconfig; sourceTree = "<group>"; };
		9740EEB21CF90195004384FC /* Debug.xcconfig */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.xcconfig; name = Debug.xcconfig; path = Flutter/Debug.xcconfig; sourceTree = "<group>"; };
		9740EEB31CF90195004384FC /* Generated.xcconfig */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.xcconfig; name = Generated.xcconfig; path = Flutter/Generated.xcconfig; sourceTree = "<group>"; };
		97C146EE1CF9000F007C117D /* Runner.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = Runner.app; sourceTree = BUILT_PRODUCTS_DIR; };
		97C146FB1CF9000F007C117D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/Main.storyboard; sourceTree = "<group>"; };
		97C146FD1CF9000F007C117D /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; path = Assets.xcassets; sourceTree = "<group>"; };
		97C147001CF9000F007C117D /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.storyboard; name = Base; path = Base.lproj/LaunchScreen.storyboard; sourceTree = "<group>"; };
		97C147021CF9000F007C117D /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Info.plist; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		97C146EB1CF9000F007C117D /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		331C8082294A63A400263BE5 /* RunnerTests */ = {
			isa = PBXGroup;
			children = (
				331C807B294A618700263BE5 /* RunnerTests.swift */,
			);
			path = RunnerTests;
			sourceTree = "<group>";
		};
		9740EEB11CF90186004384FC /* Flutter */ = {
			isa = PBXGroup;
			children = (
				3B3967151E833CAA004F5970 /* AppFrameworkInfo.plist */,
				9740EEB21CF90195004384FC /* Debug.xcconfig */,
				7AFA3C8E1D35360C0083082E /* Release.xcconfig */,
				9740EEB31CF90195004384FC /* Generated.xcconfig */,
			);
			name = Flutter;
			sourceTree = "<group>";
		};
		97C146E51CF9000F007C117D = {
			isa = PBXGroup;
			children = (
				9740EEB11CF90186004384FC /* Flutter */,
				97C146F01CF9000F007C117D /* Runner */,
				97C146EF1CF9000F007C117D /* Products */,
				331C8082294A63A400263BE5 /* RunnerTests */,
			);
			sourceTree = "<group>";
		};
		97C146EF1CF9000F007C117D /* Products */ = {
			isa = PBXGroup;
			children = (
				97C146EE1CF9000F007C117D /* Runner.app */,
				331C8081294A63A400263BE5 /* RunnerTests.xctest */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		97C146F01CF9000F007C117D /* Runner */ = {
			isa = PBXGroup;
			children = (
				97C146FA1CF9000F007C117D /* Main.storyboard */,
				97C146FD1CF9000F007C117D /* Assets.xcassets */,
				97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */,
				97C147021CF9000F007C117D /* Info.plist */,
				1498D2321E8E86230040F4C2 /* GeneratedPluginRegistrant.h */,
				1498D2331E8E89220040F4C2 /* GeneratedPluginRegistrant.m */,
				74858FAE1ED2DC5600515810 /* AppDelegate.swift */,
				74858FAD1ED2DC5600515810 /* Runner-Bridging-Header.h */,
			);
			path = Runner;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		331C8080294A63A400263BE5 /* RunnerTests */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 331C8087294A63A400263BE5 /* Build configuration list for PBXNativeTarget "RunnerTests" */;
			buildPhases = (
				331C807D294A63A400263BE5 /* Sources */,
				331C807F294A63A400263BE5 /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
				331C8086294A63A400263BE5 /* PBXTargetDependency */,
			);
			name = RunnerTests;
			productName = RunnerTests;
			productReference = 331C8081294A63A400263BE5 /* RunnerTests.xctest */;
			productType = "com.apple.product-type.bundle.unit-test";
		};
		97C146ED1CF9000F007C117D /* Runner */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 97C147051CF9000F007C117D /* Build configuration list for PBXNativeTarget "Runner" */;
			buildPhases = (
				9740EEB61CF901F6004384FC /* Run Script */,
				97C146EA1CF9000F007C117D /* Sources */,
				97C146EB1CF9000F007C117D /* Frameworks */,
				97C146EC1CF9000F007C117D /* Resources */,
				9705A1C41CF9048500538489 /* Embed Frameworks */,
				3B06AD1E1E4923F5004D2608 /* Thin Binary */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = Runner;
			productName = Runner;
			productReference = 97C146EE1CF9000F007C117D /* Runner.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		97C146E61CF9000F007C117D /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = YES;
				LastUpgradeCheck = 1510;
				ORGANIZATIONNAME = "";
				TargetAttributes = {
					331C8080294A63A400263BE5 = {
						CreatedOnToolsVersion = 14.0;
						TestTargetID = 97C146ED1CF9000F007C117D;
					};
					97C146ED1CF9000F007C117D = {
						CreatedOnToolsVersion = 7.3.1;
						LastSwiftMigration = 1100;
					};
				};
			};
			buildConfigurationList = 97C146E91CF9000F007C117D /* Build configuration list for PBXProject "Runner" */;
			compatibilityVersion = "Xcode 9.3";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = 97C146E51CF9000F007C117D;
			productRefGroup = 97C146EF1CF9000F007C117D /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				97C146ED1CF9000F007C117D /* Runner */,
				331C8080294A63A400263BE5 /* RunnerTests */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		331C807F294A63A400263BE5 /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		97C146EC1CF9000F007C117D /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				97C147011CF9000F007C117D /* LaunchScreen.storyboard in Resources */,
				3B3967161E833CAA004F5970 /* AppFrameworkInfo.plist in Resources */,
				97C146FE1CF9000F007C117D /* Assets.xcassets in Resources */,
				97C146FC1CF9000F007C117D /* Main.storyboard in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXShellScriptBuildPhase section */
		3B06AD1E1E4923F5004D2608 /* Thin Binary */ = {
			isa = PBXShellScriptBuildPhase;
			alwaysOutOfDate = 1;
			buildActionMask = 2147483647;
			files = (
			);
			inputPaths = (
				"${TARGET_BUILD_DIR}/${INFOPLIST_PATH}",
			);
			name = "Thin Binary";
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "/bin/sh \"$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh\" embed_and_thin";
		};
		9740EEB61CF901F6004384FC /* Run Script */ = {
			isa = PBXShellScriptBuildPhase;
			alwaysOutOfDate = 1;
			buildActionMask = 2147483647;
			files = (
			);
			inputPaths = (
			);
			name = "Run Script";
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "/bin/sh \"$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh\" build";
		};
/* End PBXShellScriptBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		331C807D294A63A400263BE5 /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				331C808B294A63AB00263BE5 /* RunnerTests.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		97C146EA1CF9000F007C117D /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				74858FAF1ED2DC5600515810 /* AppDelegate.swift in Sources */,
				1498D2341E8E89220040F4C2 /* GeneratedPluginRegistrant.m in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin PBXTargetDependency section */
		331C8086294A63A400263BE5 /* PBXTargetDependency */ = {
			isa = PBXTargetDependency;
			target = 97C146ED1CF9000F007C117D /* Runner */;
			targetProxy = 331C8085294A63A400263BE5 /* PBXContainerItemProxy */;
		};
/* End PBXTargetDependency section */

/* Begin PBXVariantGroup section */
		97C146FA1CF9000F007C117D /* Main.storyboard */ = {
			isa = PBXVariantGroup;
			children = (
				97C146FB1CF9000F007C117D /* Base */,
			);
			name = Main.storyboard;
			sourceTree = "<group>";
		};
		97C146FF1CF9000F007C117D /* LaunchScreen.storyboard */ = {
			isa = PBXVariantGroup;
			children = (
				97C147001CF9000F007C117D /* Base */,
			);
			name = LaunchScreen.storyboard;
			sourceTree = "<group>";
		};
/* End PBXVariantGroup section */

/* Begin XCBuildConfiguration section */
		249021D3217E4FDB00AE95B9 /* Profile */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu99;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 12.0;
				MTL_ENABLE_DEBUG_INFO = NO;
				SDKROOT = iphoneos;
				SUPPORTED_PLATFORMS = iphoneos;
				TARGETED_DEVICE_FAMILY = "1,2";
				VALIDATE_PRODUCT = YES;
			};
			name = Profile;
		};
		249021D4217E4FDB00AE95B9 /* Profile */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";
				ENABLE_BITCODE = NO;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/Frameworks",
				);
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";
				SWIFT_VERSION = 5.0;
				VERSIONING_SYSTEM = "apple-generic";
			};
			name = Profile;
		};
		331C8088294A63A400263BE5 /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_ACTIVE_COMPILATION_CONDITIONS = DEBUG;
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/Runner.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/Runner";
			};
			name = Debug;
		};
		331C8089294A63A400263BE5 /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/Runner.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/Runner";
			};
			name = Release;
		};
		331C808A294A63A400263BE5 /* Profile */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/Runner.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/Runner";
			};
			name = Profile;
		};
		97C147031CF9000F007C117D /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu99;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 12.0;
				MTL_ENABLE_DEBUG_INFO = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = iphoneos;
				TARGETED_DEVICE_FAMILY = "1,2";
			};
			name = Debug;
		};
		97C147041CF9000F007C117D /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++0x";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				"CODE_SIGN_IDENTITY[sdk=iphoneos*]" = "iPhone Developer";
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu99;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 12.0;
				MTL_ENABLE_DEBUG_INFO = NO;
				SDKROOT = iphoneos;
				SUPPORTED_PLATFORMS = iphoneos;
				SWIFT_COMPILATION_MODE = wholemodule;
				SWIFT_OPTIMIZATION_LEVEL = "-O";
				TARGETED_DEVICE_FAMILY = "1,2";
				VALIDATE_PRODUCT = YES;
			};
			name = Release;
		};
		97C147061CF9000F007C117D /* Debug */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 9740EEB21CF90195004384FC /* Debug.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";
				ENABLE_BITCODE = NO;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/Frameworks",
				);
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
				SWIFT_VERSION = 5.0;
				VERSIONING_SYSTEM = "apple-generic";
			};
			name = Debug;
		};
		97C147071CF9000F007C117D /* Release */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CURRENT_PROJECT_VERSION = "$(FLUTTER_BUILD_NUMBER)";
				ENABLE_BITCODE = NO;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/Frameworks",
				);
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_OBJC_BRIDGING_HEADER = "Runner/Runner-Bridging-Header.h";
				SWIFT_VERSION = 5.0;
				VERSIONING_SYSTEM = "apple-generic";
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		331C8087294A63A400263BE5 /* Build configuration list for PBXNativeTarget "RunnerTests" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				331C8088294A63A400263BE5 /* Debug */,
				331C8089294A63A400263BE5 /* Release */,
				331C808A294A63A400263BE5 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		97C146E91CF9000F007C117D /* Build configuration list for PBXProject "Runner" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				97C147031CF9000F007C117D /* Debug */,
				97C147041CF9000F007C117D /* Release */,
				249021D3217E4FDB00AE95B9 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		97C147051CF9000F007C117D /* Build configuration list for PBXNativeTarget "Runner" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				97C147061CF9000F007C117D /* Debug */,
				97C147071CF9000F007C117D /* Release */,
				249021D4217E4FDB00AE95B9 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
/* End XCConfigurationList section */
	};
	rootObject = 97C146E61CF9000F007C117D /* Project object */;
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/ios/Runner.xcworkspace"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/ios/Runner.xcworkspace/xcshareddata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>IDEDidComputeMac32BitWarning</key>
	<true/>
</dict>
</plist>
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>PreviewsEnabled</key>
	<false/>
</dict>
</plist>
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/Runner.xcworkspace/contents.xcworkspacedata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<Workspace
   version = "1.0">
   <FileRef
      location = "group:Runner.xcodeproj">
   </FileRef>
</Workspace>
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/ios/RunnerTests"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/ios/RunnerTests/RunnerTests.swift"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import Flutter
import UIKit
import XCTest

class RunnerTests: XCTestCase {

  func testExample() {
    // If you add code to the Runner application, consider adding tests here.
    // See https://developer.apple.com/documentation/xctest for more information about using XCTest.
  }

}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/ios/.gitignore"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""**/dgph
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/ephemeral/
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
.dart_tool/
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/lib/main.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/linux"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/linux/flutter"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/linux/flutter/CMakeLists.txt"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""# This file controls Flutter-level build steps. It should not be edited.
cmake_minimum_required(VERSION 3.10)

set(EPHEMERAL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ephemeral")

# Configuration provided via flutter tool.
include(${EPHEMERAL_DIR}/generated_config.cmake)

# TODO: Move the rest of this into files in ephemeral. See
# https://github.com/flutter/flutter/issues/57146.

# Serves the same purpose as list(TRANSFORM ... PREPEND ...),
# which isn't available in 3.10.
function(list_prepend LIST_NAME PREFIX)
    set(NEW_LIST "")
    foreach(element ${${LIST_NAME}})
        list(APPEND NEW_LIST "${PREFIX}${element}")
    endforeach(element)
    set(${LIST_NAME} "${NEW_LIST}" PARENT_SCOPE)
endfunction()

# === Flutter Library ===
# System-level dependencies.
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED IMPORTED_TARGET gtk+-3.0)
pkg_check_modules(GLIB REQUIRED IMPORTED_TARGET glib-2.0)
pkg_check_modules(GIO REQUIRED IMPORTED_TARGET gio-2.0)

set(FLUTTER_LIBRARY "${EPHEMERAL_DIR}/libflutter_linux_gtk.so")

# Published to parent scope for install step.
set(FLUTTER_LIBRARY ${FLUTTER_LIBRARY} PARENT_SCOPE)
set(FLUTTER_ICU_DATA_FILE "${EPHEMERAL_DIR}/icudtl.dat" PARENT_SCOPE)
set(PROJECT_BUILD_DIR "${PROJECT_DIR}/build/" PARENT_SCOPE)
set(AOT_LIBRARY "${PROJECT_DIR}/build/lib/libapp.so" PARENT_SCOPE)

list(APPEND FLUTTER_LIBRARY_HEADERS
  "fl_basic_message_channel.h"
  "fl_binary_codec.h"
  "fl_binary_messenger.h"
  "fl_dart_project.h"
  "fl_engine.h"
  "fl_json_message_codec.h"
  "fl_json_method_codec.h"
  "fl_message_codec.h"
  "fl_method_call.h"
  "fl_method_channel.h"
  "fl_method_codec.h"
  "fl_method_response.h"
  "fl_plugin_registrar.h"
  "fl_plugin_registry.h"
  "fl_standard_message_codec.h"
  "fl_standard_method_codec.h"
  "fl_string_codec.h"
  "fl_value.h"
  "fl_view.h"
  "flutter_linux.h"
)
list_prepend(FLUTTER_LIBRARY_HEADERS "${EPHEMERAL_DIR}/flutter_linux/")
add_library(flutter INTERFACE)
target_include_directories(flutter INTERFACE
  "${EPHEMERAL_DIR}"
)
target_link_libraries(flutter INTERFACE "${FLUTTER_LIBRARY}")
target_link_libraries(flutter INTERFACE
  PkgConfig::GTK
  PkgConfig::GLIB
  PkgConfig::GIO
)
add_dependencies(flutter flutter_assemble)

# === Flutter tool backend ===
# _phony_ is a non-existent file to force this command to run every time,
# since currently there's no way to get a full input/output list from the
# flutter tool.
add_custom_command(
  OUTPUT ${FLUTTER_LIBRARY} ${FLUTTER_LIBRARY_HEADERS}
    ${CMAKE_CURRENT_BINARY_DIR}/_phony_
  COMMAND ${CMAKE_COMMAND} -E env
    ${FLUTTER_TOOL_ENVIRONMENT}
    "${FLUTTER_ROOT}/packages/flutter_tools/bin/tool_backend.sh"
      ${FLUTTER_TARGET_PLATFORM} ${CMAKE_BUILD_TYPE}
  VERBATIM
)
add_custom_target(flutter_assemble DEPENDS
  "${FLUTTER_LIBRARY}"
  ${FLUTTER_LIBRARY_HEADERS}
)
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/linux/.gitignore"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""flutter/ephemeral
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
.dart_tool/
build/
ephemeral/
/build/
generate_glx_*
node_modules/
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/linux/CMakeLists.txt"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""# Project-level configuration.
cmake_minimum_required(VERSION 3.10)
project(runner LANGUAGES CXX)

# The name of the executable created for the application. Change this to change
# the on-disk name of your application.
set(BINARY_NAME "base_template_general_framework_project_production_app")
# The unique GTK application identifier for this application. See:
# https://wiki.gnome.org/HowDoI/ChooseApplicationID
set(APPLICATION_ID "com.example.base_template_general_framework_project_production_app")

# Explicitly opt in to modern CMake behaviors to avoid warnings with recent
# versions of CMake.
cmake_policy(SET CMP0063 NEW)

# Load bundled libraries from the lib/ directory relative to the binary.
set(CMAKE_INSTALL_RPATH "$ORIGIN/lib")

# Root filesystem for cross-building.
if(FLUTTER_TARGET_PLATFORM_SYSROOT)
  set(CMAKE_SYSROOT ${FLUTTER_TARGET_PLATFORM_SYSROOT})
  set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
  set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
  set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif()

# Define build configuration options.
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  set(CMAKE_BUILD_TYPE "Debug" CACHE
    STRING "Flutter build mode" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Profile" "Release")
endif()

# Compilation settings that should be applied to most targets.
#
# Be cautious about adding new options here, as plugins use this function by
# default. In most cases, you should add new options to specific targets instead
# of modifying this function.
function(APPLY_STANDARD_SETTINGS TARGET)
  target_compile_features(${TARGET} PUBLIC cxx_std_14)
  target_compile_options(${TARGET} PRIVATE -Wall -Werror)
  target_compile_options(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O3>")
  target_compile_definitions(${TARGET} PRIVATE "$<$<NOT:$<CONFIG:Debug>>:NDEBUG>")
endfunction()

# Flutter library and tool build rules.
set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/flutter")
add_subdirectory(${FLUTTER_MANAGED_DIR})

# System-level dependencies.
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED IMPORTED_TARGET gtk+-3.0)

add_definitions(-DAPPLICATION_ID="${APPLICATION_ID}")

# Define the application target. To change its name, change BINARY_NAME above,
# not the value here, or `flutter run` will no longer work.
#
# Any new source files that you add to the application should be added here.
add_executable(${BINARY_NAME}
  "main.cc"
  "my_application.cc"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
)

# Apply the standard set of build settings. This can be removed for applications
# that need different build settings.
apply_standard_settings(${BINARY_NAME})

# Add dependency libraries. Add any application-specific dependencies here.
target_link_libraries(${BINARY_NAME} PRIVATE flutter)
target_link_libraries(${BINARY_NAME} PRIVATE PkgConfig::GTK)

# Run the Flutter tool portions of the build. This must not be removed.
add_dependencies(${BINARY_NAME} flutter_assemble)

# Only the install-generated bundle's copy of the executable will launch
# correctly, since the resources must in the right relative locations. To avoid
# people trying to run the unbundled copy, put it in a subdirectory instead of
# the default top-level location.
set_target_properties(${BINARY_NAME}
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/intermediates_do_not_run"
)


# Generated plugin build rules, which manage building the plugins and adding
# them to the application.
include(flutter/generated_plugins.cmake)


# === Installation ===
# By default, "installing" just makes a relocatable bundle in the build
# directory.
set(BUILD_BUNDLE_DIR "${PROJECT_BINARY_DIR}/bundle")
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)
endif()

# Start with a clean build bundle directory every time.
install(CODE "
  file(REMOVE_RECURSE \"${BUILD_BUNDLE_DIR}/\")
  " COMPONENT Runtime)

set(INSTALL_BUNDLE_DATA_DIR "${CMAKE_INSTALL_PREFIX}/data")
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}/lib")

install(TARGETS ${BINARY_NAME} RUNTIME DESTINATION "${CMAKE_INSTALL_PREFIX}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_ICU_DATA_FILE}" DESTINATION "${INSTALL_BUNDLE_DATA_DIR}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)

foreach(bundled_library ${PLUGIN_BUNDLED_LIBRARIES})
  install(FILES "${bundled_library}"
    DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endforeach(bundled_library)

# Copy the native assets provided by the build.dart from all packages.
set(NATIVE_ASSETS_DIR "${PROJECT_BUILD_DIR}native_assets/linux/")
install(DIRECTORY "${NATIVE_ASSETS_DIR}"
   DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
   COMPONENT Runtime)

# Fully re-copy the assets directory on each build to avoid having stale files
# from a previous install.
set(FLUTTER_ASSET_DIR_NAME "flutter_assets")
install(CODE "
  file(REMOVE_RECURSE \"${INSTALL_BUNDLE_DATA_DIR}/${FLUTTER_ASSET_DIR_NAME}\")
  " COMPONENT Runtime)
install(DIRECTORY "${PROJECT_BUILD_DIR}/${FLUTTER_ASSET_DIR_NAME}"
  DESTINATION "${INSTALL_BUNDLE_DATA_DIR}" COMPONENT Runtime)

# Install the AOT library on non-Debug builds only.
if(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
  install(FILES "${AOT_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endif()
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/linux/main.cc"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
#include "my_application.h"

int main(int argc, char** argv) {
  g_autoptr(MyApplication) app = my_application_new();
  return g_application_run(G_APPLICATION(app), argc, argv);
}
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/linux/my_application.cc"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
#include "my_application.h"

#include <flutter_linux/flutter_linux.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif

#include "flutter/generated_plugin_registrant.h"

struct _MyApplication {
  GtkApplication parent_instance;
  char** dart_entrypoint_arguments;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

// Implements GApplication::activate.
static void my_application_activate(GApplication* application) {
  MyApplication* self = MY_APPLICATION(application);
  GtkWindow* window =
      GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));

  // Use a header bar when running in GNOME as this is the common style used
  // by applications and is the setup most users will be using (e.g. Ubuntu
  // desktop).
  // If running on X and not using GNOME then just use a traditional title bar
  // in case the window manager does more exotic layout, e.g. tiling.
  // If running on Wayland assume the header bar will work (may need changing
  // if future cases occur).
  gboolean use_header_bar = TRUE;
#ifdef GDK_WINDOWING_X11
  GdkScreen* screen = gtk_window_get_screen(window);
  if (GDK_IS_X11_SCREEN(screen)) {
    const gchar* wm_name = gdk_x11_screen_get_window_manager_name(screen);
    if (g_strcmp0(wm_name, "GNOME Shell") != 0) {
      use_header_bar = FALSE;
    }
  }
#endif
  if (use_header_bar) {
    GtkHeaderBar* header_bar = GTK_HEADER_BAR(gtk_header_bar_new());
    gtk_widget_show(GTK_WIDGET(header_bar));
    gtk_header_bar_set_title(header_bar, "base_template_general_framework_project_production_app");
    gtk_header_bar_set_show_close_button(header_bar, TRUE);
    gtk_window_set_titlebar(window, GTK_WIDGET(header_bar));
  } else {
    gtk_window_set_title(window, "base_template_general_framework_project_production_app");
  }

  gtk_window_set_default_size(window, 1280, 720);
  gtk_widget_show(GTK_WIDGET(window));

  g_autoptr(FlDartProject) project = fl_dart_project_new();
  fl_dart_project_set_dart_entrypoint_arguments(project, self->dart_entrypoint_arguments);

  FlView* view = fl_view_new(project);
  gtk_widget_show(GTK_WIDGET(view));
  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

  fl_register_plugins(FL_PLUGIN_REGISTRY(view));

  gtk_widget_grab_focus(GTK_WIDGET(view));
}

// Implements GApplication::local_command_line.
static gboolean my_application_local_command_line(GApplication* application, gchar*** arguments, int* exit_status) {
  MyApplication* self = MY_APPLICATION(application);
  // Strip out the first argument as it is the binary name.
  self->dart_entrypoint_arguments = g_strdupv(*arguments + 1);

  g_autoptr(GError) error = nullptr;
  if (!g_application_register(application, nullptr, &error)) {
     g_warning("Failed to register: %s", error->message);
     *exit_status = 1;
     return TRUE;
  }

  g_application_activate(application);
  *exit_status = 0;

  return TRUE;
}

// Implements GApplication::startup.
static void my_application_startup(GApplication* application) {
  //MyApplication* self = MY_APPLICATION(object);

  // Perform any actions required at application startup.

  G_APPLICATION_CLASS(my_application_parent_class)->startup(application);
}

// Implements GApplication::shutdown.
static void my_application_shutdown(GApplication* application) {
  //MyApplication* self = MY_APPLICATION(object);

  // Perform any actions required at application shutdown.

  G_APPLICATION_CLASS(my_application_parent_class)->shutdown(application);
}

// Implements GObject::dispose.
static void my_application_dispose(GObject* object) {
  MyApplication* self = MY_APPLICATION(object);
  g_clear_pointer(&self->dart_entrypoint_arguments, g_strfreev);
  G_OBJECT_CLASS(my_application_parent_class)->dispose(object);
}

static void my_application_class_init(MyApplicationClass* klass) {
  G_APPLICATION_CLASS(klass)->activate = my_application_activate;
  G_APPLICATION_CLASS(klass)->local_command_line = my_application_local_command_line;
  G_APPLICATION_CLASS(klass)->startup = my_application_startup;
  G_APPLICATION_CLASS(klass)->shutdown = my_application_shutdown;
  G_OBJECT_CLASS(klass)->dispose = my_application_dispose;
}

static void my_application_init(MyApplication* self) {}

MyApplication* my_application_new() {
  return MY_APPLICATION(g_object_new(my_application_get_type(),
                                     "application-id", APPLICATION_ID,
                                     "flags", G_APPLICATION_NON_UNIQUE,
                                     nullptr));
}
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/linux/my_application.h"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""#ifndef FLUTTER_MY_APPLICATION_H_
#define FLUTTER_MY_APPLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, my_application, MY, APPLICATION,
                     GtkApplication)

/**
 * my_application_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* my_application_new();

#endif  // FLUTTER_MY_APPLICATION_H_
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/macos"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/macos/Flutter"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Flutter/Flutter-Debug.xcconfig"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#include "ephemeral/Flutter-Generated.xcconfig"
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Flutter/Flutter-Release.xcconfig"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#include "ephemeral/Flutter-Generated.xcconfig"
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/macos/Runner"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner/Assets.xcassets"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Assets.xcassets/AppIcon.appiconset"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""/* <!-- START LICENSE -->


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
{
  "images" : [
    {
      "size" : "16x16",
      "idiom" : "mac",
      "filename" : "app_icon_16.png",
      "scale" : "1x"
    },
    {
      "size" : "16x16",
      "idiom" : "mac",
      "filename" : "app_icon_32.png",
      "scale" : "2x"
    },
    {
      "size" : "32x32",
      "idiom" : "mac",
      "filename" : "app_icon_32.png",
      "scale" : "1x"
    },
    {
      "size" : "32x32",
      "idiom" : "mac",
      "filename" : "app_icon_64.png",
      "scale" : "2x"
    },
    {
      "size" : "128x128",
      "idiom" : "mac",
      "filename" : "app_icon_128.png",
      "scale" : "1x"
    },
    {
      "size" : "128x128",
      "idiom" : "mac",
      "filename" : "app_icon_256.png",
      "scale" : "2x"
    },
    {
      "size" : "256x256",
      "idiom" : "mac",
      "filename" : "app_icon_256.png",
      "scale" : "1x"
    },
    {
      "size" : "256x256",
      "idiom" : "mac",
      "filename" : "app_icon_512.png",
      "scale" : "2x"
    },
    {
      "size" : "512x512",
      "idiom" : "mac",
      "filename" : "app_icon_512.png",
      "scale" : "1x"
    },
    {
      "size" : "512x512",
      "idiom" : "mac",
      "filename" : "app_icon_1024.png",
      "scale" : "2x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}
""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner/Base.lproj"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Base.lproj/MainMenu.xib"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.Cocoa.XIB" version="3.0" toolsVersion="14490.70" targetRuntime="MacOSX.Cocoa" propertyAccessControl="none" useAutolayout="YES" customObjectInstantitationMethod="direct">
    <dependencies>
        <deployment identifier="macosx"/>
        <plugIn identifier="com.apple.InterfaceBuilder.CocoaPlugin" version="14490.70"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <objects>
        <customObject id="-2" userLabel="File's Owner" customClass="NSApplication">
            <connections>
                <outlet property="delegate" destination="Voe-Tx-rLC" id="GzC-gU-4Uq"/>
            </connections>
        </customObject>
        <customObject id="-1" userLabel="First Responder" customClass="FirstResponder"/>
        <customObject id="-3" userLabel="Application" customClass="NSObject"/>
        <customObject id="Voe-Tx-rLC" customClass="AppDelegate" customModule="Runner" customModuleProvider="target">
            <connections>
                <outlet property="applicationMenu" destination="uQy-DD-JDr" id="XBo-yE-nKs"/>
                <outlet property="mainFlutterWindow" destination="QvC-M9-y7g" id="gIp-Ho-8D9"/>
            </connections>
        </customObject>
        <customObject id="YLy-65-1bz" customClass="NSFontManager"/>
        <menu title="Main Menu" systemMenu="main" id="AYu-sK-qS6">
            <items>
                <menuItem title="APP_NAME" id="1Xt-HY-uBw">
                    <modifierMask key="keyEquivalentModifierMask"/>
                    <menu key="submenu" title="APP_NAME" systemMenu="apple" id="uQy-DD-JDr">
                        <items>
                            <menuItem title="About APP_NAME" id="5kV-Vb-QxS">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <connections>
                                    <action selector="orderFrontStandardAboutPanel:" target="-1" id="Exp-CZ-Vem"/>
                                </connections>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="VOq-y0-SEH"/>
                            <menuItem title="Preferences…" keyEquivalent="," id="BOF-NM-1cW"/>
                            <menuItem isSeparatorItem="YES" id="wFC-TO-SCJ"/>
                            <menuItem title="Services" id="NMo-om-nkz">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Services" systemMenu="services" id="hz9-B4-Xy5"/>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="4je-JR-u6R"/>
                            <menuItem title="Hide APP_NAME" keyEquivalent="h" id="Olw-nP-bQN">
                                <connections>
                                    <action selector="hide:" target="-1" id="PnN-Uc-m68"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Hide Others" keyEquivalent="h" id="Vdr-fp-XzO">
                                <modifierMask key="keyEquivalentModifierMask" option="YES" command="YES"/>
                                <connections>
                                    <action selector="hideOtherApplications:" target="-1" id="VT4-aY-XCT"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Show All" id="Kd2-mp-pUS">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <connections>
                                    <action selector="unhideAllApplications:" target="-1" id="Dhg-Le-xox"/>
                                </connections>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="kCx-OE-vgT"/>
                            <menuItem title="Quit APP_NAME" keyEquivalent="q" id="4sb-4s-VLi">
                                <connections>
                                    <action selector="terminate:" target="-1" id="Te7-pn-YzF"/>
                                </connections>
                            </menuItem>
                        </items>
                    </menu>
                </menuItem>
                <menuItem title="Edit" id="5QF-Oa-p0T">
                    <modifierMask key="keyEquivalentModifierMask"/>
                    <menu key="submenu" title="Edit" id="W48-6f-4Dl">
                        <items>
                            <menuItem title="Undo" keyEquivalent="z" id="dRJ-4n-Yzg">
                                <connections>
                                    <action selector="undo:" target="-1" id="M6e-cu-g7V"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Redo" keyEquivalent="Z" id="6dh-zS-Vam">
                                <connections>
                                    <action selector="redo:" target="-1" id="oIA-Rs-6OD"/>
                                </connections>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="WRV-NI-Exz"/>
                            <menuItem title="Cut" keyEquivalent="x" id="uRl-iY-unG">
                                <connections>
                                    <action selector="cut:" target="-1" id="YJe-68-I9s"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Copy" keyEquivalent="c" id="x3v-GG-iWU">
                                <connections>
                                    <action selector="copy:" target="-1" id="G1f-GL-Joy"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Paste" keyEquivalent="v" id="gVA-U4-sdL">
                                <connections>
                                    <action selector="paste:" target="-1" id="UvS-8e-Qdg"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Paste and Match Style" keyEquivalent="V" id="WeT-3V-zwk">
                                <modifierMask key="keyEquivalentModifierMask" option="YES" command="YES"/>
                                <connections>
                                    <action selector="pasteAsPlainText:" target="-1" id="cEh-KX-wJQ"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Delete" id="pa3-QI-u2k">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <connections>
                                    <action selector="delete:" target="-1" id="0Mk-Ml-PaM"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Select All" keyEquivalent="a" id="Ruw-6m-B2m">
                                <connections>
                                    <action selector="selectAll:" target="-1" id="VNm-Mi-diN"/>
                                </connections>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="uyl-h8-XO2"/>
                            <menuItem title="Find" id="4EN-yA-p0u">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Find" id="1b7-l0-nxx">
                                    <items>
                                        <menuItem title="Find…" tag="1" keyEquivalent="f" id="Xz5-n4-O0W">
                                            <connections>
                                                <action selector="performFindPanelAction:" target="-1" id="cD7-Qs-BN4"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Find and Replace…" tag="12" keyEquivalent="f" id="YEy-JH-Tfz">
                                            <modifierMask key="keyEquivalentModifierMask" option="YES" command="YES"/>
                                            <connections>
                                                <action selector="performFindPanelAction:" target="-1" id="WD3-Gg-5AJ"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Find Next" tag="2" keyEquivalent="g" id="q09-fT-Sye">
                                            <connections>
                                                <action selector="performFindPanelAction:" target="-1" id="NDo-RZ-v9R"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Find Previous" tag="3" keyEquivalent="G" id="OwM-mh-QMV">
                                            <connections>
                                                <action selector="performFindPanelAction:" target="-1" id="HOh-sY-3ay"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Use Selection for Find" tag="7" keyEquivalent="e" id="buJ-ug-pKt">
                                            <connections>
                                                <action selector="performFindPanelAction:" target="-1" id="U76-nv-p5D"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Jump to Selection" keyEquivalent="j" id="S0p-oC-mLd">
                                            <connections>
                                                <action selector="centerSelectionInVisibleArea:" target="-1" id="IOG-6D-g5B"/>
                                            </connections>
                                        </menuItem>
                                    </items>
                                </menu>
                            </menuItem>
                            <menuItem title="Spelling and Grammar" id="Dv1-io-Yv7">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Spelling" id="3IN-sU-3Bg">
                                    <items>
                                        <menuItem title="Show Spelling and Grammar" keyEquivalent=":" id="HFo-cy-zxI">
                                            <connections>
                                                <action selector="showGuessPanel:" target="-1" id="vFj-Ks-hy3"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Check Document Now" keyEquivalent=";" id="hz2-CU-CR7">
                                            <connections>
                                                <action selector="checkSpelling:" target="-1" id="fz7-VC-reM"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem isSeparatorItem="YES" id="bNw-od-mp5"/>
                                        <menuItem title="Check Spelling While Typing" id="rbD-Rh-wIN">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleContinuousSpellChecking:" target="-1" id="7w6-Qz-0kB"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Check Grammar With Spelling" id="mK6-2p-4JG">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleGrammarChecking:" target="-1" id="muD-Qn-j4w"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Correct Spelling Automatically" id="78Y-hA-62v">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticSpellingCorrection:" target="-1" id="2lM-Qi-WAP"/>
                                            </connections>
                                        </menuItem>
                                    </items>
                                </menu>
                            </menuItem>
                            <menuItem title="Substitutions" id="9ic-FL-obx">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Substitutions" id="FeM-D8-WVr">
                                    <items>
                                        <menuItem title="Show Substitutions" id="z6F-FW-3nz">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="orderFrontSubstitutionsPanel:" target="-1" id="oku-mr-iSq"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem isSeparatorItem="YES" id="gPx-C9-uUO"/>
                                        <menuItem title="Smart Copy/Paste" id="9yt-4B-nSM">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleSmartInsertDelete:" target="-1" id="3IJ-Se-DZD"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Smart Quotes" id="hQb-2v-fYv">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticQuoteSubstitution:" target="-1" id="ptq-xd-QOA"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Smart Dashes" id="rgM-f4-ycn">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticDashSubstitution:" target="-1" id="oCt-pO-9gS"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Smart Links" id="cwL-P1-jid">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticLinkDetection:" target="-1" id="Gip-E3-Fov"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Data Detectors" id="tRr-pd-1PS">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticDataDetection:" target="-1" id="R1I-Nq-Kbl"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Text Replacement" id="HFQ-gK-NFA">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="toggleAutomaticTextReplacement:" target="-1" id="DvP-Fe-Py6"/>
                                            </connections>
                                        </menuItem>
                                    </items>
                                </menu>
                            </menuItem>
                            <menuItem title="Transformations" id="2oI-Rn-ZJC">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Transformations" id="c8a-y6-VQd">
                                    <items>
                                        <menuItem title="Make Upper Case" id="vmV-6d-7jI">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="uppercaseWord:" target="-1" id="sPh-Tk-edu"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Make Lower Case" id="d9M-CD-aMd">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="lowercaseWord:" target="-1" id="iUZ-b5-hil"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Capitalize" id="UEZ-Bs-lqG">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="capitalizeWord:" target="-1" id="26H-TL-nsh"/>
                                            </connections>
                                        </menuItem>
                                    </items>
                                </menu>
                            </menuItem>
                            <menuItem title="Speech" id="xrE-MZ-jX0">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <menu key="submenu" title="Speech" id="3rS-ZA-NoH">
                                    <items>
                                        <menuItem title="Start Speaking" id="Ynk-f8-cLZ">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="startSpeaking:" target="-1" id="654-Ng-kyl"/>
                                            </connections>
                                        </menuItem>
                                        <menuItem title="Stop Speaking" id="Oyz-dy-DGm">
                                            <modifierMask key="keyEquivalentModifierMask"/>
                                            <connections>
                                                <action selector="stopSpeaking:" target="-1" id="dX8-6p-jy9"/>
                                            </connections>
                                        </menuItem>
                                    </items>
                                </menu>
                            </menuItem>
                        </items>
                    </menu>
                </menuItem>
                <menuItem title="View" id="H8h-7b-M4v">
                    <modifierMask key="keyEquivalentModifierMask"/>
                    <menu key="submenu" title="View" id="HyV-fh-RgO">
                        <items>
                            <menuItem title="Enter Full Screen" keyEquivalent="f" id="4J7-dP-txa">
                                <modifierMask key="keyEquivalentModifierMask" control="YES" command="YES"/>
                                <connections>
                                    <action selector="toggleFullScreen:" target="-1" id="dU3-MA-1Rq"/>
                                </connections>
                            </menuItem>
                        </items>
                    </menu>
                </menuItem>
                <menuItem title="Window" id="aUF-d1-5bR">
                    <modifierMask key="keyEquivalentModifierMask"/>
                    <menu key="submenu" title="Window" systemMenu="window" id="Td7-aD-5lo">
                        <items>
                            <menuItem title="Minimize" keyEquivalent="m" id="OY7-WF-poV">
                                <connections>
                                    <action selector="performMiniaturize:" target="-1" id="VwT-WD-YPe"/>
                                </connections>
                            </menuItem>
                            <menuItem title="Zoom" id="R4o-n2-Eq4">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <connections>
                                    <action selector="performZoom:" target="-1" id="DIl-cC-cCs"/>
                                </connections>
                            </menuItem>
                            <menuItem isSeparatorItem="YES" id="eu3-7i-yIM"/>
                            <menuItem title="Bring All to Front" id="LE2-aR-0XJ">
                                <modifierMask key="keyEquivalentModifierMask"/>
                                <connections>
                                    <action selector="arrangeInFront:" target="-1" id="DRN-fu-gQh"/>
                                </connections>
                            </menuItem>
                        </items>
                    </menu>
                </menuItem>
                <menuItem title="Help" id="EPT-qC-fAb">
                    <modifierMask key="keyEquivalentModifierMask"/>
                    <menu key="submenu" title="Help" systemMenu="help" id="rJ0-wn-3NY"/>
                </menuItem>
            </items>
            <point key="canvasLocation" x="142" y="-258"/>
        </menu>
        <window title="APP_NAME" allowsToolTipsWhenApplicationIsInactive="NO" autorecalculatesKeyViewLoop="NO" releasedWhenClosed="NO" animationBehavior="default" id="QvC-M9-y7g" customClass="MainFlutterWindow" customModule="Runner" customModuleProvider="target">
            <windowStyleMask key="styleMask" titled="YES" closable="YES" miniaturizable="YES" resizable="YES"/>
            <rect key="contentRect" x="335" y="390" width="800" height="600"/>
            <rect key="screenRect" x="0.0" y="0.0" width="2560" height="1577"/>
            <view key="contentView" wantsLayer="YES" id="EiT-Mj-1SZ">
                <rect key="frame" x="0.0" y="0.0" width="800" height="600"/>
                <autoresizingMask key="autoresizingMask"/>
            </view>
        </window>
    </objects>
</document>
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner/Configs"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Configs/AppInfo.xcconfig"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""// Application-level settings for the Runner target.
//
// This may be replaced with something auto-generated from metadata (e.g., pubspec.yaml) in the
// future. If not, the values below would default to using the project name when this becomes a
// 'flutter create' template.

// The application's name. By default this is also the title of the Flutter window.
PRODUCT_NAME = base_template_general_framework_project_production_app

// The application's bundle identifier
PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp

// The copyright displayed in application information
PRODUCT_COPYRIGHT = Copyright © 2024 com.example. All rights reserved.
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Configs/Debug.xcconfig"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""#include "../../Flutter/Flutter-Debug.xcconfig"
#include "Warnings.xcconfig"
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Configs/Release.xcconfig"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""#include "../../Flutter/Flutter-Release.xcconfig"
#include "Warnings.xcconfig"
""",
                        children: [],
                      ),
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner/Configs/Warnings.xcconfig"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value:
                            r"""WARNING_CFLAGS = -Wall -Wconditional-uninitialized -Wnullable-to-nonnull-conversion -Wmissing-method-return-type -Woverlength-strings
GCC_WARN_UNDECLARED_SELECTOR = YES
CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY = YES
CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE
CLANG_WARN__DUPLICATE_METHOD_MATCH = YES
CLANG_WARN_PRAGMA_PACK = YES
CLANG_WARN_STRICT_PROTOTYPES = YES
CLANG_WARN_COMMA = YES
GCC_WARN_STRICT_SELECTOR_MATCH = YES
CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK = YES
CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES
GCC_WARN_SHADOW = YES
CLANG_WARN_UNREACHABLE_CODE = YES
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner/AppDelegate.swift"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner/DebugProfile.entitlements"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<key>com.apple.security.cs.allow-jit</key>
	<true/>
	<key>com.apple.security.network.server</key>
	<true/>
</dict>
</plist>
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner/Info.plist"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>CFBundleDevelopmentRegion</key>
	<string>$(DEVELOPMENT_LANGUAGE)</string>
	<key>CFBundleExecutable</key>
	<string>$(EXECUTABLE_NAME)</string>
	<key>CFBundleIconFile</key>
	<string></string>
	<key>CFBundleIdentifier</key>
	<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>$(PRODUCT_NAME)</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>$(FLUTTER_BUILD_NAME)</string>
	<key>CFBundleVersion</key>
	<string>$(FLUTTER_BUILD_NUMBER)</string>
	<key>LSMinimumSystemVersion</key>
	<string>$(MACOSX_DEPLOYMENT_TARGET)</string>
	<key>NSHumanReadableCopyright</key>
	<string>$(PRODUCT_COPYRIGHT)</string>
	<key>NSMainNibFile</key>
	<string>MainMenu</string>
	<key>NSPrincipalClass</key>
	<string>NSApplication</string>
</dict>
</plist>
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner/MainFlutterWindow.swift"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner/Release.entitlements"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
</dict>
</plist>
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/project.xcworkspace"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/project.xcworkspace/xcshareddata"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>IDEDidComputeMac32BitWarning</key>
	<true/>
</dict>
</plist>
""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/xcshareddata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: Directory(
                            "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/xcshareddata/xcschemes"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.directory,
                        value: "",
                        children: [
                          ScriptGenerator(
                            is_generate: true,
                            directory_base: Directory(
                                "base_template_general_framework_project"),
                            file_system_entity: File(
                                "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme"),
                            state_data: {},
                            file_system_entity_type: FileSystemEntityType.file,
                            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<Scheme
   LastUpgradeVersion = "1510"
   version = "1.3">
   <BuildAction
      parallelizeBuildables = "YES"
      buildImplicitDependencies = "YES">
      <BuildActionEntries>
         <BuildActionEntry
            buildForTesting = "YES"
            buildForRunning = "YES"
            buildForProfiling = "YES"
            buildForArchiving = "YES"
            buildForAnalyzing = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "33CC10EC2044A3C60003C045"
               BuildableName = "base_template_general_framework_project_production_app.app"
               BlueprintName = "Runner"
               ReferencedContainer = "container:Runner.xcodeproj">
            </BuildableReference>
         </BuildActionEntry>
      </BuildActionEntries>
   </BuildAction>
   <TestAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      shouldUseLaunchSchemeArgsEnv = "YES">
      <MacroExpansion>
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "33CC10EC2044A3C60003C045"
            BuildableName = "base_template_general_framework_project_production_app.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </MacroExpansion>
      <Testables>
         <TestableReference
            skipped = "NO"
            parallelizable = "YES">
            <BuildableReference
               BuildableIdentifier = "primary"
               BlueprintIdentifier = "331C80D4294CF70F00263BE5"
               BuildableName = "RunnerTests.xctest"
               BlueprintName = "RunnerTests"
               ReferencedContainer = "container:Runner.xcodeproj">
            </BuildableReference>
         </TestableReference>
      </Testables>
   </TestAction>
   <LaunchAction
      buildConfiguration = "Debug"
      selectedDebuggerIdentifier = "Xcode.DebuggerFoundation.Debugger.LLDB"
      selectedLauncherIdentifier = "Xcode.DebuggerFoundation.Launcher.LLDB"
      launchStyle = "0"
      useCustomWorkingDirectory = "NO"
      ignoresPersistentStateOnLaunch = "NO"
      debugDocumentVersioning = "YES"
      debugServiceExtension = "internal"
      allowLocationSimulation = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "33CC10EC2044A3C60003C045"
            BuildableName = "base_template_general_framework_project_production_app.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </LaunchAction>
   <ProfileAction
      buildConfiguration = "Profile"
      shouldUseLaunchSchemeArgsEnv = "YES"
      savedToolIdentifier = ""
      useCustomWorkingDirectory = "NO"
      debugDocumentVersioning = "YES">
      <BuildableProductRunnable
         runnableDebuggingMode = "0">
         <BuildableReference
            BuildableIdentifier = "primary"
            BlueprintIdentifier = "33CC10EC2044A3C60003C045"
            BuildableName = "base_template_general_framework_project_production_app.app"
            BlueprintName = "Runner"
            ReferencedContainer = "container:Runner.xcodeproj">
         </BuildableReference>
      </BuildableProductRunnable>
   </ProfileAction>
   <AnalyzeAction
      buildConfiguration = "Debug">
   </AnalyzeAction>
   <ArchiveAction
      buildConfiguration = "Release"
      revealArchiveInOrganizer = "YES">
   </ArchiveAction>
</Scheme>
""",
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner.xcodeproj/project.pbxproj"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""// !$*UTF8*$!
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 54;
	objects = {

/* Begin PBXAggregateTarget section */
		33CC111A2044C6BA0003C045 /* Flutter Assemble */ = {
			isa = PBXAggregateTarget;
			buildConfigurationList = 33CC111B2044C6BA0003C045 /* Build configuration list for PBXAggregateTarget "Flutter Assemble" */;
			buildPhases = (
				33CC111E2044C6BF0003C045 /* ShellScript */,
			);
			dependencies = (
			);
			name = "Flutter Assemble";
			productName = FLX;
		};
/* End PBXAggregateTarget section */

/* Begin PBXBuildFile section */
		331C80D8294CF71000263BE5 /* RunnerTests.swift in Sources */ = {isa = PBXBuildFile; fileRef = 331C80D7294CF71000263BE5 /* RunnerTests.swift */; };
		335BBD1B22A9A15E00E9071D /* GeneratedPluginRegistrant.swift in Sources */ = {isa = PBXBuildFile; fileRef = 335BBD1A22A9A15E00E9071D /* GeneratedPluginRegistrant.swift */; };
		33CC10F12044A3C60003C045 /* AppDelegate.swift in Sources */ = {isa = PBXBuildFile; fileRef = 33CC10F02044A3C60003C045 /* AppDelegate.swift */; };
		33CC10F32044A3C60003C045 /* Assets.xcassets in Resources */ = {isa = PBXBuildFile; fileRef = 33CC10F22044A3C60003C045 /* Assets.xcassets */; };
		33CC10F62044A3C60003C045 /* MainMenu.xib in Resources */ = {isa = PBXBuildFile; fileRef = 33CC10F42044A3C60003C045 /* MainMenu.xib */; };
		33CC11132044BFA00003C045 /* MainFlutterWindow.swift in Sources */ = {isa = PBXBuildFile; fileRef = 33CC11122044BFA00003C045 /* MainFlutterWindow.swift */; };
/* End PBXBuildFile section */

/* Begin PBXContainerItemProxy section */
		331C80D9294CF71000263BE5 /* PBXContainerItemProxy */ = {
			isa = PBXContainerItemProxy;
			containerPortal = 33CC10E52044A3C60003C045 /* Project object */;
			proxyType = 1;
			remoteGlobalIDString = 33CC10EC2044A3C60003C045;
			remoteInfo = Runner;
		};
		33CC111F2044C79F0003C045 /* PBXContainerItemProxy */ = {
			isa = PBXContainerItemProxy;
			containerPortal = 33CC10E52044A3C60003C045 /* Project object */;
			proxyType = 1;
			remoteGlobalIDString = 33CC111A2044C6BA0003C045;
			remoteInfo = FLX;
		};
/* End PBXContainerItemProxy section */

/* Begin PBXCopyFilesBuildPhase section */
		33CC110E2044A8840003C045 /* Bundle Framework */ = {
			isa = PBXCopyFilesBuildPhase;
			buildActionMask = 2147483647;
			dstPath = "";
			dstSubfolderSpec = 10;
			files = (
			);
			name = "Bundle Framework";
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXCopyFilesBuildPhase section */

/* Begin PBXFileReference section */
		331C80D5294CF71000263BE5 /* RunnerTests.xctest */ = {isa = PBXFileReference; explicitFileType = wrapper.cfbundle; includeInIndex = 0; path = RunnerTests.xctest; sourceTree = BUILT_PRODUCTS_DIR; };
		331C80D7294CF71000263BE5 /* RunnerTests.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = RunnerTests.swift; sourceTree = "<group>"; };
		333000ED22D3DE5D00554162 /* Warnings.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; path = Warnings.xcconfig; sourceTree = "<group>"; };
		335BBD1A22A9A15E00E9071D /* GeneratedPluginRegistrant.swift */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = sourcecode.swift; path = GeneratedPluginRegistrant.swift; sourceTree = "<group>"; };
		33CC10ED2044A3C60003C045 /* base_template_general_framework_project_production_app.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = "base_template_general_framework_project_production_app.app"; sourceTree = BUILT_PRODUCTS_DIR; };
		33CC10F02044A3C60003C045 /* AppDelegate.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = AppDelegate.swift; sourceTree = "<group>"; };
		33CC10F22044A3C60003C045 /* Assets.xcassets */ = {isa = PBXFileReference; lastKnownFileType = folder.assetcatalog; name = Assets.xcassets; path = Runner/Assets.xcassets; sourceTree = "<group>"; };
		33CC10F52044A3C60003C045 /* Base */ = {isa = PBXFileReference; lastKnownFileType = file.xib; name = Base; path = Base.lproj/MainMenu.xib; sourceTree = "<group>"; };
		33CC10F72044A3C60003C045 /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; name = Info.plist; path = Runner/Info.plist; sourceTree = "<group>"; };
		33CC11122044BFA00003C045 /* MainFlutterWindow.swift */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.swift; path = MainFlutterWindow.swift; sourceTree = "<group>"; };
		33CEB47222A05771004F2AC0 /* Flutter-Debug.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; path = "Flutter-Debug.xcconfig"; sourceTree = "<group>"; };
		33CEB47422A05771004F2AC0 /* Flutter-Release.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; path = "Flutter-Release.xcconfig"; sourceTree = "<group>"; };
		33CEB47722A0578A004F2AC0 /* Flutter-Generated.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; name = "Flutter-Generated.xcconfig"; path = "ephemeral/Flutter-Generated.xcconfig"; sourceTree = "<group>"; };
		33E51913231747F40026EE4D /* DebugProfile.entitlements */ = {isa = PBXFileReference; lastKnownFileType = text.plist.entitlements; path = DebugProfile.entitlements; sourceTree = "<group>"; };
		33E51914231749380026EE4D /* Release.entitlements */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.plist.entitlements; path = Release.entitlements; sourceTree = "<group>"; };
		33E5194F232828860026EE4D /* AppInfo.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; path = AppInfo.xcconfig; sourceTree = "<group>"; };
		7AFA3C8E1D35360C0083082E /* Release.xcconfig */ = {isa = PBXFileReference; lastKnownFileType = text.xcconfig; path = Release.xcconfig; sourceTree = "<group>"; };
		9740EEB21CF90195004384FC /* Debug.xcconfig */ = {isa = PBXFileReference; fileEncoding = 4; lastKnownFileType = text.xcconfig; path = Debug.xcconfig; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		331C80D2294CF70F00263BE5 /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		33CC10EA2044A3C60003C045 /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		331C80D6294CF71000263BE5 /* RunnerTests */ = {
			isa = PBXGroup;
			children = (
				331C80D7294CF71000263BE5 /* RunnerTests.swift */,
			);
			path = RunnerTests;
			sourceTree = "<group>";
		};
		33BA886A226E78AF003329D5 /* Configs */ = {
			isa = PBXGroup;
			children = (
				33E5194F232828860026EE4D /* AppInfo.xcconfig */,
				9740EEB21CF90195004384FC /* Debug.xcconfig */,
				7AFA3C8E1D35360C0083082E /* Release.xcconfig */,
				333000ED22D3DE5D00554162 /* Warnings.xcconfig */,
			);
			path = Configs;
			sourceTree = "<group>";
		};
		33CC10E42044A3C60003C045 = {
			isa = PBXGroup;
			children = (
				33FAB671232836740065AC1E /* Runner */,
				33CEB47122A05771004F2AC0 /* Flutter */,
				331C80D6294CF71000263BE5 /* RunnerTests */,
				33CC10EE2044A3C60003C045 /* Products */,
				D73912EC22F37F3D000D13A0 /* Frameworks */,
			);
			sourceTree = "<group>";
		};
		33CC10EE2044A3C60003C045 /* Products */ = {
			isa = PBXGroup;
			children = (
				33CC10ED2044A3C60003C045 /* base_template_general_framework_project_production_app.app */,
				331C80D5294CF71000263BE5 /* RunnerTests.xctest */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		33CC11242044D66E0003C045 /* Resources */ = {
			isa = PBXGroup;
			children = (
				33CC10F22044A3C60003C045 /* Assets.xcassets */,
				33CC10F42044A3C60003C045 /* MainMenu.xib */,
				33CC10F72044A3C60003C045 /* Info.plist */,
			);
			name = Resources;
			path = ..;
			sourceTree = "<group>";
		};
		33CEB47122A05771004F2AC0 /* Flutter */ = {
			isa = PBXGroup;
			children = (
				335BBD1A22A9A15E00E9071D /* GeneratedPluginRegistrant.swift */,
				33CEB47222A05771004F2AC0 /* Flutter-Debug.xcconfig */,
				33CEB47422A05771004F2AC0 /* Flutter-Release.xcconfig */,
				33CEB47722A0578A004F2AC0 /* Flutter-Generated.xcconfig */,
			);
			path = Flutter;
			sourceTree = "<group>";
		};
		33FAB671232836740065AC1E /* Runner */ = {
			isa = PBXGroup;
			children = (
				33CC10F02044A3C60003C045 /* AppDelegate.swift */,
				33CC11122044BFA00003C045 /* MainFlutterWindow.swift */,
				33E51913231747F40026EE4D /* DebugProfile.entitlements */,
				33E51914231749380026EE4D /* Release.entitlements */,
				33CC11242044D66E0003C045 /* Resources */,
				33BA886A226E78AF003329D5 /* Configs */,
			);
			path = Runner;
			sourceTree = "<group>";
		};
		D73912EC22F37F3D000D13A0 /* Frameworks */ = {
			isa = PBXGroup;
			children = (
			);
			name = Frameworks;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		331C80D4294CF70F00263BE5 /* RunnerTests */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 331C80DE294CF71000263BE5 /* Build configuration list for PBXNativeTarget "RunnerTests" */;
			buildPhases = (
				331C80D1294CF70F00263BE5 /* Sources */,
				331C80D2294CF70F00263BE5 /* Frameworks */,
				331C80D3294CF70F00263BE5 /* Resources */,
			);
			buildRules = (
			);
			dependencies = (
				331C80DA294CF71000263BE5 /* PBXTargetDependency */,
			);
			name = RunnerTests;
			productName = RunnerTests;
			productReference = 331C80D5294CF71000263BE5 /* RunnerTests.xctest */;
			productType = "com.apple.product-type.bundle.unit-test";
		};
		33CC10EC2044A3C60003C045 /* Runner */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 33CC10FB2044A3C60003C045 /* Build configuration list for PBXNativeTarget "Runner" */;
			buildPhases = (
				33CC10E92044A3C60003C045 /* Sources */,
				33CC10EA2044A3C60003C045 /* Frameworks */,
				33CC10EB2044A3C60003C045 /* Resources */,
				33CC110E2044A8840003C045 /* Bundle Framework */,
				3399D490228B24CF009A79C7 /* ShellScript */,
			);
			buildRules = (
			);
			dependencies = (
				33CC11202044C79F0003C045 /* PBXTargetDependency */,
			);
			name = Runner;
			productName = Runner;
			productReference = 33CC10ED2044A3C60003C045 /* base_template_general_framework_project_production_app.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		33CC10E52044A3C60003C045 /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = YES;
				LastSwiftUpdateCheck = 0920;
				LastUpgradeCheck = 1510;
				ORGANIZATIONNAME = "";
				TargetAttributes = {
					331C80D4294CF70F00263BE5 = {
						CreatedOnToolsVersion = 14.0;
						TestTargetID = 33CC10EC2044A3C60003C045;
					};
					33CC10EC2044A3C60003C045 = {
						CreatedOnToolsVersion = 9.2;
						LastSwiftMigration = 1100;
						ProvisioningStyle = Automatic;
						SystemCapabilities = {
							com.apple.Sandbox = {
								enabled = 1;
							};
						};
					};
					33CC111A2044C6BA0003C045 = {
						CreatedOnToolsVersion = 9.2;
						ProvisioningStyle = Manual;
					};
				};
			};
			buildConfigurationList = 33CC10E82044A3C60003C045 /* Build configuration list for PBXProject "Runner" */;
			compatibilityVersion = "Xcode 9.3";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = 33CC10E42044A3C60003C045;
			productRefGroup = 33CC10EE2044A3C60003C045 /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				33CC10EC2044A3C60003C045 /* Runner */,
				331C80D4294CF70F00263BE5 /* RunnerTests */,
				33CC111A2044C6BA0003C045 /* Flutter Assemble */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		331C80D3294CF70F00263BE5 /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		33CC10EB2044A3C60003C045 /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				33CC10F32044A3C60003C045 /* Assets.xcassets in Resources */,
				33CC10F62044A3C60003C045 /* MainMenu.xib in Resources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXShellScriptBuildPhase section */
		3399D490228B24CF009A79C7 /* ShellScript */ = {
			isa = PBXShellScriptBuildPhase;
			alwaysOutOfDate = 1;
			buildActionMask = 2147483647;
			files = (
			);
			inputFileListPaths = (
			);
			inputPaths = (
			);
			outputFileListPaths = (
			);
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "echo \"$PRODUCT_NAME.app\" > \"$PROJECT_DIR\"/Flutter/ephemeral/.app_filename && \"$FLUTTER_ROOT\"/packages/flutter_tools/bin/macos_assemble.sh embed\n";
		};
		33CC111E2044C6BF0003C045 /* ShellScript */ = {
			isa = PBXShellScriptBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			inputFileListPaths = (
				Flutter/ephemeral/FlutterInputs.xcfilelist,
			);
			inputPaths = (
				Flutter/ephemeral/tripwire,
			);
			outputFileListPaths = (
				Flutter/ephemeral/FlutterOutputs.xcfilelist,
			);
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "\"$FLUTTER_ROOT\"/packages/flutter_tools/bin/macos_assemble.sh && touch Flutter/ephemeral/tripwire";
		};
/* End PBXShellScriptBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		331C80D1294CF70F00263BE5 /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				331C80D8294CF71000263BE5 /* RunnerTests.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
		33CC10E92044A3C60003C045 /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				33CC11132044BFA00003C045 /* MainFlutterWindow.swift in Sources */,
				33CC10F12044A3C60003C045 /* AppDelegate.swift in Sources */,
				335BBD1B22A9A15E00E9071D /* GeneratedPluginRegistrant.swift in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin PBXTargetDependency section */
		331C80DA294CF71000263BE5 /* PBXTargetDependency */ = {
			isa = PBXTargetDependency;
			target = 33CC10EC2044A3C60003C045 /* Runner */;
			targetProxy = 331C80D9294CF71000263BE5 /* PBXContainerItemProxy */;
		};
		33CC11202044C79F0003C045 /* PBXTargetDependency */ = {
			isa = PBXTargetDependency;
			target = 33CC111A2044C6BA0003C045 /* Flutter Assemble */;
			targetProxy = 33CC111F2044C79F0003C045 /* PBXContainerItemProxy */;
		};
/* End PBXTargetDependency section */

/* Begin PBXVariantGroup section */
		33CC10F42044A3C60003C045 /* MainMenu.xib */ = {
			isa = PBXVariantGroup;
			children = (
				33CC10F52044A3C60003C045 /* Base */,
			);
			name = MainMenu.xib;
			path = Runner;
			sourceTree = "<group>";
		};
/* End PBXVariantGroup section */

/* Begin XCBuildConfiguration section */
		331C80DB294CF71000263BE5 /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/base_template_general_framework_project_production_app.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/base_template_general_framework_project_production_app";
			};
			name = Debug;
		};
		331C80DC294CF71000263BE5 /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/base_template_general_framework_project_production_app.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/base_template_general_framework_project_production_app";
			};
			name = Release;
		};
		331C80DD294CF71000263BE5 /* Profile */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				BUNDLE_LOADER = "$(TEST_HOST)";
				CURRENT_PROJECT_VERSION = 1;
				GENERATE_INFOPLIST_FILE = YES;
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.example.baseTemplateGeneralFrameworkProjectProductionApp.RunnerTests;
				PRODUCT_NAME = "$(TARGET_NAME)";
				SWIFT_VERSION = 5.0;
				TEST_HOST = "$(BUILT_PRODUCTS_DIR)/base_template_general_framework_project_production_app.app/$(BUNDLE_EXECUTABLE_FOLDER_PATH)/base_template_general_framework_project_production_app";
			};
			name = Profile;
		};
		338D0CE9231458BD00FA5F75 /* Profile */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++14";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CODE_SIGN_IDENTITY = "-";
				COPY_PHASE_STRIP = NO;
				DEAD_CODE_STRIPPING = YES;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu11;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				MACOSX_DEPLOYMENT_TARGET = 10.14;
				MTL_ENABLE_DEBUG_INFO = NO;
				SDKROOT = macosx;
				SWIFT_COMPILATION_MODE = wholemodule;
				SWIFT_OPTIMIZATION_LEVEL = "-O";
			};
			name = Profile;
		};
		338D0CEA231458BD00FA5F75 /* Profile */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 33E5194F232828860026EE4D /* AppInfo.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CODE_SIGN_ENTITLEMENTS = Runner/DebugProfile.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				PROVISIONING_PROFILE_SPECIFIER = "";
				SWIFT_VERSION = 5.0;
			};
			name = Profile;
		};
		338D0CEB231458BD00FA5F75 /* Profile */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				CODE_SIGN_STYLE = Manual;
				PRODUCT_NAME = "$(TARGET_NAME)";
			};
			name = Profile;
		};
		33CC10F92044A3C60003C045 /* Debug */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 9740EEB21CF90195004384FC /* Debug.xcconfig */;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++14";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CODE_SIGN_IDENTITY = "-";
				COPY_PHASE_STRIP = NO;
				DEAD_CODE_STRIPPING = YES;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu11;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"$(inherited)",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				MACOSX_DEPLOYMENT_TARGET = 10.14;
				MTL_ENABLE_DEBUG_INFO = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = macosx;
				SWIFT_ACTIVE_COMPILATION_CONDITIONS = DEBUG;
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
			};
			name = Debug;
		};
		33CC10FA2044A3C60003C045 /* Release */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 7AFA3C8E1D35360C0083082E /* Release.xcconfig */;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++14";
				CLANG_CXX_LIBRARY = "libc++";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CODE_SIGN_IDENTITY = "-";
				COPY_PHASE_STRIP = NO;
				DEAD_CODE_STRIPPING = YES;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = NO;
				GCC_C_LANGUAGE_STANDARD = gnu11;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				MACOSX_DEPLOYMENT_TARGET = 10.14;
				MTL_ENABLE_DEBUG_INFO = NO;
				SDKROOT = macosx;
				SWIFT_COMPILATION_MODE = wholemodule;
				SWIFT_OPTIMIZATION_LEVEL = "-O";
			};
			name = Release;
		};
		33CC10FC2044A3C60003C045 /* Debug */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 33E5194F232828860026EE4D /* AppInfo.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CODE_SIGN_ENTITLEMENTS = Runner/DebugProfile.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				PROVISIONING_PROFILE_SPECIFIER = "";
				SWIFT_OPTIMIZATION_LEVEL = "-Onone";
				SWIFT_VERSION = 5.0;
			};
			name = Debug;
		};
		33CC10FD2044A3C60003C045 /* Release */ = {
			isa = XCBuildConfiguration;
			baseConfigurationReference = 33E5194F232828860026EE4D /* AppInfo.xcconfig */;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				CLANG_ENABLE_MODULES = YES;
				CODE_SIGN_ENTITLEMENTS = Runner/Release.entitlements;
				CODE_SIGN_STYLE = Automatic;
				COMBINE_HIDPI_IMAGES = YES;
				INFOPLIST_FILE = Runner/Info.plist;
				LD_RUNPATH_SEARCH_PATHS = (
					"$(inherited)",
					"@executable_path/../Frameworks",
				);
				PROVISIONING_PROFILE_SPECIFIER = "";
				SWIFT_VERSION = 5.0;
			};
			name = Release;
		};
		33CC111C2044C6BA0003C045 /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				CODE_SIGN_STYLE = Manual;
				PRODUCT_NAME = "$(TARGET_NAME)";
			};
			name = Debug;
		};
		33CC111D2044C6BA0003C045 /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				CODE_SIGN_STYLE = Automatic;
				PRODUCT_NAME = "$(TARGET_NAME)";
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		331C80DE294CF71000263BE5 /* Build configuration list for PBXNativeTarget "RunnerTests" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				331C80DB294CF71000263BE5 /* Debug */,
				331C80DC294CF71000263BE5 /* Release */,
				331C80DD294CF71000263BE5 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		33CC10E82044A3C60003C045 /* Build configuration list for PBXProject "Runner" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				33CC10F92044A3C60003C045 /* Debug */,
				33CC10FA2044A3C60003C045 /* Release */,
				338D0CE9231458BD00FA5F75 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		33CC10FB2044A3C60003C045 /* Build configuration list for PBXNativeTarget "Runner" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				33CC10FC2044A3C60003C045 /* Debug */,
				33CC10FD2044A3C60003C045 /* Release */,
				338D0CEA231458BD00FA5F75 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		33CC111B2044C6BA0003C045 /* Build configuration list for PBXAggregateTarget "Flutter Assemble" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				33CC111C2044C6BA0003C045 /* Debug */,
				33CC111D2044C6BA0003C045 /* Release */,
				338D0CEB231458BD00FA5F75 /* Profile */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
/* End XCConfigurationList section */
	};
	rootObject = 33CC10E52044A3C60003C045 /* Project object */;
}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/macos/Runner.xcworkspace"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/macos/Runner.xcworkspace/xcshareddata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [
                      ScriptGenerator(
                        is_generate: true,
                        directory_base: Directory(
                            "base_template_general_framework_project"),
                        file_system_entity: File(
                            "production/base_template_general_framework_project_production_app/macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist"),
                        state_data: {},
                        file_system_entity_type: FileSystemEntityType.file,
                        value: r"""<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>IDEDidComputeMac32BitWarning</key>
	<true/>
</dict>
</plist>
""",
                        children: [],
                      )
                    ],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/Runner.xcworkspace/contents.xcworkspacedata"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""<?xml version="1.0" encoding="UTF-8"?>
<Workspace
   version = "1.0">
   <FileRef
      location = "group:Runner.xcodeproj">
   </FileRef>
</Workspace>
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/macos/RunnerTests"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/macos/RunnerTests/RunnerTests.swift"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""import Cocoa
import FlutterMacOS
import XCTest

class RunnerTests: XCTestCase {

  func testExample() {
    // If you add code to the Runner application, consider adding tests here.
    // See https://developer.apple.com/documentation/xctest for more information about using XCTest.
  }

}
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/macos/.gitignore"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""# Flutter-related
**/Flutter/ephemeral/
**/Pods/

# Xcode-related
**/dgph
**/xcuserdata/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
.dart_tool/
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/test/widget_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:base_template_general_framework_project_production_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/web"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/web/icons"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/web/index.html"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<!DOCTYPE html>
<html>
<head>
  <!--
    If you are serving your web app in a path other than the root, change the
    href value below to reflect the base path you are serving from.

    The path provided below has to start and end with a slash "/" in order for
    it to work correctly.

    For more details:
    * https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base

    This is a placeholder for base href that will be replaced by the value of
    the `--base-href` argument provided to `flutter build`.
  -->
  <base href="$FLUTTER_BASE_HREF">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">
  <meta name="description" content="A new Flutter project.">

  <!-- iOS meta tags & icons -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="base_template_general_framework_project_production_app">
  <link rel="apple-touch-icon" href="icons/Icon-192.png">

  <!-- Favicon -->
  <link rel="icon" type="image/png" href="favicon.png"/>

  <title>base_template_general_framework_project_production_app</title>
  <link rel="manifest" href="manifest.json">
</head>
<body>
  <script src="flutter_bootstrap.js" async></script>
</body>
</html>
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/web/manifest.json"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
{
    "name": "base_template_general_framework_project_production_app",
    "short_name": "base_template_general_framework_project_production_app",
    "start_url": ".",
    "display": "standalone",
    "background_color": "#0175C2",
    "theme_color": "#0175C2",
    "description": "A new Flutter project.",
    "orientation": "portrait-primary",
    "prefer_related_applications": false,
    "icons": [
        {
            "src": "icons/Icon-192.png",
            "sizes": "192x192",
            "type": "image/png"
        },
        {
            "src": "icons/Icon-512.png",
            "sizes": "512x512",
            "type": "image/png"
        },
        {
            "src": "icons/Icon-maskable-192.png",
            "sizes": "192x192",
            "type": "image/png",
            "purpose": "maskable"
        },
        {
            "src": "icons/Icon-maskable-512.png",
            "sizes": "512x512",
            "type": "image/png",
            "purpose": "maskable"
        }
    ]
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_app/windows"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/windows/flutter"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/flutter/CMakeLists.txt"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""# This file controls Flutter-level build steps. It should not be edited.
cmake_minimum_required(VERSION 3.14)

set(EPHEMERAL_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ephemeral")

# Configuration provided via flutter tool.
include(${EPHEMERAL_DIR}/generated_config.cmake)

# TODO: Move the rest of this into files in ephemeral. See
# https://github.com/flutter/flutter/issues/57146.
set(WRAPPER_ROOT "${EPHEMERAL_DIR}/cpp_client_wrapper")

# Set fallback configurations for older versions of the flutter tool.
if (NOT DEFINED FLUTTER_TARGET_PLATFORM)
  set(FLUTTER_TARGET_PLATFORM "windows-x64")
endif()

# === Flutter Library ===
set(FLUTTER_LIBRARY "${EPHEMERAL_DIR}/flutter_windows.dll")

# Published to parent scope for install step.
set(FLUTTER_LIBRARY ${FLUTTER_LIBRARY} PARENT_SCOPE)
set(FLUTTER_ICU_DATA_FILE "${EPHEMERAL_DIR}/icudtl.dat" PARENT_SCOPE)
set(PROJECT_BUILD_DIR "${PROJECT_DIR}/build/" PARENT_SCOPE)
set(AOT_LIBRARY "${PROJECT_DIR}/build/windows/app.so" PARENT_SCOPE)

list(APPEND FLUTTER_LIBRARY_HEADERS
  "flutter_export.h"
  "flutter_windows.h"
  "flutter_messenger.h"
  "flutter_plugin_registrar.h"
  "flutter_texture_registrar.h"
)
list(TRANSFORM FLUTTER_LIBRARY_HEADERS PREPEND "${EPHEMERAL_DIR}/")
add_library(flutter INTERFACE)
target_include_directories(flutter INTERFACE
  "${EPHEMERAL_DIR}"
)
target_link_libraries(flutter INTERFACE "${FLUTTER_LIBRARY}.lib")
add_dependencies(flutter flutter_assemble)

# === Wrapper ===
list(APPEND CPP_WRAPPER_SOURCES_CORE
  "core_implementations.cc"
  "standard_codec.cc"
)
list(TRANSFORM CPP_WRAPPER_SOURCES_CORE PREPEND "${WRAPPER_ROOT}/")
list(APPEND CPP_WRAPPER_SOURCES_PLUGIN
  "plugin_registrar.cc"
)
list(TRANSFORM CPP_WRAPPER_SOURCES_PLUGIN PREPEND "${WRAPPER_ROOT}/")
list(APPEND CPP_WRAPPER_SOURCES_APP
  "flutter_engine.cc"
  "flutter_view_controller.cc"
)
list(TRANSFORM CPP_WRAPPER_SOURCES_APP PREPEND "${WRAPPER_ROOT}/")

# Wrapper sources needed for a plugin.
add_library(flutter_wrapper_plugin STATIC
  ${CPP_WRAPPER_SOURCES_CORE}
  ${CPP_WRAPPER_SOURCES_PLUGIN}
)
apply_standard_settings(flutter_wrapper_plugin)
set_target_properties(flutter_wrapper_plugin PROPERTIES
  POSITION_INDEPENDENT_CODE ON)
set_target_properties(flutter_wrapper_plugin PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_link_libraries(flutter_wrapper_plugin PUBLIC flutter)
target_include_directories(flutter_wrapper_plugin PUBLIC
  "${WRAPPER_ROOT}/include"
)
add_dependencies(flutter_wrapper_plugin flutter_assemble)

# Wrapper sources needed for the runner.
add_library(flutter_wrapper_app STATIC
  ${CPP_WRAPPER_SOURCES_CORE}
  ${CPP_WRAPPER_SOURCES_APP}
)
apply_standard_settings(flutter_wrapper_app)
target_link_libraries(flutter_wrapper_app PUBLIC flutter)
target_include_directories(flutter_wrapper_app PUBLIC
  "${WRAPPER_ROOT}/include"
)
add_dependencies(flutter_wrapper_app flutter_assemble)

# === Flutter tool backend ===
# _phony_ is a non-existent file to force this command to run every time,
# since currently there's no way to get a full input/output list from the
# flutter tool.
set(PHONY_OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/_phony_")
set_source_files_properties("${PHONY_OUTPUT}" PROPERTIES SYMBOLIC TRUE)
add_custom_command(
  OUTPUT ${FLUTTER_LIBRARY} ${FLUTTER_LIBRARY_HEADERS}
    ${CPP_WRAPPER_SOURCES_CORE} ${CPP_WRAPPER_SOURCES_PLUGIN}
    ${CPP_WRAPPER_SOURCES_APP}
    ${PHONY_OUTPUT}
  COMMAND ${CMAKE_COMMAND} -E env
    ${FLUTTER_TOOL_ENVIRONMENT}
    "${FLUTTER_ROOT}/packages/flutter_tools/bin/tool_backend.bat"
      ${FLUTTER_TARGET_PLATFORM} $<CONFIG>
  VERBATIM
)
add_custom_target(flutter_assemble DEPENDS
  "${FLUTTER_LIBRARY}"
  ${FLUTTER_LIBRARY_HEADERS}
  ${CPP_WRAPPER_SOURCES_CORE}
  ${CPP_WRAPPER_SOURCES_PLUGIN}
  ${CPP_WRAPPER_SOURCES_APP}
)
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: Directory(
                    "production/base_template_general_framework_project_production_app/windows/runner"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: Directory(
                        "production/base_template_general_framework_project_production_app/windows/runner/resources"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.directory,
                    value: "",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/CMakeLists.txt"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""cmake_minimum_required(VERSION 3.14)
project(runner LANGUAGES CXX)

# Define the application target. To change its name, change BINARY_NAME in the
# top-level CMakeLists.txt, not the value here, or `flutter run` will no longer
# work.
#
# Any new source files that you add to the application should be added here.
add_executable(${BINARY_NAME} WIN32
  "flutter_window.cpp"
  "main.cpp"
  "utils.cpp"
  "win32_window.cpp"
  "${FLUTTER_MANAGED_DIR}/generated_plugin_registrant.cc"
  "Runner.rc"
  "runner.exe.manifest"
)

# Apply the standard set of build settings. This can be removed for applications
# that need different build settings.
apply_standard_settings(${BINARY_NAME})

# Add preprocessor definitions for the build version.
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION=\"${FLUTTER_VERSION}\"")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_MAJOR=${FLUTTER_VERSION_MAJOR}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_MINOR=${FLUTTER_VERSION_MINOR}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_PATCH=${FLUTTER_VERSION_PATCH}")
target_compile_definitions(${BINARY_NAME} PRIVATE "FLUTTER_VERSION_BUILD=${FLUTTER_VERSION_BUILD}")

# Disable Windows macros that collide with C++ standard library functions.
target_compile_definitions(${BINARY_NAME} PRIVATE "NOMINMAX")

# Add dependency libraries and include directories. Add any application-specific
# dependencies here.
target_link_libraries(${BINARY_NAME} PRIVATE flutter flutter_wrapper_app)
target_link_libraries(${BINARY_NAME} PRIVATE "dwmapi.lib")
target_include_directories(${BINARY_NAME} PRIVATE "${CMAKE_SOURCE_DIR}")

# Run the Flutter tool portions of the build. This must not be removed.
add_dependencies(${BINARY_NAME} flutter_assemble)
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/flutter_window.cpp"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""/* <!-- START LICENSE -->


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
#include "flutter_window.h"

#include <optional>

#include "flutter/generated_plugin_registrant.h"

FlutterWindow::FlutterWindow(const flutter::DartProject& project)
    : project_(project) {}

FlutterWindow::~FlutterWindow() {}

bool FlutterWindow::OnCreate() {
  if (!Win32Window::OnCreate()) {
    return false;
  }

  RECT frame = GetClientArea();

  // The size here must match the window dimensions to avoid unnecessary surface
  // creation / destruction in the startup path.
  flutter_controller_ = std::make_unique<flutter::FlutterViewController>(
      frame.right - frame.left, frame.bottom - frame.top, project_);
  // Ensure that basic setup of the controller was successful.
  if (!flutter_controller_->engine() || !flutter_controller_->view()) {
    return false;
  }
  RegisterPlugins(flutter_controller_->engine());
  SetChildContent(flutter_controller_->view()->GetNativeWindow());

  flutter_controller_->engine()->SetNextFrameCallback([&]() {
    this->Show();
  });

  // Flutter can complete the first frame before the "show window" callback is
  // registered. The following call ensures a frame is pending to ensure the
  // window is shown. It is a no-op if the first frame hasn't completed yet.
  flutter_controller_->ForceRedraw();

  return true;
}

void FlutterWindow::OnDestroy() {
  if (flutter_controller_) {
    flutter_controller_ = nullptr;
  }

  Win32Window::OnDestroy();
}

LRESULT
FlutterWindow::MessageHandler(HWND hwnd, UINT const message,
                              WPARAM const wparam,
                              LPARAM const lparam) noexcept {
  // Give Flutter, including plugins, an opportunity to handle window messages.
  if (flutter_controller_) {
    std::optional<LRESULT> result =
        flutter_controller_->HandleTopLevelWindowProc(hwnd, message, wparam,
                                                      lparam);
    if (result) {
      return *result;
    }
  }

  switch (message) {
    case WM_FONTCHANGE:
      flutter_controller_->engine()->ReloadSystemFonts();
      break;
  }

  return Win32Window::MessageHandler(hwnd, message, wparam, lparam);
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/flutter_window.h"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#ifndef RUNNER_FLUTTER_WINDOW_H_
#define RUNNER_FLUTTER_WINDOW_H_

#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>

#include <memory>

#include "win32_window.h"

// A window that does nothing but host a Flutter view.
class FlutterWindow : public Win32Window {
 public:
  // Creates a new FlutterWindow hosting a Flutter view running |project|.
  explicit FlutterWindow(const flutter::DartProject& project);
  virtual ~FlutterWindow();

 protected:
  // Win32Window:
  bool OnCreate() override;
  void OnDestroy() override;
  LRESULT MessageHandler(HWND window, UINT const message, WPARAM const wparam,
                         LPARAM const lparam) noexcept override;

 private:
  // The project to run.
  flutter::DartProject project_;

  // The Flutter instance hosted by this window.
  std::unique_ptr<flutter::FlutterViewController> flutter_controller_;
};

#endif  // RUNNER_FLUTTER_WINDOW_H_
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/main.cpp"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""/* <!-- START LICENSE -->


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
#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>
#include <windows.h>

#include "flutter_window.h"
#include "utils.h"

int APIENTRY wWinMain(_In_ HINSTANCE instance, _In_opt_ HINSTANCE prev,
                      _In_ wchar_t *command_line, _In_ int show_command) {
  // Attach to console when present (e.g., 'flutter run') or create a
  // new console when running with a debugger.
  if (!::AttachConsole(ATTACH_PARENT_PROCESS) && ::IsDebuggerPresent()) {
    CreateAndAttachConsole();
  }

  // Initialize COM, so that it is available for use in the library and/or
  // plugins.
  ::CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  flutter::DartProject project(L"data");

  std::vector<std::string> command_line_arguments =
      GetCommandLineArguments();

  project.set_dart_entrypoint_arguments(std::move(command_line_arguments));

  FlutterWindow window(project);
  Win32Window::Point origin(10, 10);
  Win32Window::Size size(1280, 720);
  if (!window.Create(L"base_template_general_framework_project_production_app", origin, size)) {
    return EXIT_FAILURE;
  }
  window.SetQuitOnClose(true);

  ::MSG msg;
  while (::GetMessage(&msg, nullptr, 0, 0)) {
    ::TranslateMessage(&msg);
    ::DispatchMessage(&msg);
  }

  ::CoUninitialize();
  return EXIT_SUCCESS;
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/resource.h"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""//{{NO_DEPENDENCIES}}
// Microsoft Visual C++ generated include file.
// Used by Runner.rc
//
#define IDI_APP_ICON                    101

// Next default values for new objects
//
#ifdef APSTUDIO_INVOKED
#ifndef APSTUDIO_READONLY_SYMBOLS
#define _APS_NEXT_RESOURCE_VALUE        102
#define _APS_NEXT_COMMAND_VALUE         40001
#define _APS_NEXT_CONTROL_VALUE         1001
#define _APS_NEXT_SYMED_VALUE           101
#endif
#endif
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/runner.exe.manifest"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0">
  <application xmlns="urn:schemas-microsoft-com:asm.v3">
    <windowsSettings>
      <dpiAwareness xmlns="http://schemas.microsoft.com/SMI/2016/WindowsSettings">PerMonitorV2</dpiAwareness>
    </windowsSettings>
  </application>
  <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
    <application>
      <!-- Windows 10 and Windows 11 -->
      <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}"/>
      <!-- Windows 8.1 -->
      <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}"/>
      <!-- Windows 8 -->
      <supportedOS Id="{4a2f28e3-53b9-4441-ba9c-d69d4a4a6e38}"/>
      <!-- Windows 7 -->
      <supportedOS Id="{35138b9a-5d96-4fbd-8e2d-a2440225f93a}"/>
    </application>
  </compatibility>
</assembly>
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/Runner.rc"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value:
                        r"""// Microsoft Visual C++ generated resource script.
//
#pragma code_page(65001)
#include "resource.h"

#define APSTUDIO_READONLY_SYMBOLS
/////////////////////////////////////////////////////////////////////////////
//
// Generated from the TEXTINCLUDE 2 resource.
//
#include "winres.h"

/////////////////////////////////////////////////////////////////////////////
#undef APSTUDIO_READONLY_SYMBOLS

/////////////////////////////////////////////////////////////////////////////
// English (United States) resources

#if !defined(AFX_RESOURCE_DLL) || defined(AFX_TARG_ENU)
LANGUAGE LANG_ENGLISH, SUBLANG_ENGLISH_US

#ifdef APSTUDIO_INVOKED
/////////////////////////////////////////////////////////////////////////////
//
// TEXTINCLUDE
//

1 TEXTINCLUDE
BEGIN
    "resource.h\0"
END

2 TEXTINCLUDE
BEGIN
    "#include ""winres.h""\r\n"
    "\0"
END

3 TEXTINCLUDE
BEGIN
    "\r\n"
    "\0"
END

#endif    // APSTUDIO_INVOKED


/////////////////////////////////////////////////////////////////////////////
//
// Icon
//

// Icon with lowest ID value placed first to ensure application icon
// remains consistent on all systems.
IDI_APP_ICON            ICON                    "resources\\app_icon.ico"


/////////////////////////////////////////////////////////////////////////////
//
// Version
//

#if defined(FLUTTER_VERSION_MAJOR) && defined(FLUTTER_VERSION_MINOR) && defined(FLUTTER_VERSION_PATCH) && defined(FLUTTER_VERSION_BUILD)
#define VERSION_AS_NUMBER FLUTTER_VERSION_MAJOR,FLUTTER_VERSION_MINOR,FLUTTER_VERSION_PATCH,FLUTTER_VERSION_BUILD
#else
#define VERSION_AS_NUMBER 1,0,0,0
#endif

#if defined(FLUTTER_VERSION)
#define VERSION_AS_STRING FLUTTER_VERSION
#else
#define VERSION_AS_STRING "1.0.0"
#endif

VS_VERSION_INFO VERSIONINFO
 FILEVERSION VERSION_AS_NUMBER
 PRODUCTVERSION VERSION_AS_NUMBER
 FILEFLAGSMASK VS_FFI_FILEFLAGSMASK
#ifdef _DEBUG
 FILEFLAGS VS_FF_DEBUG
#else
 FILEFLAGS 0x0L
#endif
 FILEOS VOS__WINDOWS32
 FILETYPE VFT_APP
 FILESUBTYPE 0x0L
BEGIN
    BLOCK "StringFileInfo"
    BEGIN
        BLOCK "040904e4"
        BEGIN
            VALUE "CompanyName", "com.example" "\0"
            VALUE "FileDescription", "base_template_general_framework_project_production_app" "\0"
            VALUE "FileVersion", VERSION_AS_STRING "\0"
            VALUE "InternalName", "base_template_general_framework_project_production_app" "\0"
            VALUE "LegalCopyright", "Copyright (C) 2024 com.example. All rights reserved." "\0"
            VALUE "OriginalFilename", "base_template_general_framework_project_production_app.exe" "\0"
            VALUE "ProductName", "base_template_general_framework_project_production_app" "\0"
            VALUE "ProductVersion", VERSION_AS_STRING "\0"
        END
    END
    BLOCK "VarFileInfo"
    BEGIN
        VALUE "Translation", 0x409, 1252
    END
END

#endif    // English (United States) resources
/////////////////////////////////////////////////////////////////////////////



#ifndef APSTUDIO_INVOKED
/////////////////////////////////////////////////////////////////////////////
//
// Generated from the TEXTINCLUDE 3 resource.
//


/////////////////////////////////////////////////////////////////////////////
#endif    // not APSTUDIO_INVOKED
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/utils.cpp"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""/* <!-- START LICENSE -->


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
#include "utils.h"

#include <flutter_windows.h>
#include <io.h>
#include <stdio.h>
#include <windows.h>

#include <iostream>

void CreateAndAttachConsole() {
  if (::AllocConsole()) {
    FILE *unused;
    if (freopen_s(&unused, "CONOUT$", "w", stdout)) {
      _dup2(_fileno(stdout), 1);
    }
    if (freopen_s(&unused, "CONOUT$", "w", stderr)) {
      _dup2(_fileno(stdout), 2);
    }
    std::ios::sync_with_stdio();
    FlutterDesktopResyncOutputStreams();
  }
}

std::vector<std::string> GetCommandLineArguments() {
  // Convert the UTF-16 command line arguments to UTF-8 for the Engine to use.
  int argc;
  wchar_t** argv = ::CommandLineToArgvW(::GetCommandLineW(), &argc);
  if (argv == nullptr) {
    return std::vector<std::string>();
  }

  std::vector<std::string> command_line_arguments;

  // Skip the first argument as it's the binary name.
  for (int i = 1; i < argc; i++) {
    command_line_arguments.push_back(Utf8FromUtf16(argv[i]));
  }

  ::LocalFree(argv);

  return command_line_arguments;
}

std::string Utf8FromUtf16(const wchar_t* utf16_string) {
  if (utf16_string == nullptr) {
    return std::string();
  }
  unsigned int target_length = ::WideCharToMultiByte(
      CP_UTF8, WC_ERR_INVALID_CHARS, utf16_string,
      -1, nullptr, 0, nullptr, nullptr)
    -1; // remove the trailing null character
  int input_length = (int)wcslen(utf16_string);
  std::string utf8_string;
  if (target_length == 0 || target_length > utf8_string.max_size()) {
    return utf8_string;
  }
  utf8_string.resize(target_length);
  int converted_length = ::WideCharToMultiByte(
      CP_UTF8, WC_ERR_INVALID_CHARS, utf16_string,
      input_length, utf8_string.data(), target_length, nullptr, nullptr);
  if (converted_length == 0) {
    return std::string();
  }
  return utf8_string;
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/utils.h"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#ifndef RUNNER_UTILS_H_
#define RUNNER_UTILS_H_

#include <string>
#include <vector>

// Creates a console for the process, and redirects stdout and stderr to
// it for both the runner and the Flutter library.
void CreateAndAttachConsole();

// Takes a null-terminated wchar_t* encoded in UTF-16 and returns a std::string
// encoded in UTF-8. Returns an empty std::string on failure.
std::string Utf8FromUtf16(const wchar_t* utf16_string);

// Gets the command line arguments passed in as a std::vector<std::string>,
// encoded in UTF-8. Returns an empty std::vector<std::string> on failure.
std::vector<std::string> GetCommandLineArguments();

#endif  // RUNNER_UTILS_H_
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/win32_window.cpp"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""/* <!-- START LICENSE -->


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
#include "win32_window.h"

#include <dwmapi.h>
#include <flutter_windows.h>

#include "resource.h"

namespace {

/// Window attribute that enables dark mode window decorations.
///
/// Redefined in case the developer's machine has a Windows SDK older than
/// version 10.0.22000.0.
/// See: https://docs.microsoft.com/windows/win32/api/dwmapi/ne-dwmapi-dwmwindowattribute
#ifndef DWMWA_USE_IMMERSIVE_DARK_MODE
#define DWMWA_USE_IMMERSIVE_DARK_MODE 20
#endif

constexpr const wchar_t kWindowClassName[] = L"FLUTTER_RUNNER_WIN32_WINDOW";

/// Registry key for app theme preference.
///
/// A value of 0 indicates apps should use dark mode. A non-zero or missing
/// value indicates apps should use light mode.
constexpr const wchar_t kGetPreferredBrightnessRegKey[] =
  L"Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize";
constexpr const wchar_t kGetPreferredBrightnessRegValue[] = L"AppsUseLightTheme";

// The number of Win32Window objects that currently exist.
static int g_active_window_count = 0;

using EnableNonClientDpiScaling = BOOL __stdcall(HWND hwnd);

// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int Scale(int source, double scale_factor) {
  return static_cast<int>(source * scale_factor);
}

// Dynamically loads the |EnableNonClientDpiScaling| from the User32 module.
// This API is only needed for PerMonitor V1 awareness mode.
void EnableFullDpiSupportIfAvailable(HWND hwnd) {
  HMODULE user32_module = LoadLibraryA("User32.dll");
  if (!user32_module) {
    return;
  }
  auto enable_non_client_dpi_scaling =
      reinterpret_cast<EnableNonClientDpiScaling*>(
          GetProcAddress(user32_module, "EnableNonClientDpiScaling"));
  if (enable_non_client_dpi_scaling != nullptr) {
    enable_non_client_dpi_scaling(hwnd);
  }
  FreeLibrary(user32_module);
}

}  // namespace

// Manages the Win32Window's window class registration.
class WindowClassRegistrar {
 public:
  ~WindowClassRegistrar() = default;

  // Returns the singleton registrar instance.
  static WindowClassRegistrar* GetInstance() {
    if (!instance_) {
      instance_ = new WindowClassRegistrar();
    }
    return instance_;
  }

  // Returns the name of the window class, registering the class if it hasn't
  // previously been registered.
  const wchar_t* GetWindowClass();

  // Unregisters the window class. Should only be called if there are no
  // instances of the window.
  void UnregisterWindowClass();

 private:
  WindowClassRegistrar() = default;

  static WindowClassRegistrar* instance_;

  bool class_registered_ = false;
};

WindowClassRegistrar* WindowClassRegistrar::instance_ = nullptr;

const wchar_t* WindowClassRegistrar::GetWindowClass() {
  if (!class_registered_) {
    WNDCLASS window_class{};
    window_class.hCursor = LoadCursor(nullptr, IDC_ARROW);
    window_class.lpszClassName = kWindowClassName;
    window_class.style = CS_HREDRAW | CS_VREDRAW;
    window_class.cbClsExtra = 0;
    window_class.cbWndExtra = 0;
    window_class.hInstance = GetModuleHandle(nullptr);
    window_class.hIcon =
        LoadIcon(window_class.hInstance, MAKEINTRESOURCE(IDI_APP_ICON));
    window_class.hbrBackground = 0;
    window_class.lpszMenuName = nullptr;
    window_class.lpfnWndProc = Win32Window::WndProc;
    RegisterClass(&window_class);
    class_registered_ = true;
  }
  return kWindowClassName;
}

void WindowClassRegistrar::UnregisterWindowClass() {
  UnregisterClass(kWindowClassName, nullptr);
  class_registered_ = false;
}

Win32Window::Win32Window() {
  ++g_active_window_count;
}

Win32Window::~Win32Window() {
  --g_active_window_count;
  Destroy();
}

bool Win32Window::Create(const std::wstring& title,
                         const Point& origin,
                         const Size& size) {
  Destroy();

  const wchar_t* window_class =
      WindowClassRegistrar::GetInstance()->GetWindowClass();

  const POINT target_point = {static_cast<LONG>(origin.x),
                              static_cast<LONG>(origin.y)};
  HMONITOR monitor = MonitorFromPoint(target_point, MONITOR_DEFAULTTONEAREST);
  UINT dpi = FlutterDesktopGetDpiForMonitor(monitor);
  double scale_factor = dpi / 96.0;

  HWND window = CreateWindow(
      window_class, title.c_str(), WS_OVERLAPPEDWINDOW,
      Scale(origin.x, scale_factor), Scale(origin.y, scale_factor),
      Scale(size.width, scale_factor), Scale(size.height, scale_factor),
      nullptr, nullptr, GetModuleHandle(nullptr), this);

  if (!window) {
    return false;
  }

  UpdateTheme(window);

  return OnCreate();
}

bool Win32Window::Show() {
  return ShowWindow(window_handle_, SW_SHOWNORMAL);
}

// static
LRESULT CALLBACK Win32Window::WndProc(HWND const window,
                                      UINT const message,
                                      WPARAM const wparam,
                                      LPARAM const lparam) noexcept {
  if (message == WM_NCCREATE) {
    auto window_struct = reinterpret_cast<CREATESTRUCT*>(lparam);
    SetWindowLongPtr(window, GWLP_USERDATA,
                     reinterpret_cast<LONG_PTR>(window_struct->lpCreateParams));

    auto that = static_cast<Win32Window*>(window_struct->lpCreateParams);
    EnableFullDpiSupportIfAvailable(window);
    that->window_handle_ = window;
  } else if (Win32Window* that = GetThisFromHandle(window)) {
    return that->MessageHandler(window, message, wparam, lparam);
  }

  return DefWindowProc(window, message, wparam, lparam);
}

LRESULT
Win32Window::MessageHandler(HWND hwnd,
                            UINT const message,
                            WPARAM const wparam,
                            LPARAM const lparam) noexcept {
  switch (message) {
    case WM_DESTROY:
      window_handle_ = nullptr;
      Destroy();
      if (quit_on_close_) {
        PostQuitMessage(0);
      }
      return 0;

    case WM_DPICHANGED: {
      auto newRectSize = reinterpret_cast<RECT*>(lparam);
      LONG newWidth = newRectSize->right - newRectSize->left;
      LONG newHeight = newRectSize->bottom - newRectSize->top;

      SetWindowPos(hwnd, nullptr, newRectSize->left, newRectSize->top, newWidth,
                   newHeight, SWP_NOZORDER | SWP_NOACTIVATE);

      return 0;
    }
    case WM_SIZE: {
      RECT rect = GetClientArea();
      if (child_content_ != nullptr) {
        // Size and position the child window.
        MoveWindow(child_content_, rect.left, rect.top, rect.right - rect.left,
                   rect.bottom - rect.top, TRUE);
      }
      return 0;
    }

    case WM_ACTIVATE:
      if (child_content_ != nullptr) {
        SetFocus(child_content_);
      }
      return 0;

    case WM_DWMCOLORIZATIONCOLORCHANGED:
      UpdateTheme(hwnd);
      return 0;
  }

  return DefWindowProc(window_handle_, message, wparam, lparam);
}

void Win32Window::Destroy() {
  OnDestroy();

  if (window_handle_) {
    DestroyWindow(window_handle_);
    window_handle_ = nullptr;
  }
  if (g_active_window_count == 0) {
    WindowClassRegistrar::GetInstance()->UnregisterWindowClass();
  }
}

Win32Window* Win32Window::GetThisFromHandle(HWND const window) noexcept {
  return reinterpret_cast<Win32Window*>(
      GetWindowLongPtr(window, GWLP_USERDATA));
}

void Win32Window::SetChildContent(HWND content) {
  child_content_ = content;
  SetParent(content, window_handle_);
  RECT frame = GetClientArea();

  MoveWindow(content, frame.left, frame.top, frame.right - frame.left,
             frame.bottom - frame.top, true);

  SetFocus(child_content_);
}

RECT Win32Window::GetClientArea() {
  RECT frame;
  GetClientRect(window_handle_, &frame);
  return frame;
}

HWND Win32Window::GetHandle() {
  return window_handle_;
}

void Win32Window::SetQuitOnClose(bool quit_on_close) {
  quit_on_close_ = quit_on_close;
}

bool Win32Window::OnCreate() {
  // No-op; provided for subclasses.
  return true;
}

void Win32Window::OnDestroy() {
  // No-op; provided for subclasses.
}

void Win32Window::UpdateTheme(HWND const window) {
  DWORD light_mode;
  DWORD light_mode_size = sizeof(light_mode);
  LSTATUS result = RegGetValue(HKEY_CURRENT_USER, kGetPreferredBrightnessRegKey,
                               kGetPreferredBrightnessRegValue,
                               RRF_RT_REG_DWORD, nullptr, &light_mode,
                               &light_mode_size);

  if (result == ERROR_SUCCESS) {
    BOOL enable_dark_mode = light_mode == 0;
    DwmSetWindowAttribute(window, DWMWA_USE_IMMERSIVE_DARK_MODE,
                          &enable_dark_mode, sizeof(enable_dark_mode));
  }
}
""",
                    children: [],
                  ),
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("base_template_general_framework_project"),
                    file_system_entity: File(
                        "production/base_template_general_framework_project_production_app/windows/runner/win32_window.h"),
                    state_data: {},
                    file_system_entity_type: FileSystemEntityType.file,
                    value: r"""#ifndef RUNNER_WIN32_WINDOW_H_
#define RUNNER_WIN32_WINDOW_H_

#include <windows.h>

#include <functional>
#include <memory>
#include <string>

// A class abstraction for a high DPI-aware Win32 Window. Intended to be
// inherited from by classes that wish to specialize with custom
// rendering and input handling
class Win32Window {
 public:
  struct Point {
    unsigned int x;
    unsigned int y;
    Point(unsigned int x, unsigned int y) : x(x), y(y) {}
  };

  struct Size {
    unsigned int width;
    unsigned int height;
    Size(unsigned int width, unsigned int height)
        : width(width), height(height) {}
  };

  Win32Window();
  virtual ~Win32Window();

  // Creates a win32 window with |title| that is positioned and sized using
  // |origin| and |size|. New windows are created on the default monitor. Window
  // sizes are specified to the OS in physical pixels, hence to ensure a
  // consistent size this function will scale the inputted width and height as
  // as appropriate for the default monitor. The window is invisible until
  // |Show| is called. Returns true if the window was created successfully.
  bool Create(const std::wstring& title, const Point& origin, const Size& size);

  // Show the current window. Returns true if the window was successfully shown.
  bool Show();

  // Release OS resources associated with window.
  void Destroy();

  // Inserts |content| into the window tree.
  void SetChildContent(HWND content);

  // Returns the backing Window handle to enable clients to set icon and other
  // window properties. Returns nullptr if the window has been destroyed.
  HWND GetHandle();

  // If true, closing this window will quit the application.
  void SetQuitOnClose(bool quit_on_close);

  // Return a RECT representing the bounds of the current client area.
  RECT GetClientArea();

 protected:
  // Processes and route salient window messages for mouse handling,
  // size change and DPI. Delegates handling of these to member overloads that
  // inheriting classes can handle.
  virtual LRESULT MessageHandler(HWND window,
                                 UINT const message,
                                 WPARAM const wparam,
                                 LPARAM const lparam) noexcept;

  // Called when CreateAndShow is called, allowing subclass window-related
  // setup. Subclasses should return false if setup fails.
  virtual bool OnCreate();

  // Called when Destroy is called.
  virtual void OnDestroy();

 private:
  friend class WindowClassRegistrar;

  // OS callback called by message pump. Handles the WM_NCCREATE message which
  // is passed when the non-client area is being created and enables automatic
  // non-client DPI scaling so that the non-client area automatically
  // responds to changes in DPI. All other messages are handled by
  // MessageHandler.
  static LRESULT CALLBACK WndProc(HWND const window,
                                  UINT const message,
                                  WPARAM const wparam,
                                  LPARAM const lparam) noexcept;

  // Retrieves a class instance pointer for |window|
  static Win32Window* GetThisFromHandle(HWND const window) noexcept;

  // Update the window frame's theme to match the system theme.
  static void UpdateTheme(HWND const window);

  bool quit_on_close_ = false;

  // window handle for top level window.
  HWND window_handle_ = nullptr;

  // window handle for hosted content.
  HWND child_content_ = nullptr;
};

#endif  // RUNNER_WIN32_WINDOW_H_
""",
                    children: [],
                  )
                ],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/windows/.gitignore"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""flutter/ephemeral/

# Visual Studio user-specific files.
*.suo
*.user
*.userosscache
*.sln.docstates

# Visual Studio build-related files.
x64/
x86/

# Visual Studio cache files
# files ending in .cache can be ignored
*.[Cc]ache
# but keep track of directories ending in .cache
!*.[Cc]ache/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
.dart_tool/
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_app/windows/CMakeLists.txt"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""# Project-level configuration.
cmake_minimum_required(VERSION 3.14)
project(base_template_general_framework_project_production_app LANGUAGES CXX)

# The name of the executable created for the application. Change this to change
# the on-disk name of your application.
set(BINARY_NAME "base_template_general_framework_project_production_app")

# Explicitly opt in to modern CMake behaviors to avoid warnings with recent
# versions of CMake.
cmake_policy(VERSION 3.14...3.25)

# Define build configuration option.
get_property(IS_MULTICONFIG GLOBAL PROPERTY GENERATOR_IS_MULTI_CONFIG)
if(IS_MULTICONFIG)
  set(CMAKE_CONFIGURATION_TYPES "Debug;Profile;Release"
    CACHE STRING "" FORCE)
else()
  if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    set(CMAKE_BUILD_TYPE "Debug" CACHE
      STRING "Flutter build mode" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
      "Debug" "Profile" "Release")
  endif()
endif()
# Define settings for the Profile build mode.
set(CMAKE_EXE_LINKER_FLAGS_PROFILE "${CMAKE_EXE_LINKER_FLAGS_RELEASE}")
set(CMAKE_SHARED_LINKER_FLAGS_PROFILE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE}")
set(CMAKE_C_FLAGS_PROFILE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_PROFILE "${CMAKE_CXX_FLAGS_RELEASE}")

# Use Unicode for all projects.
add_definitions(-DUNICODE -D_UNICODE)

# Compilation settings that should be applied to most targets.
#
# Be cautious about adding new options here, as plugins use this function by
# default. In most cases, you should add new options to specific targets instead
# of modifying this function.
function(APPLY_STANDARD_SETTINGS TARGET)
  target_compile_features(${TARGET} PUBLIC cxx_std_17)
  target_compile_options(${TARGET} PRIVATE /W4 /WX /wd"4100")
  target_compile_options(${TARGET} PRIVATE /EHsc)
  target_compile_definitions(${TARGET} PRIVATE "_HAS_EXCEPTIONS=0")
  target_compile_definitions(${TARGET} PRIVATE "$<$<CONFIG:Debug>:_DEBUG>")
endfunction()

# Flutter library and tool build rules.
set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIR}/flutter")
add_subdirectory(${FLUTTER_MANAGED_DIR})

# Application build; see runner/CMakeLists.txt.
add_subdirectory("runner")


# Generated plugin build rules, which manage building the plugins and adding
# them to the application.
include(flutter/generated_plugins.cmake)


# === Installation ===
# Support files are copied into place next to the executable, so that it can
# run in place. This is done instead of making a separate bundle (as on Linux)
# so that building and running from within Visual Studio will work.
set(BUILD_BUNDLE_DIR "$<TARGET_FILE_DIR:${BINARY_NAME}>")
# Make the "install" step default, as it's required to run.
set(CMAKE_VS_INCLUDE_INSTALL_TO_DEFAULT_BUILD 1)
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)
endif()

set(INSTALL_BUNDLE_DATA_DIR "${CMAKE_INSTALL_PREFIX}/data")
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}")

install(TARGETS ${BINARY_NAME} RUNTIME DESTINATION "${CMAKE_INSTALL_PREFIX}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_ICU_DATA_FILE}" DESTINATION "${INSTALL_BUNDLE_DATA_DIR}"
  COMPONENT Runtime)

install(FILES "${FLUTTER_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
  COMPONENT Runtime)

if(PLUGIN_BUNDLED_LIBRARIES)
  install(FILES "${PLUGIN_BUNDLED_LIBRARIES}"
    DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
endif()

# Copy the native assets provided by the build.dart from all packages.
set(NATIVE_ASSETS_DIR "${PROJECT_BUILD_DIR}native_assets/windows/")
install(DIRECTORY "${NATIVE_ASSETS_DIR}"
   DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
   COMPONENT Runtime)

# Fully re-copy the assets directory on each build to avoid having stale files
# from a previous install.
set(FLUTTER_ASSET_DIR_NAME "flutter_assets")
install(CODE "
  file(REMOVE_RECURSE \"${INSTALL_BUNDLE_DATA_DIR}/${FLUTTER_ASSET_DIR_NAME}\")
  " COMPONENT Runtime)
install(DIRECTORY "${PROJECT_BUILD_DIR}/${FLUTTER_ASSET_DIR_NAME}"
  DESTINATION "${INSTALL_BUNDLE_DATA_DIR}" COMPONENT Runtime)

# Install the AOT library on non-Debug builds only.
install(FILES "${AOT_LIBRARY}" DESTINATION "${INSTALL_BUNDLE_DATA_DIR}"
  CONFIGURATIONS Profile;Release
  COMPONENT Runtime)
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.buildlog/
.history
.svn/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.pub-cache/
.pub/
/build/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug
/android/app/profile
/android/app/release
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/.metadata"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "b0850beeb25f6d5b10426284f506557f66181b36"
  channel: "stable"

project_type: app

# Tracks metadata for the flutter migrate command
migration:
  platforms:
    - platform: root
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: android
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: ios
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: linux
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: macos
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: web
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36
    - platform: windows
      create_revision: b0850beeb25f6d5b10426284f506557f66181b36
      base_revision: b0850beeb25f6d5b10426284f506557f66181b36

  # User provided section

  # List of Local paths (relative to this file) that should be
  # ignored by the migrate tool.
  #
  # Files that are not part of the templates will be ignored by default.
  unmanaged_files:
    - 'lib/main.dart'
    - 'ios/Runner.xcodeproj/project.pbxproj'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/base_template_general_framework_project_production_app.iml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""<?xml version="1.0" encoding="UTF-8"?>
<module type="JAVA_MODULE" version="4">
  <component name="NewModuleRootManager" inherit-compiler-output="true">
    <exclude-output />
    <content url="file://$MODULE_DIR$">
      <sourceFolder url="file://$MODULE_DIR$/lib" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/test" isTestSource="true" />
      <excludeFolder url="file://$MODULE_DIR$/.dart_tool" />
      <excludeFolder url="file://$MODULE_DIR$/.idea" />
      <excludeFolder url="file://$MODULE_DIR$/build" />
    </content>
    <orderEntry type="sourceFolder" forTests="false" />
    <orderEntry type="library" name="Dart SDK" level="project" />
    <orderEntry type="library" name="Flutter Plugins" level="project" />
    <orderEntry type="library" name="Dart Packages" level="project" />
  </component>
</module>
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_production_app'
description: 'A new Flutter project.'
publish_to: 'none'
version: '1.0.0+1'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  flutter: 
    sdk: 'flutter'
  cupertino_icons: '^1.0.6'
dev_dependencies: 
  flutter_test: 
    sdk: 'flutter'
  flutter_lints: '^3.0.0'
flutter: 
  uses-material-design: true
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_app/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# base_template_general_framework_project_production_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("base_template_general_framework_project"),
        file_system_entity: Directory(
            "production/base_template_general_framework_project_production_media_server"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_media_server/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_media_server/bin/base_template_general_framework_project_production_media_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_production_media_server/base_template_general_framework_project_production_media_server.dart'
    as base_template_general_framework_project_production_media_server;

void main(List<String> arguments) {
  print(
      'Hello world: ${base_template_general_framework_project_production_media_server.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_media_server/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_media_server/lib/base_template_general_framework_project_production_media_server.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
int calculate() {
  return 6 * 7;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: Directory(
                "production/base_template_general_framework_project_production_media_server/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("base_template_general_framework_project"),
                file_system_entity: File(
                    "production/base_template_general_framework_project_production_media_server/test/base_template_general_framework_project_production_media_server_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""/* <!-- START LICENSE -->


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
import 'package:base_template_general_framework_project_production_media_server/base_template_general_framework_project_production_media_server.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_media_server/.gitignore"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/
*.exe
*.deb
*.sqlite-*
*.sqlite
docs/canvaskit
*/canvaskit
build/
ephemeral/
/build/
generate_glx_*
node_modules/
flutter/ephemeral
android/.gradle
android/flutter/ephemeral
linux/flutter/ephemeral
macos/Flutter/ephemeral
windows/ephemeral
tmp/
temp/""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_media_server/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""# This file configures the static analysis results for your project (errors,
# warnings, and lints).
#
# This enables the 'recommended' set of lints from `package:lints`.
# This set helps identify many issues that may lead to problems when running
# or consuming Dart code, and enforces writing Dart using a single, idiomatic
# style and format.
#
# If you want a smaller set of lints you can change this to specify
# 'package:lints/core.yaml'. These are just the most critical lints
# (the recommended set includes the core lints).
# The core lints are also what is used by pub.dev for scoring packages.

include: package:lints/recommended.yaml

# Uncomment the following section to specify additional rules.

# linter:
#   rules:
#     - camel_case_types

# analyzer:
#   exclude:
#     - path/to/excluded/files/**

# For more information about the core and recommended set of lints, see
# https://dart.dev/go/core-lints

# For additional information about configuring this file, see
# https://dart.dev/guides/language/analysis-options
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_media_server/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_media_server/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""name: 'base_template_general_framework_project_production_media_server'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: null
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("base_template_general_framework_project"),
            file_system_entity: File(
                "production/base_template_general_framework_project_production_media_server/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value:
                r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("base_template_general_framework_project"),
    file_system_entity: File("README.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: "",
    children: [],
  )
];
