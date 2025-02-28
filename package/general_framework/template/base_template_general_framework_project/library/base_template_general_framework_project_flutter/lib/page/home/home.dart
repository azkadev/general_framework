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

import 'dart:math';

import 'package:base_template_general_framework_project_client/api/api.dart';
import 'package:base_template_general_framework_project_flutter/client/core.dart';
import 'package:base_template_general_framework_project_scheme/api_scheme/api_scheme.dart';
import 'package:base_template_general_framework_project_scheme/respond_scheme/respond_scheme.dart';
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class HomePage extends BaseTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget {
  const HomePage({super.key, required super.generalFrameworkClientFlutter});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollControllerAutoKeepStateData scrollControllerAutoKeepStateData = ScrollControllerAutoKeepStateData(
    keyId: "home_page",
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        backgroundColor: context.theme.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: context.width / 2,
        backgroundColor: context.theme.primaryColor,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.height,
              minWidth: context.width / 2,
              maxWidth: context.width / 2,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {
                    routerGeneralLibFlutter().pushNamed(
                      routeName: "/settings",
                      arguments: null,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: scrollControllerAutoKeepStateData.builderWidget(
        builder: (ctx, pageStorageBucket) {
          return SingleChildScrollView(
            controller: scrollControllerAutoKeepStateData.scroll_controller,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: context.height,
                minWidth: context.width,
                maxWidth: context.width,
              ),
              child: Column(
                children: List.generate(Random().nextInt(50) + 50, (index) {
                  return ChatMessageGeneralFrameworkWidget(
                    isLoading: false,
                    title: "Azka Developer",
                    message: "hello kamu lagi apa",
                    unreadCount: 5,
                    date: DateTime.now(),
                    onTap: () {
                      routerGeneralLibFlutter().pushNamed(routeName: "/chat", arguments: Account.create(first_name: "Azka Developer"));
                    },
                  );
                }),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.generalFrameworkClientFlutter.generalFrameworkClient.api_getMe(getMeParameters: GetMe.create());
        },
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
