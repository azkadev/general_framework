// ignore_for_file: non_constant_identifier_names

// import 'dart:io';
import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

final List<ScriptGenerator>
    userbot_telegram_general_framework_project_script_generators = [
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: Directory(".github"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(".github/workflows"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
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
                Directory("userbot_telegram_general_framework_project"),
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
                Directory("userbot_telegram_general_framework_project"),
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
        directory_base: Directory("userbot_telegram_general_framework_project"),
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: Directory("bin"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity:
            File("bin/userbot_telegram_general_framework_project.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:userbot_telegram_general_framework_project/userbot_telegram_general_framework_project.dart'
    as userbot_telegram_general_framework_project;

void main(List<String> arguments) {
  print(
      'Hello world: ${userbot_telegram_general_framework_project.calculate()}!');
}

""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: Directory("lib"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity:
            File("lib/userbot_telegram_general_framework_project.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: Directory("library"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_client"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client/example/userbot_telegram_general_framework_project_client_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client/userbot_telegram_general_framework_project_client.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client/lib/src/userbot_telegram_general_framework_project_client_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client/lib/userbot_telegram_general_framework_project_client.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_client_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client/test/userbot_telegram_general_framework_project_client_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client/userbot_telegram_general_framework_project_client.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_client'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_client_database"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_database/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client_database/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_database/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_database/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_database/example/userbot_telegram_general_framework_project_client_database_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client_database/userbot_telegram_general_framework_project_client_database.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_database/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client_database/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_database/lib/src/userbot_telegram_general_framework_project_client_database_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_database/lib/userbot_telegram_general_framework_project_client_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_client_database_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_database/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_database/test/userbot_telegram_general_framework_project_client_database_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client_database/userbot_telegram_general_framework_project_client_database.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_client_database'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_database/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_client_isar_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_isar_scheme/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_isar_scheme/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_isar_scheme/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/example/userbot_telegram_general_framework_project_client_isar_scheme_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client_isar_scheme/userbot_telegram_general_framework_project_client_isar_scheme.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_client_isar_scheme/lib/src/userbot_telegram_general_framework_project_client_isar_scheme_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/lib/userbot_telegram_general_framework_project_client_isar_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_client_isar_scheme_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_client_isar_scheme/test/userbot_telegram_general_framework_project_client_isar_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_client_isar_scheme/userbot_telegram_general_framework_project_client_isar_scheme.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_client_isar_scheme'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_client_isar_scheme/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_dart/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_dart/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_dart/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_dart/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_dart/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_dart/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_dart/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_dart/example/userbot_telegram_general_framework_project_dart_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_dart/userbot_telegram_general_framework_project_dart.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_dart/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_dart/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_dart/lib/src/userbot_telegram_general_framework_project_dart_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_dart/lib/userbot_telegram_general_framework_project_dart.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_dart_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_dart/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_dart/test/userbot_telegram_general_framework_project_dart_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_dart/userbot_telegram_general_framework_project_dart.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/.flutter-plugins"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
# This is a generated file; do not edit or check into version control.
battery_plus=/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/
camera=/home/galaxeus/.pub-cache/hosted/pub.dev/camera-0.11.0+2/
camera_android_camerax=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/
camera_avfoundation=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+3/
camera_web=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.5/
camera_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/
file_picker=/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/
flutter_background=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/
flutter_plugin_android_lifecycle=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.22/
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
permission_handler=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler-11.3.1/
permission_handler_android=/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_android-12.0.12/
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
speech_to_text=/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/
volume_controller=/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/
wakelock_plus=/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/.flutter-plugins-dependencies"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_avfoundation","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+3/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_ios-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"permission_handler_apple","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.5/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.8/","native_build":true,"dependencies":[]},{"name":"screen_brightness_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_ios-0.1.0/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"android":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_android_camerax","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/","native_build":true,"dependencies":[]},{"name":"flutter_plugin_android_lifecycle","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.22/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_android-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_android-1.0.43/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"permission_handler_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_android-12.0.12/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.8/","native_build":true,"dependencies":[]},{"name":"screen_brightness_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_android-0.1.0+2/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"macos":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_darwin-0.1.2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"screen_brightness_macos","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_macos-0.1.0+1/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"linux":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":false,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"gamepads_linux","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_linux-0.1.1+1/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"windows":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","native_build":true,"dependencies":[]},{"name":"camera_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_windows-0.1.1+1/","native_build":true,"dependencies":[]},{"name":"local_auth_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_windows-1.0.11/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"permission_handler_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_windows-0.2.1/","native_build":true,"dependencies":[]},{"name":"screen_brightness_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_windows-0.1.3/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"web":[{"name":"battery_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/battery_plus-6.0.3/","dependencies":[]},{"name":"camera_web","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.5/","dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.2/","dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","dependencies":[]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","dependencies":[]},{"name":"permission_handler_html","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_html-0.1.3+2/","dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","dependencies":["package_info_plus"]}]},"dependencyGraph":[{"name":"battery_plus","dependencies":[]},{"name":"camera","dependencies":["camera_android_camerax","camera_avfoundation","camera_web","flutter_plugin_android_lifecycle"]},{"name":"camera_android_camerax","dependencies":[]},{"name":"camera_avfoundation","dependencies":[]},{"name":"camera_web","dependencies":[]},{"name":"camera_windows","dependencies":[]},{"name":"file_picker","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"gamepads","dependencies":["gamepads_android","gamepads_darwin","gamepads_ios","gamepads_linux","gamepads_windows"]},{"name":"gamepads_android","dependencies":[]},{"name":"gamepads_darwin","dependencies":[]},{"name":"gamepads_ios","dependencies":[]},{"name":"gamepads_linux","dependencies":[]},{"name":"gamepads_windows","dependencies":[]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"media_kit_video","dependencies":["wakelock_plus","screen_brightness","volume_controller"]},{"name":"package_info_plus","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"safe_device","dependencies":[]},{"name":"screen_brightness","dependencies":["screen_brightness_android","screen_brightness_ios","screen_brightness_macos","screen_brightness_windows"]},{"name":"screen_brightness_android","dependencies":[]},{"name":"screen_brightness_ios","dependencies":[]},{"name":"screen_brightness_macos","dependencies":[]},{"name":"screen_brightness_windows","dependencies":[]},{"name":"sim_card_info","dependencies":[]},{"name":"speech_to_text","dependencies":[]},{"name":"volume_controller","dependencies":[]},{"name":"wakelock_plus","dependencies":["package_info_plus"]}],"date_created":"2024-10-02 12:52:37.001586","version":"3.24.3","swift_package_manager_enabled":false}
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_dart'
description: 'A starting point for Dart libraries or applications.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  path: '^1.9.0'
  general_lib: '^0.0.46'
  general: '^0.0.30'
  server_universe: '^0.0.22'
  mason_logger: '^0.3.1'
  telegram_client: '^0.8.25'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_dart/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_language"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_language/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_language/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_language/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_language/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_language/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_language/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_language/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_language/example/userbot_telegram_general_framework_project_language_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_language/userbot_telegram_general_framework_project_language.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_language/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_language/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_language/lib/src/userbot_telegram_general_framework_project_language_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_language/lib/userbot_telegram_general_framework_project_language.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_language_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_language/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_language/test/userbot_telegram_general_framework_project_language_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_language/userbot_telegram_general_framework_project_language.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_language'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_language/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_scheme/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_scheme/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_scheme/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_scheme/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_scheme/example/userbot_telegram_general_framework_project_scheme_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_scheme/userbot_telegram_general_framework_project_scheme.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_scheme/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_scheme/lib/src/userbot_telegram_general_framework_project_scheme_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_scheme/lib/userbot_telegram_general_framework_project_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_scheme_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_scheme/test/userbot_telegram_general_framework_project_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_scheme/userbot_telegram_general_framework_project_scheme.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_scheme'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_scheme/README.md"),
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
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/userbot_telegram_general_framework_project_secret"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_secret/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_secret/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_secret/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_secret/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_secret/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_secret/.github/FUNDING.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_secret/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_secret/example/userbot_telegram_general_framework_project_secret_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_secret/userbot_telegram_general_framework_project_secret.dart';

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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_secret/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/userbot_telegram_general_framework_project_secret/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("userbot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/userbot_telegram_general_framework_project_secret/lib/src/userbot_telegram_general_framework_project_secret_base.dart"),
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
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_secret/lib/userbot_telegram_general_framework_project_secret.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/userbot_telegram_general_framework_project_secret_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/userbot_telegram_general_framework_project_secret/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("userbot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/userbot_telegram_general_framework_project_secret/test/userbot_telegram_general_framework_project_secret_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:userbot_telegram_general_framework_project_secret/userbot_telegram_general_framework_project_secret.dart';
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/.gitignore"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/analysis_options.yaml"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/CHANGELOG.md"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/LICENSE"),
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
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'userbot_telegram_general_framework_project_secret'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base:
                Directory("userbot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/userbot_telegram_general_framework_project_secret/README.md"),
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
        ],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: Directory("test"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("userbot_telegram_general_framework_project"),
        file_system_entity:
            File("test/userbot_telegram_general_framework_project_test.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:userbot_telegram_general_framework_project/userbot_telegram_general_framework_project.dart';
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: File(".gitignore"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
# https://dart.dev/guides/libraries/private-files
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
temp/
""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("userbot_telegram_general_framework_project"),
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
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
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: File("pubspec.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
name: 'userbot_telegram_general_framework_project'
description: 'A sample command-line application.'
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
issue_tracker: 'https://t.me/DEVELOPER_GLOBAL_PUBLIC'
documentation: 'https://youtube.com/@azkadev'

""",
    children: [],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("userbot_telegram_general_framework_project"),
    file_system_entity: File("README.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

""",
    children: [],
  )
];
