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

import 'package:general_framework/flutter/ui/markdown/core/core/markdown_flutter_widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter/material.dart';

typedef MarkdownFlutterContentGeneralFrameworkFunction<T extends TermsOfServicesPageState> = FutureOr<MarkdownFlutterContentGeneralFramework> Function(BuildContext context, T termsOfServicesPageState);
typedef MarkdownFlutterOnUrlPressedGeneralFrameworkFunction<T extends TermsOfServicesPageState> = void Function(BuildContext context, String url, T termsOfServicesPageState);
typedef MarkdownFlutterAppBarActionsGeneralFrameworkFunction<T extends TermsOfServicesPageState> = List<Widget> Function(BuildContext context, T termsOfServicesPageState);
typedef MarkdownFlutterPopupMenuItemsGeneralFrameworkFunction<T extends TermsOfServicesPageState> = List<PopupMenuEntry<dynamic>> Function(BuildContext context, T termsOfServicesPageState, TextStyle textStyle);

class MarkdownFlutterContentGeneralFramework {
  final String title;
  final String content;
  final String languageCodeId;
  const MarkdownFlutterContentGeneralFramework({required this.title, required this.content, required this.languageCodeId});
  static MarkdownFlutterContentGeneralFramework empty() {
    return const MarkdownFlutterContentGeneralFramework(title: "", content: "", languageCodeId: "");
  }

  MarkdownFlutterContentGeneralFramework copyWith({
    String? title,
    String? content,
    String? languageCodeId,
  }) {
    return MarkdownFlutterContentGeneralFramework(
      title: title ?? this.title,
      content: content ?? this.content,
      languageCodeId: languageCodeId ?? this.languageCodeId,
    );
  }
}

class MarkdownFlutterPageGeneralFramework<T extends TermsOfServicesPageState> extends StatefulWidget {
  final String title;
  final MarkdownFlutterOnUrlPressedGeneralFrameworkFunction onUrlPressedBuilder;
  final MarkdownFlutterContentGeneralFrameworkFunction<T> markdownFlutterContentGeneralFrameworkBuilder;
  final MarkdownFlutterPopupMenuItemsGeneralFrameworkFunction<T> markdownFlutterPopupMenuItemsGeneralFrameworkBuilder;

  final MarkdownFlutterAppBarActionsGeneralFrameworkFunction<T> markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder;
  const MarkdownFlutterPageGeneralFramework({
    super.key,
    required this.title,
    required this.markdownFlutterContentGeneralFrameworkBuilder,
    required this.onUrlPressedBuilder,
    required this.markdownFlutterPopupMenuItemsGeneralFrameworkBuilder,
    required this.markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder,
  });

  @override
  State<MarkdownFlutterPageGeneralFramework> createState() => TermsOfServicesPageState();

  static AppBar appBar<T extends TermsOfServicesPageState>({
    Key? key,
    required bool isLoading,
    required BuildContext context,
    required T termsOfServicesPageState,
  }) {
    final bodySmall = (context.theme.textTheme.bodySmall ?? const TextStyle()).copyWith(
      color: context.theme.indicatorColor,
      shadows: context.extensionGeneralLibFlutterShadows(),
    );
    return AppBar(
      key: key,
      centerTitle: true,
      leading: (isLoading) ? const SizedBox.shrink() : null,
      title: Text(
        termsOfServicesPageState.widget.title.trim(),
        style: context.theme.textTheme.titleLarge?.copyWith(
          shadows: context.extensionGeneralLibFlutterShadows(),
        ),
      ),
      backgroundColor: context.theme.primaryColor,
      actions: [
        ...termsOfServicesPageState.widget.markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder(context, termsOfServicesPageState),
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
                  termsOfServicesPageState.handleFunction(
                    onFunction: (context, statefulWidget) async {
                      await termsOfServicesPageState.refresh();
                    },
                  );
                },
                child: () {
                  if (isLoading) {
                    return CircularProgressIndicator(
                      color: context.theme.indicatorColor,
                    );
                  }
                  return Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.refresh,
                          color: context.theme.indicatorColor,
                          shadows: context.extensionGeneralLibFlutterShadows(),
                        ),
                      ),
                      Text(
                        "Refresh / Reload",
                        style: bodySmall,
                      ),
                    ],
                  );
                }(),
              ),
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
                  return Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.speaker,
                          color: context.theme.indicatorColor,
                          shadows: context.extensionGeneralLibFlutterShadows(),
                        ),
                      ),
                      Text(
                        "Speak",
                        style: bodySmall,
                      ),
                    ],
                  );
                }(),
              ),
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
                  return Row(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.translate,
                            color: context.theme.indicatorColor,
                          )),
                      Text(
                        "Translate",
                        style: bodySmall,
                      ),
                    ],
                  );
                }(),
              ),
              ...termsOfServicesPageState.widget.markdownFlutterPopupMenuItemsGeneralFrameworkBuilder(context, termsOfServicesPageState, bodySmall),
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

  MarkdownFlutterContentGeneralFramework markdownFlutterContentGeneralFramework = MarkdownFlutterContentGeneralFramework.empty();

  bool is_loading = false;
  Future<void> refresh() async {
    if (is_loading) {
      return;
    }
    setState(() {
      is_loading = true;
      markdownFlutterContentGeneralFramework = MarkdownFlutterContentGeneralFramework.empty();
    });
    await Future(() async { 
      markdownFlutterContentGeneralFramework = await widget.markdownFlutterContentGeneralFrameworkBuilder(context, this);
    });
    setState(() {
      is_loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = markdownFlutterContentGeneralFramework.title.trim();
    return Scaffold(
      appBar: MarkdownFlutterPageGeneralFramework.appBar(
        context: context,
        termsOfServicesPageState: this,
        isLoading: is_loading,
      ),
      body: RefreshIndicator(
        color: context.theme.indicatorColor,
        onRefresh: refresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.height,
              minWidth: context.width,
            ),
            child: Column(
              children: [
                if (title.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: context.theme.textTheme.titleMedium?.copyWith(
                          shadows: context.extensionGeneralLibFlutterShadows(),
                        ),
                      ),
                    ),
                  ),
                ],
                MarkdownFlutterGeneralFrameworkWidget(
                  data: markdownFlutterContentGeneralFramework.content.trim(),
                  onUrlPressed: (url) {
                    widget.onUrlPressedBuilder(context, url, this);
                  },
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
