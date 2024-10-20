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

import 'package:general_framework/flutter/ui/markdown/core/core/markdown_flutter_widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter/material.dart';

class MarkdownFlutterPageGeneralFramework extends StatefulWidget {
  
  const MarkdownFlutterPageGeneralFramework({
    super.key,
  });

  @override
  State<MarkdownFlutterPageGeneralFramework> createState() => TermsOfServicesPageState();

  static AppBar appBar<T extends TermsOfServicesPageState>({
    Key? key,
    required bool isLoading,
    required BuildContext context,
    required T termsOfServicesPageState,
    required HandleFunctionGeneralLibFlutter handleFunction,
  }) {
    return AppBar(
      key: key,
      centerTitle: true,
      leading: (isLoading) ? const SizedBox.shrink() : null,
      title: Text(
        "Terms Of Services Page",
        style: context.theme.textTheme.titleLarge,
      ),
      backgroundColor: context.theme.primaryColor,
      actions: [
        PopupMenuButton(
          iconSize: 20,
          position: PopupMenuPosition.under,
          color: context.theme.primaryColor,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                onTap: () {
                  if (isLoading) {
                    return;
                  }
                  
                },
                child: () {
                  if (isLoading) {
                    return CircularProgressIndicator(
                      color: context.theme.indicatorColor,
                    );
                  }
                  return const Row(
                    children: [
                      IconButton(onPressed: null, icon: Icon(Icons.speaker)),
                      Text("Speak"),
                    ],
                  );
                }(),
              ),
            ];
          },
        ),
      ],
    );
  }
}

class TermsOfServicesPageState extends State<MarkdownFlutterPageGeneralFramework> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await refresh();
    });
  }

  bool is_loading = false; 
  Future<void> refresh() async {
    if (is_loading) {
      return;
    }
    setState(() {
      is_loading = true;
    });
    await Future(() async {});
    setState(() {
      is_loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MarkdownFlutterPageGeneralFramework.appBar(
        context: context,
        termsOfServicesPageState: this,
        handleFunction: handleFunction,
        isLoading: is_loading,
      ),
      body: RefreshIndicator(
        color: context.theme.indicatorColor,
        onRefresh: () async {},
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.height,
              minWidth: context.width,
            ),
            child: Column(
              children: [
                MarkdownFlutterGeneralFrameworkWidget(
                  data: """
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


"""
                      .trim(),
                  onUrlPressed: (url) {},
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
