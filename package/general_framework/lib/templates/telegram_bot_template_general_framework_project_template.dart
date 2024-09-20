// ignore_for_file: non_constant_identifier_names

// import 'dart:io';
import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

final List<ScriptGenerator>
    telegram_bot_template_general_framework_project_script_generators = [
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: Directory(".github"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity: Directory(".github/workflows"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("telegram_bot_template_general_framework_project"),
            file_system_entity: File(
                ".github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
# Generate Automatic By GLOBAL CORPORATION / GENERAL CORPORATION
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
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("telegram_bot_template_general_framework_project"),
            file_system_entity: File(
                ".github/workflows/general_workflow_release_app_development.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: app_release_type_development
on: 
  # push:
  # # [push, workflow_dispatch]
  # schedule: [{cron: "0 0 * * 0"}] 
  workflow_dispatch:
permissions:
  contents: write
jobs:
  build:
    name: app_release_type_development
    runs-on: ubuntu-latest
    steps: 
      - name: Checkout repository
        uses: actions/checkout@v3
        with:
          submodules: true
          
      - name: Print
        run: |
          ls
      - name: Set up Java
        uses: actions/setup-java@v3
        with:
          java-version: "17"
          distribution: "adopt"
      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: "3.22.3"
          channel: "stable"
      - name: check dart version
        run: dart --version
      - name: Install Dependencies
        run: |
          sudo apt update -y
          sudo apt-get install -y make git zlib1g-dev libssl-dev gperf cmake clang libc++-dev libc++abi-dev php-cli cmake g++
          sudo apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
          # mpv
          sudo apt-get install -y libmpv-dev mpv
        shell: bash
      - name: Mkdir result
        run: mkdir result
      - name: Set Flutter enable devices
        continue-on-error: true
        run: |
          flutter config --enable-web
          flutter config --enable-linux-desktop
          flutter config --enable-macos-desktop
          flutter config --enable-windows-desktop
          flutter config --enable-android
          flutter config --enable-ios
      
      # General Bot App
      - name: Pub General Machine System Services
        run: |
         cd general_machine_system_services/apps/global_app
         flutter clean
         flutter pub get
         
      - name: Publish General Machine System Services Linux
        env:
          packagex_github_token: ${{ secrets.TOKEN_GITHUB }}
        run: |
         cd general_machine_system_services/apps/global_app
         dart run packagex publish
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("telegram_bot_template_general_framework_project"),
            file_system_entity: File(
                ".github/workflows/general_workflow_release_app_production.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: app_release_type_production
on: 
  # push:
  # # [push, workflow_dispatch]
  # schedule: [{cron: "0 0 * * 0"}] 
  workflow_dispatch:
permissions:
  contents: write
jobs:
  build:
    name: app_release_type_production
    runs-on: ubuntu-latest
    steps: 
      - name: Checkout repository
        uses: actions/checkout@v3
        with:
          submodules: true
          
      - name: Print
        run: |
          ls
      - name: Set up Java
        uses: actions/setup-java@v3
        with:
          java-version: "17"
          distribution: "adopt"
      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: "3.22.3"
          channel: "stable"
      - name: check dart version
        run: dart --version
      - name: Install Dependencies
        run: |
          sudo apt update -y
          sudo apt-get install -y make git zlib1g-dev libssl-dev gperf cmake clang libc++-dev libc++abi-dev php-cli cmake g++
          sudo apt-get install -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev
          # mpv
          sudo apt-get install -y libmpv-dev mpv
        shell: bash
      - name: Mkdir result
        run: mkdir result
      - name: Set Flutter enable devices
        continue-on-error: true
        run: |
          flutter config --enable-web
          flutter config --enable-linux-desktop
          flutter config --enable-macos-desktop
          flutter config --enable-windows-desktop
          flutter config --enable-android
          flutter config --enable-ios
      
      # General Bot App
      - name: Pub General Machine System Services
        run: |
         cd general_machine_system_services/apps/global_app
         flutter clean
         flutter pub get
         
      - name: Publish General Machine System Services Linux
        env:
          packagex_github_token: ${{ secrets.TOKEN_GITHUB }}
        run: |
         cd general_machine_system_services/apps/global_app
         dart run packagex publish
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity: File(".github/FUNDING.yaml"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
github: 
  - 'azkadev'
  - 'generalfoss'

""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: Directory("example"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity: File(
            "example/telegram_bot_template_general_framework_project_example.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:telegram_bot_template_general_framework_project/telegram_bot_template_general_framework_project.dart';

void main() {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');
}

""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: Directory("lib"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity: Directory("lib/src"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("telegram_bot_template_general_framework_project"),
            file_system_entity: File(
                "lib/src/telegram_bot_template_general_framework_project_base.dart"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity:
            File("lib/telegram_bot_template_general_framework_project.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/telegram_bot_template_general_framework_project_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: Directory("test"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base:
            Directory("telegram_bot_template_general_framework_project"),
        file_system_entity: File(
            "test/telegram_bot_template_general_framework_project_test.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:telegram_bot_template_general_framework_project/telegram_bot_template_general_framework_project.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
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
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: File(".gitignore"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
# https://dart.dev/guides/libraries/private-files
# Created by `dart pub`
.dart_tool/

# Avoid committing pubspec.lock for library packages; see
# https://dart.dev/guides/libraries/private-files#pubspeclock.
pubspec.lock
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
temp/
""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: File("analysis_options.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
# This file configures the static analysis results for your project (errors,
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
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: File("CHANGELOG.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
## 1.0.0

- Initial version.

""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
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
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: File("pubspec.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
name: 'telegram_bot_template_general_framework_project'
description: 'A starting point for Dart libraries or applications.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: {}
dev_dependencies: 
  lints: '^4.0.0'
  test: 'any'
dependency_overrides: 
  pointycastle: '3.8.0'
funding: 
  - 'https://github.com/sponsors/azkadev'
  - 'https://github.com/sponsors/generalfoss'
homepage: 'https://youtube.com/@azkadev'
repository: 'https://github.com/azkadev/general_framework'
documentation: 'https://youtube.com/@azkadev'
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'

""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base:
        Directory("telegram_bot_template_general_framework_project"),
    file_system_entity: File("README.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
<!-- 
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
];
