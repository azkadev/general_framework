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

import 'package:general_system_device/flutter/general_system_device_flutter_core.dart';
import 'package:general_system_device/flutter/text_to_speech/text_to_speech.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/loading/loading_controller.dart';
import 'package:general_framework/flutter/loading/loading_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:flutter/material.dart';
import 'package:translate_client/translate_client_core.dart';

/// UncompleteDocumentation
typedef MarkdownFlutterContentGeneralFrameworkFunction<T extends MarkdownFlutterPageStateGeneralFramework> = FutureOr<MarkdownFlutterContentGeneralFramework> Function(BuildContext context, T markdownFlutterPageStateGeneralFramework);

/// UncompleteDocumentation
typedef MarkdownFlutterOnUrlPressedGeneralFrameworkFunction<T extends MarkdownFlutterPageStateGeneralFramework> = void Function(BuildContext context, String url, T markdownFlutterPageStateGeneralFramework);

/// UncompleteDocumentation
typedef MarkdownFlutterAppBarActionsGeneralFrameworkFunction<T extends MarkdownFlutterPageStateGeneralFramework> = List<Widget> Function(BuildContext context, T markdownFlutterPageStateGeneralFramework);

/// UncompleteDocumentation
typedef MarkdownFlutterPopupMenuItemsGeneralFrameworkFunction<T extends MarkdownFlutterPageStateGeneralFramework> = List<PopupMenuEntry<dynamic>> Function(BuildContext context, T markdownFlutterPageStateGeneralFramework, TextStyle textStyle);

/// UncompleteDocumentation
class MarkdownFlutterContentGeneralFramework {
  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final String content;

  /// UncompleteDocumentation
  final String languageCodeId;

  /// UncompleteDocumentation
  const MarkdownFlutterContentGeneralFramework({required this.title, required this.content, required this.languageCodeId});

  /// UncompleteDocumentation
  static MarkdownFlutterContentGeneralFramework empty() {
    return const MarkdownFlutterContentGeneralFramework(title: "", content: "", languageCodeId: "");
  }

  /// UncompleteDocumentation

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

/// UncompleteDocumentation
class MarkdownFlutterPageGeneralFramework<T extends MarkdownFlutterPageStateGeneralFramework> extends StatefulWidget {
  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final MarkdownFlutterOnUrlPressedGeneralFrameworkFunction onUrlPressedBuilder;

  /// UncompleteDocumentation
  final MarkdownFlutterContentGeneralFrameworkFunction<T> markdownFlutterContentGeneralFrameworkBuilder;

  /// UncompleteDocumentation
  final MarkdownFlutterPopupMenuItemsGeneralFrameworkFunction<T> markdownFlutterPopupMenuItemsGeneralFrameworkBuilder;

  /// UncompleteDocumentation
  final MarkdownFlutterAppBarActionsGeneralFrameworkFunction<T> markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder;

  ///
  final GeneralLibFlutterApp generalLibFlutterApp;

  /// UncompleteDocumentation
  const MarkdownFlutterPageGeneralFramework({
    super.key,
    required this.title,
    required this.markdownFlutterContentGeneralFrameworkBuilder,
    required this.onUrlPressedBuilder,
    required this.markdownFlutterPopupMenuItemsGeneralFrameworkBuilder,
    required this.markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder,
    required this.generalLibFlutterApp,
  });

  @override
  State<MarkdownFlutterPageGeneralFramework> createState() => MarkdownFlutterPageStateGeneralFramework();

  /// UncompleteDocumentation

  static AppBar appBar<T extends MarkdownFlutterPageStateGeneralFramework>({
    Key? key,
    required bool isLoading,
    required BuildContext context,
    required T markdownFlutterPageStateGeneralFramework,
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
        markdownFlutterPageStateGeneralFramework.widget.title.trim(),
        style: context.theme.textTheme.titleLarge?.copyWith(
          shadows: context.extensionGeneralLibFlutterShadows(),
        ),
      ),
      backgroundColor: context.theme.primaryColor,
      actions: [
        ...markdownFlutterPageStateGeneralFramework.widget.markdownFlutterAppBarActionsGeneralFrameworkFunctionBuilder(context, markdownFlutterPageStateGeneralFramework),
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
                  markdownFlutterPageStateGeneralFramework.handleFunction(
                    onFunction: (context, statefulWidget) async {
                      await markdownFlutterPageStateGeneralFramework.refresh();
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
                  markdownFlutterPageStateGeneralFramework.handleFunction(
                    onFunction: (context, statefulWidget) async {
                      if (markdownFlutterPageStateGeneralFramework.textToSpeech.isSupport() == false) {
                        context.showAlertGeneralFramework(
                          alertGeneralFrameworkOptions: AlertGeneralFrameworkOptions(
                            title: "Unsupported",
                            isShowCancelButton: false,
                            isShowCloseButton: false,
                            builder: (context, alertGeneralFrameworkOptions) {
                              return "Maaf device anda saat ini tidak support text to speech, tunggu beberapa hari ya sampai kami bisa develop text to speech pada device anda";
                            },
                          ),
                        );
                        return;
                      }

                      for (final element in [
                        markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.title.trim(),
                        markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.content.trim(),
                      ]) {
                        if (element.isNotEmpty) {
                          final text = markdownFlutterPageStateGeneralFramework.textToSpeech.utils_removeHtmlOrMarkdown(text: element);
                          if (text.isNotEmpty) {
                            await markdownFlutterPageStateGeneralFramework.textToSpeech.speak(text: element);
                          }
                        }
                      }
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

                  markdownFlutterPageStateGeneralFramework.handleFunction(onFunction: (context, statefulWidget) async {
                    final LanguageGeneralFrameworkController languageGeneralFrameworkController = LanguageGeneralFrameworkController(
                      countryCodeId: markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.languageCodeId,
                      languageSupports: [],
                    );
                    await LanguageGeneralFramework.show(
                      context: context,
                      languageGeneralFrameworkOptions: LanguageGeneralFrameworkOptions(
                        applicationIcon: null,
                        applicationTitle: "",
                        isApplicationFullScreen: false,
                        generalLibFlutterApp: markdownFlutterPageStateGeneralFramework.widget.generalLibFlutterApp,
                        languageGeneralFrameworkType: LanguageGeneralFrameworkType.dialog,
                        onSelect: (context, languageCodeDataDetail) async {
                          if (markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.languageCodeId == languageCodeDataDetail.code) {
                            context.navigator().pop();

                            return;
                          }
                          final LoadingGeneralFrameworkController loadingGeneralFrameworkController = LoadingGeneralFrameworkController(
                            loadingText: "Translating",
                          );
                          LoadingGeneralFramework.show(
                            context: context,
                            loadingGeneralFrameworkController: loadingGeneralFrameworkController,
                          );
                          loadingGeneralFrameworkController.update(loadingText: "Translating Title to ${languageCodeDataDetail.flag} ${languageCodeDataDetail.name}");
                          final title_translate = await TranslateClient.translate(
                            text: markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.content,
                            toLanguageCode: languageCodeDataDetail.code ?? "",
                            ignoreError: true,
                          );
                          loadingGeneralFrameworkController.update(loadingText: "Translating Content to ${languageCodeDataDetail.flag} ${languageCodeDataDetail.name}");

                          final content_translate = await TranslateClient.translate(
                            text: markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework.content,
                            toLanguageCode: languageCodeDataDetail.code ?? "",
                            ignoreError: true,
                          );
                          loadingGeneralFrameworkController.update(loadingText: "Finished Translate to ${languageCodeDataDetail.flag} ${languageCodeDataDetail.name}");

                          markdownFlutterPageStateGeneralFramework.markdownFlutterContentGeneralFramework = MarkdownFlutterContentGeneralFramework(
                            title: title_translate,
                            content: content_translate,
                            languageCodeId: languageCodeDataDetail.code ?? "",
                          );
                          context.navigator().pop();
                          context.navigator().pop();
                          markdownFlutterPageStateGeneralFramework.setStateWithIgnoreError(
                            fn: () {},
                          );
                        },
                        languageGeneralFrameworkController: languageGeneralFrameworkController,
                      ),
                    );
                    languageGeneralFrameworkController.dispose();
                  });
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
              ...markdownFlutterPageStateGeneralFramework.widget.markdownFlutterPopupMenuItemsGeneralFrameworkBuilder(context, markdownFlutterPageStateGeneralFramework, bodySmall),
            ];
          },
        ),
      ],
    );
  }
}

/// UncompleteDocumentation
class MarkdownFlutterPageStateGeneralFramework extends State<MarkdownFlutterPageGeneralFramework> {
  /// UncompleteDocumentation
  final GeneralSystemDeviceFlutter generalFlutter = const GeneralSystemDeviceFlutter();

  /// UncompleteDocumentation
  late final GeneralSystemDeviceLibraryTextToSpeechBaseFlutter textToSpeech = generalFlutter.text_to_speech;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await refresh();
    });
  }

  @override
  void dispose() {
    textToSpeech.dispose();
    super.dispose();
  }

  /// UncompleteDocumentation
  MarkdownFlutterContentGeneralFramework markdownFlutterContentGeneralFramework = MarkdownFlutterContentGeneralFramework.empty();

  /// UncompleteDocumentation
  bool is_loading = false;

  /// UncompleteDocumentation
  Future<void> refresh() async {
    if (is_loading) {
      return;
    }
    setState(() {
      is_loading = true;
      markdownFlutterContentGeneralFramework = MarkdownFlutterContentGeneralFramework.empty();
    });
    await Future(() async {
      await textToSpeech.initialized();
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
        markdownFlutterPageStateGeneralFramework: this,
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
