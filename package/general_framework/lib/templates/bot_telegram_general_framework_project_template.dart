// ignore_for_file: non_constant_identifier_names

// import 'dart:io';
import 'package:general_lib/script_generate/script_generate.dart';
import 'package:universal_io/io.dart';

final List<ScriptGenerator>
    bot_telegram_general_framework_project_script_generators = [
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: Directory(".github"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity: Directory(".github/workflows"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
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
        directory_base: Directory("bot_telegram_general_framework_project"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: Directory("bin"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            File("bin/bot_telegram_general_framework_project.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:bot_telegram_general_framework_project/bot_telegram_general_framework_project.dart'
    as bot_telegram_general_framework_project;

void main(List<String> arguments) {
  print('Hello world: ${bot_telegram_general_framework_project.calculate()}!');
}

""",
        children: [],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: Directory("lib"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            File("lib/bot_telegram_general_framework_project.dart"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: Directory("library"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            Directory("library/bot_telegram_general_framework_project_client"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_client/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client/example/bot_telegram_general_framework_project_client_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_client/bot_telegram_general_framework_project_client.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_client/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client/lib/src/bot_telegram_general_framework_project_client_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client/lib/bot_telegram_general_framework_project_client.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_client_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client/test/bot_telegram_general_framework_project_client_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_client/bot_telegram_general_framework_project_client.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_client'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/bot_telegram_general_framework_project_client_database"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client_database/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_client_database/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client_database/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client_database/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client_database/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client_database/example/bot_telegram_general_framework_project_client_database_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_client_database/bot_telegram_general_framework_project_client_database.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client_database/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_client_database/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_client_database/lib/src/bot_telegram_general_framework_project_client_database_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client_database/lib/bot_telegram_general_framework_project_client_database.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_client_database_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_client_database/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_client_database/test/bot_telegram_general_framework_project_client_database_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_client_database/bot_telegram_general_framework_project_client_database.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_client_database'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_client_database/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            Directory("library/bot_telegram_general_framework_project_dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_dart/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_dart/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_dart/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_dart/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_dart/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_dart/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_dart/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_dart/example/bot_telegram_general_framework_project_dart_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_dart/bot_telegram_general_framework_project_dart.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_dart/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_dart/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_dart/lib/src/bot_telegram_general_framework_project_dart_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_dart/lib/bot_telegram_general_framework_project_dart.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_dart_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_dart/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_dart/test/bot_telegram_general_framework_project_dart_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_dart/bot_telegram_general_framework_project_dart.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/.flutter-plugins"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
# This is a generated file; do not edit or check into version control.
camera=/home/galaxeus/.pub-cache/hosted/pub.dev/camera-0.11.0+2/
camera_android_camerax=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/
camera_avfoundation=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+3/
camera_web=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.5/
camera_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/
file_picker=/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/
flutter_background=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/
flutter_plugin_android_lifecycle=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.22/
flutter_tts=/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/
gamepads=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads-0.1.4/
gamepads_android=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_android-0.1.2+2/
gamepads_darwin=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_darwin-0.1.2+2/
gamepads_ios=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_ios-0.1.2+2/
gamepads_linux=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_linux-0.1.1+3/
gamepads_windows=/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_windows-0.1.1+3/
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
safe_device=/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.9/
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/.flutter-plugins-dependencies"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"camera_avfoundation","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_avfoundation-0.9.17+3/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_ios-0.1.2+2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"permission_handler_apple","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_apple-9.4.5/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.9/","native_build":true,"dependencies":[]},{"name":"screen_brightness_ios","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_ios-0.1.0/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"android":[{"name":"camera_android_camerax","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_android_camerax-0.6.7+2/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_background-1.3.0+1/","native_build":true,"dependencies":[]},{"name":"flutter_plugin_android_lifecycle","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_plugin_android_lifecycle-2.0.22/","native_build":true,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_android-0.1.2+2/","native_build":true,"dependencies":[]},{"name":"local_auth_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_android-1.0.43/","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus","volume_controller"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"permission_handler_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_android-12.0.12/","native_build":true,"dependencies":[]},{"name":"safe_device","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/safe_device-1.1.9/","native_build":true,"dependencies":[]},{"name":"screen_brightness_android","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_android-0.1.0+2/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","native_build":true,"dependencies":[]},{"name":"volume_controller","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/volume_controller-2.0.8/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"macos":[{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_darwin-0.1.2+2/","native_build":true,"dependencies":[]},{"name":"local_auth_darwin","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_darwin-1.4.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":true,"dependencies":[]},{"name":"screen_brightness_macos","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_macos-0.1.0+1/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","shared_darwin_source":true,"native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":true,"dependencies":["package_info_plus"]}],"linux":[{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","native_build":false,"dependencies":[]},{"name":"gamepads_linux","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_linux-0.1.1+3/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"windows":[{"name":"camera_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_windows-0.2.5/","native_build":true,"dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","native_build":false,"dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","native_build":true,"dependencies":[]},{"name":"gamepads_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/gamepads_windows-0.1.1+3/","native_build":true,"dependencies":[]},{"name":"local_auth_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/local_auth_windows-1.0.11/","native_build":true,"dependencies":[]},{"name":"media_kit_video","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/media_kit_video-1.2.5/","native_build":true,"dependencies":["wakelock_plus"]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","native_build":false,"dependencies":[]},{"name":"permission_handler_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_windows-0.2.1/","native_build":true,"dependencies":[]},{"name":"screen_brightness_windows","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/screen_brightness_windows-0.1.3/","native_build":true,"dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","native_build":true,"dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","native_build":false,"dependencies":["package_info_plus"]}],"web":[{"name":"camera_web","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/camera_web-0.3.5/","dependencies":[]},{"name":"file_picker","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/file_picker-8.1.3/","dependencies":[]},{"name":"flutter_tts","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/flutter_tts-4.0.2/","dependencies":[]},{"name":"package_info_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/package_info_plus-8.0.2/","dependencies":[]},{"name":"permission_handler_html","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/permission_handler_html-0.1.3+2/","dependencies":[]},{"name":"sim_card_info","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/sim_card_info-1.0.2/","dependencies":[]},{"name":"speech_to_text","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/speech_to_text-7.0.0/","dependencies":[]},{"name":"wakelock_plus","path":"/home/galaxeus/.pub-cache/hosted/pub.dev/wakelock_plus-1.2.8/","dependencies":["package_info_plus"]}]},"dependencyGraph":[{"name":"camera","dependencies":["camera_android_camerax","camera_avfoundation","camera_web","flutter_plugin_android_lifecycle"]},{"name":"camera_android_camerax","dependencies":[]},{"name":"camera_avfoundation","dependencies":[]},{"name":"camera_web","dependencies":[]},{"name":"camera_windows","dependencies":[]},{"name":"file_picker","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"flutter_background","dependencies":[]},{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"gamepads","dependencies":["gamepads_android","gamepads_darwin","gamepads_ios","gamepads_linux","gamepads_windows"]},{"name":"gamepads_android","dependencies":[]},{"name":"gamepads_darwin","dependencies":[]},{"name":"gamepads_ios","dependencies":[]},{"name":"gamepads_linux","dependencies":[]},{"name":"gamepads_windows","dependencies":[]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"media_kit_video","dependencies":["wakelock_plus","screen_brightness","volume_controller"]},{"name":"package_info_plus","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"safe_device","dependencies":[]},{"name":"screen_brightness","dependencies":["screen_brightness_android","screen_brightness_ios","screen_brightness_macos","screen_brightness_windows"]},{"name":"screen_brightness_android","dependencies":[]},{"name":"screen_brightness_ios","dependencies":[]},{"name":"screen_brightness_macos","dependencies":[]},{"name":"screen_brightness_windows","dependencies":[]},{"name":"sim_card_info","dependencies":[]},{"name":"speech_to_text","dependencies":[]},{"name":"volume_controller","dependencies":[]},{"name":"wakelock_plus","dependencies":["package_info_plus"]}],"date_created":"2024-10-31 14:37:55.278551","version":"3.24.3","swift_package_manager_enabled":false}
""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_dart'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_dart/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/bot_telegram_general_framework_project_isar_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_isar_scheme/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_isar_scheme/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_isar_scheme/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_isar_scheme/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_isar_scheme/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_isar_scheme/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_isar_scheme/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_isar_scheme/example/bot_telegram_general_framework_project_client_isar_scheme_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_isar_scheme/bot_telegram_general_framework_project_isar_scheme.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_isar_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_isar_scheme/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_isar_scheme/lib/src/bot_telegram_general_framework_project_client_isar_scheme_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_isar_scheme/lib/bot_telegram_general_framework_project_client_isar_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export '../../bot_telegram_general_framework_project_client_isar_scheme/lib/src/bot_telegram_general_framework_project_isar_scheme_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_isar_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_isar_scheme/test/bot_telegram_general_framework_project_client_isar_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_isar_scheme/bot_telegram_general_framework_project_isar_scheme.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_isar_scheme'
description: 'A starting point for Dart libraries or applications.'
version: '1.0.0'
environment: 
  sdk: '>=3.3.3 <4.0.0'
dependencies: 
  isar: '^4.0.0-dev.14'
dev_dependencies: 
  lints: '^4.0.0'
  test: 'any'
  build_runner: 'any'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_isar_scheme/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity: Directory(
            "library/bot_telegram_general_framework_project_language"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_language/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_language/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_language/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_language/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_language/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_language/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_language/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_language/example/bot_telegram_general_framework_project_language_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_language/bot_telegram_general_framework_project_language.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_language/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_language/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_language/lib/src/bot_telegram_general_framework_project_language_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_language/lib/bot_telegram_general_framework_project_language.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_language_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_language/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_language/test/bot_telegram_general_framework_project_language_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_language/bot_telegram_general_framework_project_language.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_language'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_language/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            Directory("library/bot_telegram_general_framework_project_scheme"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_scheme/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_scheme/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_scheme/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_scheme/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_scheme/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_scheme/example/bot_telegram_general_framework_project_scheme_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_scheme/bot_telegram_general_framework_project_scheme.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_scheme/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_scheme/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_scheme/lib/src/bot_telegram_general_framework_project_scheme_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_scheme/lib/bot_telegram_general_framework_project_scheme.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_scheme_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_scheme/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_scheme/test/bot_telegram_general_framework_project_scheme_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_scheme/bot_telegram_general_framework_project_scheme.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_scheme'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_scheme/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      ),
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            Directory("library/bot_telegram_general_framework_project_secret"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.directory,
        value: "",
        children: [
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_secret/.github"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_secret/.github/workflows"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_secret/.github/workflows/general_workflow_deploy_docs_to_github_page.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_secret/.github/workflows/general_workflow_release_app_development.yaml"),
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
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_secret/.github/workflows/general_workflow_release_app_production.yaml"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_secret/.github/FUNDING.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_secret/example"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_secret/example/bot_telegram_general_framework_project_secret_example.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_secret/bot_telegram_general_framework_project_secret.dart';

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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_secret/lib"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: Directory(
                    "library/bot_telegram_general_framework_project_secret/lib/src"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.directory,
                value: "",
                children: [
                  ScriptGenerator(
                    is_generate: true,
                    directory_base:
                        Directory("bot_telegram_general_framework_project"),
                    file_system_entity: File(
                        "library/bot_telegram_general_framework_project_secret/lib/src/bot_telegram_general_framework_project_secret_base.dart"),
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
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_secret/lib/bot_telegram_general_framework_project_secret.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/bot_telegram_general_framework_project_secret_base.dart';

// TODO: Export any libraries intended for clients of this package.

""",
                children: [],
              )
            ],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: Directory(
                "library/bot_telegram_general_framework_project_secret/test"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.directory,
            value: "",
            children: [
              ScriptGenerator(
                is_generate: true,
                directory_base:
                    Directory("bot_telegram_general_framework_project"),
                file_system_entity: File(
                    "library/bot_telegram_general_framework_project_secret/test/bot_telegram_general_framework_project_secret_test.dart"),
                state_data: {},
                file_system_entity_type: FileSystemEntityType.file,
                value: r"""
import 'package:bot_telegram_general_framework_project_secret/bot_telegram_general_framework_project_secret.dart';
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/.gitignore"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/analysis_options.yaml"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/CHANGELOG.md"),
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/LICENSE"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""

Copyright (c) 2024 GLOBAL CORPORATION.


""",
            children: [],
          ),
          ScriptGenerator(
            is_generate: true,
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/pubspec.yaml"),
            state_data: {},
            file_system_entity_type: FileSystemEntityType.file,
            value: r"""
name: 'bot_telegram_general_framework_project_secret'
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
            directory_base: Directory("bot_telegram_general_framework_project"),
            file_system_entity: File(
                "library/bot_telegram_general_framework_project_secret/README.md"),
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

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
            children: [],
          )
        ],
      )
    ],
  ),
  ScriptGenerator(
    is_generate: true,
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: Directory("test"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.directory,
    value: "",
    children: [
      ScriptGenerator(
        is_generate: true,
        directory_base: Directory("bot_telegram_general_framework_project"),
        file_system_entity:
            File("test/bot_telegram_general_framework_project_test.dart"),
        state_data: {},
        file_system_entity_type: FileSystemEntityType.file,
        value: r"""
import 'package:bot_telegram_general_framework_project/bot_telegram_general_framework_project.dart';
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
    directory_base: Directory("bot_telegram_general_framework_project"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
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
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: File("pubspec.yaml"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
name: 'bot_telegram_general_framework_project'
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
    directory_base: Directory("bot_telegram_general_framework_project"),
    file_system_entity: File("README.md"),
    state_data: {},
    file_system_entity_type: FileSystemEntityType.file,
    value: r"""
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

<!-- START GLOBAL CORPORATION -->
<h3 align="center">
  Global Corporation

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>


<h3 align="center">
  Welcome to Global Corporation profile!
  <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="28">
</h3>

<!-- Social icons section -->
<p align="center">
  <a href="https://www.instagram.com/global__corporation/"><img width="32px" alt="Instagram" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://t.me/GLOBAL_CORPORATION_ORG"><img width="32px" alt="Twitter" title="Telegram" src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://twitter.com/global_corp_org"><img width="32px" alt="Twitter" title="Twitter" src="https://upload.wikimedia.org/wikipedia/commons/6/6f/Logo_of_Twitter.svg"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
  <a href="https://www.youtube.com/@global_Corporation"><img width="32px" alt="Youtube" title="Youtube" src="https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png"/></a>
  &#8287;&#8287;&#8287;&#8287;&#8287;
</p>

**Global Corporation** Is a **leading company** that takes a leading role in **accelerating** and **maintaining** enterprise security. 

With a sharp focus on innovation and technological excellence

**Global Corporation** providing effective proactive solutions to secure company operations and prevent potential adverse risks. 

With a committed team of experts, advanced technology, and a holistic approach to corporate security, Global Corporation has become a benchmark for other companies that prioritize security and safety as a top priority in their business.

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

## Application / Product / Project Official

<h3 align="center">
  Global App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super Cross-platform application allows you to do social media / chat as well as a place for buying and selling businesses to find work
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_app)

<h3 align="center">
  Global Bot App

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/global_corporation.png)
</h3>

  Super cross-platform application allows you to handle lots of bots / userbots / AI for your assistants, making it easier for you in all your affairs
  
[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

### Global Studio Developer

  The cross-platform Studio Developer application allows you to code on various platforms

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_app)

<h3 align="center">
  Ads Gateway

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/ads_gateway.png)
</h3>

  **Applikasi** Cross platform advertising allows you to advertise on various platforms easily

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Archivon

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/archivon.png)
</h3>

  **Applikasi** Linux based operating system which will be released

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)

<h3 align="center">
  Coinlox

  ![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/coinlox.png)
</h3>

  **Applikasi** Cross Platform Wallet allows you to store money on the internet safely

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/coinlox)



### Global Bot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_telegram)

### Global Userbot Telegram

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_userbot_telegram)

### Global Bot Whatsapp

  Super Bot Telegram allows you to manage various chat groups / private / channels as well as a place to buy and sell the products we sell, you can buy this service from
  IDR: 25k / bulan
  $: 1,5 Dollar

[![](https://cdn.dribbble.com/userupload/13133188/file/original-2331747061f15217a2f16cc3d665c5b6.jpg)](https://github.com/globalcorporation/global_bot_whatsapp)

## Social Media

<h3 align="center">
  Telegram
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Telegram_logo.svg" width="20">
</h3>

1. [Group Developer Global Public](https://t.me/DEVELOPER_GLOBAL_PUBLIC)

## Product / Services

1. **Clone Bot / Userbot**
  Hi, do you want to have a bot / userbot with lots of features?. 
  - **Features**:
    - **Repeat Message**
    - **Manage Chat Private / Channel / Group**
  - **Platform Support**:
    - **Telegram**
    - **Whatsapp**
    - **Twitter**
    - **Github**
    - **Google** 
1. **Products**
    - **Black Products**
    - **Group / Channel**
    - **Nsfw**
    - **Payment Gateway**
    - **Paid Promote**
    - **Pre Release / Beta**
    - **Promo Cheap**
    - **Source Code Bot / USerbot**
    - **Trade**
2. **Services**
    - **Developer**
    - **Goal**
    - **Partner**
    - **Promote**
    - **Recommendation**
    - **Sortcut Cheat Sheet**
    - **Terminate**
    - **Upgrade**

## How To Buy Services Or Products | Cara Beli Jasa Atau Products

- **Via Telegram Bot**

  - **Englisth**
     
     If you want to buy, you can use Telegram to automatically process the payment
     (if the long process is not a **SCAM!!** it's possible that the **server is down** so the process could take longer. If in doubt, tap the report menu then fill in a complaint)

     - Open Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     - Fill in personal data / subscribe to the channel
     - Tap Main menu select services / products
     - Select Products / Services
     - Make sure there are enough coins
     - Fill in the required data


  - **Indonesia**

     Jika kamu ingin membeli bisa lewat telegram automatis pembayaran hingga proses
     (jika proses lama itu bukan **SCAM !!** kemungkinan **server down** jadi proses bisa lebih lama jika ragu tap menu report lalu isi keluhan)
     -  Buka Bot: https://t.me/GLOBAL_CORP_ORG_BOT
     -  Isi data pribadi / subscribe channel
     -  Tap Main menu pilih services / products
     -  Pilih Product / Services
     -  Pastikan coin mencukupi
     -  Isi data yang di butuhkan

- **Via Telegram USER**
  
  -  Buka: https://t.me/general_user
  -  Ucapin apapun yang kamu butuh jasa dev / apapun

  
Video Tutorial
[![Watch the video](https://img.youtube.com/vi/TY0Y21C6asM/maxresdefault.jpg)](https://www.youtube.com/watch?v=TY0Y21C6asM)

- **Lewat App**

  - **English** 

    If you want to see a product/service with a full demo, you can buy it via the app

  - **Indonesia**

    jika kamu ingin melihat product / jasa dengan full demo kamu bisa beli lewat app

## 📺 Latest YouTube Videos

  <!-- prettier-ignore-start -->
  <!-- BEGIN YOUTUBE-CARDS -->
[![Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation](https://ytcards.demolab.com/?id=LfNt8A2fCLQ&title=Userbot+LIFE+TIME+Subsription+Telegram+Murah+Unlimited+Akun+Ultra+FAST+%7C+Global+Corporation&lang=id&timestamp=1712129787&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Userbot LIFE TIME Subsription Telegram Murah Unlimited Akun Ultra FAST | Global Corporation")](https://www.youtube.com/watch?v=LfNt8A2fCLQ)
[![Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL](https://ytcards.demolab.com/?id=BFl2AT_pdOw&title=Tolong+%F0%9F%98%AD+Siapapun+beli+satu+jasa+aku+ntr+aku+kasih+harga+seiklasnya+%2F+ada+yang+mau+donasi+%7C+GLOBAL&lang=id&timestamp=1710988807&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Tolong 😭 Siapapun beli satu jasa aku ntr aku kasih harga seiklasnya / ada yang mau donasi | GLOBAL")](https://www.youtube.com/watch?v=BFl2AT_pdOw)
[![Cara beli ai telegram versi bot dan cara pakai| Global Corporation](https://ytcards.demolab.com/?id=7LZhoklvS9A&title=Cara+beli+ai+telegram+versi+bot+dan+cara+pakai%7C+Global+Corporation&lang=id&timestamp=1710937415&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara beli ai telegram versi bot dan cara pakai| Global Corporation")](https://www.youtube.com/watch?v=7LZhoklvS9A)
[![Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation](https://ytcards.demolab.com/?id=4mAZ6EgAhUo&title=Ai+Userbot+Telegram+Demo+Cara+Pakai+Dan+Beli+%7C+Global+Corporation&lang=id&timestamp=1710936251&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Ai Userbot Telegram Demo Cara Pakai Dan Beli | Global Corporation")](https://www.youtube.com/watch?v=4mAZ6EgAhUo)
[![CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation](https://ytcards.demolab.com/?id=uiDJwK9r3Cg&title=CARA+BELI+USERBOT+TELEGRAM+CLOUD++%7C+Global+Corporation&lang=id&timestamp=1710900440&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "CARA BELI USERBOT TELEGRAM CLOUD  | Global Corporation")](https://www.youtube.com/watch?v=uiDJwK9r3Cg)
[![Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP](https://ytcards.demolab.com/?id=ADqzS5ORJsU&title=Cara+Top+Up+Automatis+Menggunakan+Payment+Gateway+Di+GLOBAL+BOT+APP&lang=id&timestamp=1710721879&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&max_title_lines=1&width=250&border_radius=5 "Cara Top Up Automatis Menggunakan Payment Gateway Di GLOBAL BOT APP")](https://www.youtube.com/watch?v=ADqzS5ORJsU)
<!-- END YOUTUBE-CARDS -->
  <!-- prettier-ignore-end -->

<!-- END GLOBAL CORPORATION -->
""",
    children: [],
  )
];
