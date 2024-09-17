// ignore_for_file: non_constant_identifier_names

// import 'dart:io';
import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

final List<ScriptGenerator> app_template_general_framework_project_script_generators = [
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: Directory(".github"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory(".github/workflows"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File(".github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# Generate Automatic By GLOBAL CORPORATION / GENERAL CORPORATION
# 
# DEVELOPER:
# 
# https://github.com/azkadev

# Simple workflow for deploying static content to GitHub Pages
name: Deploy static content to Pages

on:
  # Runs on pushes targeting the default branch
  push:
    branches: ["main"]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write

# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: true

jobs:
  # Single deploy job since we're just deploying
  deploy:
    environment:
      name: github-pages
      url: ${{steps.deployment.outputs.page_url}}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Setup Pages
        uses: actions/configure-pages@v5
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          # Upload entire repository
          path: 'docs'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: File(".github/FUNDING.yaml"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""github: 
  - 'azkadev'
""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: Directory("bin"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: File("bin/app_template_general_framework_project.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""import 'package:app_template_general_framework_project/app_template_general_framework_project.dart'
    as app_template_general_framework_project;

void main(List<String> arguments) {
  print('Hello world: ${app_template_general_framework_project.calculate()}!');
}
""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: Directory("lib"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: File("lib/app_template_general_framework_project.dart"),
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
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: Directory("library"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_client"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client/bin/app_template_general_framework_project_client.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client/app_template_general_framework_project_client.dart'
    as app_template_general_framework_project_client;

void main(List<String> arguments) {
  print(
      'Hello world: ${app_template_general_framework_project_client.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client/lib/app_template_general_framework_project_client.dart"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client/test/app_template_general_framework_project_client_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client/app_template_general_framework_project_client.dart';
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client/.gitignore"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file configures the static analysis results for your project (errors,
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_client
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_client_database"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_database/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_database/bin/app_template_general_framework_project_client_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client_database/app_template_general_framework_project_client_database.dart'
    as app_template_general_framework_project_client_database;

void main(List<String> arguments) {
  print(
      'Hello world: ${app_template_general_framework_project_client_database.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_database/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_database/lib/app_template_general_framework_project_client_database.dart"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_database/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_database/test/app_template_general_framework_project_client_database_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client_database/app_template_general_framework_project_client_database.dart';
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_database/.gitignore"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_database/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file configures the static analysis results for your project (errors,
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_database/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_database/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_client_database
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_database/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_client_isar_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_isar_scheme/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/bin/app_template_general_framework_project_client_isar_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client_isar_scheme/app_template_general_framework_project_client_isar_scheme.dart'
    as app_template_general_framework_project_client_isar_scheme;

void main(List<String> arguments) {
  print(
      'Hello world: ${app_template_general_framework_project_client_isar_scheme.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_isar_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/lib/app_template_general_framework_project_client_isar_scheme.dart"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_client_isar_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/test/app_template_general_framework_project_client_isar_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_client_isar_scheme/app_template_general_framework_project_client_isar_scheme.dart';
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/.gitignore"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file configures the static analysis results for your project (errors,
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_client_isar_scheme
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_client_isar_scheme/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_flutter"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_flutter/.idea"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: Directory("library/app_template_general_framework_project_flutter/.idea/libraries"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base: Directory("app_template_general_framework_project"),
                    file_system_entity: File("library/app_template_general_framework_project_flutter/.idea/libraries/Dart_SDK.xml"),
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
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_flutter/.idea/modules.xml"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""<?xml version="1.0" encoding="UTF-8"?>
<project version="4">
  <component name="ProjectModuleManager">
    <modules>
      <module fileurl="file://$PROJECT_DIR$/app_template_general_framework_project_flutter.iml" filepath="$PROJECT_DIR$/app_template_general_framework_project_flutter.iml" />
    </modules>
  </component>
</project>
""",
                children: [],
              ),
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_flutter/.idea/workspace.xml"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_flutter/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_flutter/lib/app_template_general_framework_project_flutter.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""library app_template_general_framework_project_flutter;

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_flutter/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_flutter/test/app_template_general_framework_project_flutter_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:flutter_test/flutter_test.dart';

import 'package:app_template_general_framework_project_flutter/app_template_general_framework_project_flutter.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/.gitignore"),
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
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/.metadata"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/analysis_options.yaml"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/app_template_general_framework_project_flutter.iml"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 0.0.1

* TODO: Describe initial release.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""TODO: Add your license here.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_flutter
description: "A new Flutter package project."
version: 0.0.1
homepage:

environment:
  sdk: '>=3.4.4 <4.0.0'
  flutter: ">=1.17.0"

dependencies:
  flutter:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # To add assets to your package, add an assets section, like this:
  # assets:
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg
  #
  # For details regarding assets in packages, see
  # https://flutter.dev/assets-and-images/#from-packages
  #
  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/assets-and-images/#resolution-aware

  # To add custom fonts to your package, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts in packages, see
  # https://flutter.dev/custom-fonts/#from-packages
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_flutter/README.md"),
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
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_language"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_language/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_language/bin/app_template_general_framework_project_language.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_language/app_template_general_framework_project_language.dart'
    as app_template_general_framework_project_language;

void main(List<String> arguments) {
  print(
      'Hello world: ${app_template_general_framework_project_language.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_language/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_language/lib/app_template_general_framework_project_language.dart"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_language/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_language/test/app_template_general_framework_project_language_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_language/app_template_general_framework_project_language.dart';
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_language/.gitignore"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_language/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file configures the static analysis results for your project (errors,
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_language/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_language/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_language
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_language/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: Directory("library/app_template_general_framework_project_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_scheme/bin"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_scheme/bin/app_template_general_framework_project_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_scheme/app_template_general_framework_project_scheme.dart'
    as app_template_general_framework_project_scheme;

void main(List<String> arguments) {
  print(
      'Hello world: ${app_template_general_framework_project_scheme.calculate()}!');
}
""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_scheme/lib/app_template_general_framework_project_scheme.dart"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: Directory("library/app_template_general_framework_project_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base: Directory("app_template_general_framework_project"),
                file_system_entity: File("library/app_template_general_framework_project_scheme/test/app_template_general_framework_project_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""import 'package:app_template_general_framework_project_scheme/app_template_general_framework_project_scheme.dart';
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_scheme/.gitignore"),
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_scheme/analysis_options.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""# This file configures the static analysis results for your project (errors,
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
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_scheme/CHANGELOG.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""## 1.0.0

- Initial version.
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""name: app_template_general_framework_project_scheme
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.4.4

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("app_template_general_framework_project"),
            file_system_entity: File("library/app_template_general_framework_project_scheme/README.md"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""A sample command-line application with an entrypoint in `bin/`, library code
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
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: Directory("test"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("app_template_general_framework_project"),
        file_system_entity: File("test/app_template_general_framework_project_test.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""import 'package:app_template_general_framework_project/app_template_general_framework_project.dart';
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
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File(".gitignore"),
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
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File("analysis_options.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""# This file configures the static analysis results for your project (errors,
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
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File("CHANGELOG.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""## 1.0.0

- Initial version.
""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File("LICENSE"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
Copyright (c) 2024 GLOBAL CORPORATION.

""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File("pubspec.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""name: 'app_template_general_framework_project'
description: 'A sample command-line application.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: {}
dev_dependencies: 
  lints: '^3.0.0'
  test: '^1.24.0'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
homepage: 'https://youtube.com/@azkadev'
repository: 'https://github.com/azkadev/general_framework'
issue_tracker: 'https://t.me'
documentation: 'https://youtube.com/@azkadev'
""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("app_template_general_framework_project"),
    file_system_entity: File("README.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.
""",
    children: [],
  )
];
