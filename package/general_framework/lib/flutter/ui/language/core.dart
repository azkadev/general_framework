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
// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/app_bar/widget.dart';
import 'package:general_framework/flutter/ui/dialog/core.dart';
import 'package:general_framework/flutter/widget/menu_container.dart';
import 'package:general_framework/flutter/widget/text_form_field.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/language_code_data_detail.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
enum LanguageGeneralFrameworkType {
  /// UncompleteDocumentation
  dialog,

  /// UncompleteDocumentation
  full;
}

/// UncompleteDocumentation
typedef LanguageGeneralFrameworkOnSelect = void Function(
  BuildContext context,
  LanguageCodeDataDetail languageCodeDataDetail,
);

/// UncompleteDocumentation
class LanguageGeneralFrameworkOptions {
  /// UncompleteDocumentation
  final LanguageGeneralFrameworkType languageGeneralFrameworkType;

  /// UncompleteDocumentation
  final LanguageGeneralFrameworkOnSelect onSelect;

  /// UncompleteDocumentation
  final LanguageGeneralFrameworkController languageGeneralFrameworkController;

  /// get
  final bool isApplicationFullScreen;

  ///
  final String applicationTitle;

  ///
  final dynamic applicationIcon;

  ///
  final GeneralLibFlutterApp generalLibFlutterApp;

  /// UncompleteDocumentation
  const LanguageGeneralFrameworkOptions({
    required this.languageGeneralFrameworkType,
    required this.onSelect,
    required this.languageGeneralFrameworkController,
    required this.isApplicationFullScreen,
    required this.applicationIcon,
    required this.applicationTitle,
    required this.generalLibFlutterApp,
  });

  /// UncompleteDocumentation
  LanguageGeneralFrameworkOptions copyWith({
    LanguageGeneralFrameworkType? languageGeneralFrameworkType,
    LanguageGeneralFrameworkOnSelect? onSelect,
    LanguageGeneralFrameworkController? languageGeneralFrameworkController,
    bool? isApplicationFullScreen,
    dynamic applicationIcon,
    String? applicationTitle,
    GeneralLibFlutterApp? generalLibFlutterApp,
  }) {
    return LanguageGeneralFrameworkOptions(
      languageGeneralFrameworkType: languageGeneralFrameworkType ?? this.languageGeneralFrameworkType,
      onSelect: onSelect ?? this.onSelect,
      languageGeneralFrameworkController: languageGeneralFrameworkController ?? this.languageGeneralFrameworkController,
      isApplicationFullScreen: isApplicationFullScreen ?? this.isApplicationFullScreen,
      applicationIcon: applicationIcon ?? this.applicationIcon,
      applicationTitle: applicationTitle ?? this.applicationTitle,
      generalLibFlutterApp: generalLibFlutterApp ?? this.generalLibFlutterApp,
    );
  }

  /// UncompleteDocumentation
  static List<MapEntry<String, LanguageCodeDataDetail>> getCountryGeneralUiPages({
    required List<String> countryCodes,
  }) {
    return () {
      if (countryCodes.isNotEmpty) {
        final List<MapEntry<String, LanguageCodeDataDetail>> results = [];

        for (final countryCode in countryCodes) {
          for (var element in languageCodeDetailData.entries.toList()) {
            if (element.key == countryCode) {
              results.add(element);
            }
          }
        }
        sort(languages: results);
        return results;
      }
      return languageCodeDetailData.entries.toList();
    }();
  }

  /// UncompleteDocumentation
  static List<MapEntry<String, LanguageCodeDataDetail>> search({
    required List<MapEntry<String, LanguageCodeDataDetail>> languageCodeDatas,
    required String value,
  }) {
    final List<MapEntry<String, LanguageCodeDataDetail>> languageCodeResults = [];

    for (final element in languageCodeDatas) {
      try {
        if (RegExp("^(([0-9]+))", caseSensitive: false).hasMatch(value)) {
          if (!RegExp("^($value)", caseSensitive: false).hasMatch((element.value.dial_code ?? "").replaceAll(RegExp("([+])"), ""))) {
            continue;
          }
        } else {
          if (!RegExp(value, caseSensitive: false).hasMatch(element.value.name ?? "")) {
            continue;
          }
        }
        if (!languageCodeResults.contains(element)) {
          languageCodeResults.add(element);
        }
      } catch (e) {}
    }
    sort(
      languages: languageCodeResults,
    );
    return languageCodeResults;
  }

  /// UncompleteDocumentation

  static void sort({
    required List<MapEntry<String, LanguageCodeDataDetail>> languages,
  }) {
    languages.sort((a, b) {
      return (a.value.name ?? "").toLowerCase().trim().compareTo((b.value.name ?? "").toLowerCase().trim());
    });
  }
}

/// UncompleteDocumentation
class LanguageGeneralFrameworkController extends ChangeNotifier {
  /// UncompleteDocumentation
  String countryCodeId;

  /// UncompleteDocumentation
  final List<String> languageSupports;

  /// UncompleteDocumentation
  LanguageGeneralFrameworkController({
    required this.countryCodeId,
    required this.languageSupports,
  });

  /// UncompleteDocumentation
  void updateCountryCode({
    required String countryCodeId,
  }) {
    this.countryCodeId = countryCodeId;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

/// UncompleteDocumentation
class LanguageGeneralFramework extends StatefulWidget {
  /// UncompleteDocumentation
  final LanguageGeneralFrameworkOptions languageGeneralFrameworkOptions;

  /// UncompleteDocumentation
  const LanguageGeneralFramework({
    super.key,
    required this.languageGeneralFrameworkOptions,
  });

  @override
  State<LanguageGeneralFramework> createState() => LanguageGeneralFrameworkState();

  /// UncompleteDocumentation
  static Future<T?> show<T>({
    required BuildContext context,
    required LanguageGeneralFrameworkOptions languageGeneralFrameworkOptions,
  }) async {
    return await context.showDialogGeneralFramework<T>(
      isWithBlur: true,
      useRootNavigator: false,
      dialogShapeBuilder: (context, shapeBorder) {
        return shapeBorder.copyWith(
          borderRadius: BorderRadius.circular(20),
        );
      },
      builder: (context, setState) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: LanguageGeneralFramework(
            languageGeneralFrameworkOptions: languageGeneralFrameworkOptions,
          ),
        );
      },
    );
  }
}

/// UncompleteDocumentation

class LanguageGeneralFrameworkState extends State<LanguageGeneralFramework> with GeneralLibFlutterStatefulWidget {
  /// UncompleteDocumentation
  final TextEditingController searchTextEditingController = TextEditingController();

  /// UncompleteDocumentation
  bool isShowSearch = false;

  /// UncompleteDocumentation
  late final List<MapEntry<String, LanguageCodeDataDetail>> languageCodeDatas = LanguageGeneralFrameworkOptions.getCountryGeneralUiPages(
    countryCodes: widget.languageGeneralFrameworkOptions.languageGeneralFrameworkController.languageSupports,
  );

  /// UncompleteDocumentation
  late final List<MapEntry<String, LanguageCodeDataDetail>> languageCodeResults = [...languageCodeDatas];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    searchTextEditingController.dispose();
    languageCodeDatas.clear();
    languageCodeResults.clear();
    super.dispose();
  }

  @override
  Future<void> refresh() async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    setState(() {
      isLoading = false;
    });
  }

  /// UncompleteDocumentation
  void search({
    required String value,
  }) async {
    setStateWithIgnoreError(fn: () {
      languageCodeResults.clear();
    });
    languageCodeResults.addAll(LanguageGeneralFrameworkOptions.search(languageCodeDatas: languageCodeDatas, value: value));
    setStateWithIgnoreError(fn: () {});
  }

  /// UncompleteDocumentation

  void reset() {
    setState(() {
      searchTextEditingController.clear();
      isShowSearch = false;
      languageCodeResults.clear();
      languageCodeResults.addAll(languageCodeDatas);
    });
  }

  /// UncompleteDocumentation
  final GlobalKey appBarGlobalKey = GlobalKey();

  /// UncompleteDocumentation
  PreferredSizeWidget appBar({
    required BuildContext context,
  }) {
    final languageGeneralFrameworkOptions = widget.languageGeneralFrameworkOptions;

    if (isShowSearch) {
      return PreferredSize(
        preferredSize: const Size.fromHeight(450),
        child: Container(
          key: appBarGlobalKey,
          width: context.width,
          decoration: BoxDecoration(color: context.theme.primaryColor),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: context.mediaQueryData.padding.top,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormFieldGeneralFrameworkWidget(
                    controller: searchTextEditingController,
                    prefixIconData: Icons.search,
                    suffixIcon: IconButton(
                      onPressed: () {
                        reset();
                      },
                      icon: Icon(
                        Icons.close,
                        color: context.theme.indicatorColor,
                      ),
                    ),
                    onChanged: (value) {
                      search(value: value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return AppBarGeneralFrameworkWidget.create(
      key: appBarGlobalKey,
      leadingBuilder: (context, child) {
        if (languageGeneralFrameworkOptions.languageGeneralFrameworkType == LanguageGeneralFrameworkType.dialog) {
          if (context.navigator().canPop()) {
            return IconButton(
              onPressed: () {
                context.navigator().pop();
              },
              icon: Icon(
                Icons.close,
                color: context.theme.indicatorColor,
              ),
            );
          }
        }
        return child;
      },
      context: context,
      title: "Language",
      pageState: this,
      isShowApplicationIconAndtitle: (languageGeneralFrameworkOptions.languageGeneralFrameworkType == LanguageGeneralFrameworkType.full) ? true : false,
      isApplicationFullScreen: (languageGeneralFrameworkOptions.languageGeneralFrameworkType == LanguageGeneralFrameworkType.dialog)?true:widget.languageGeneralFrameworkOptions.isApplicationFullScreen,
      applicationTitle: widget.languageGeneralFrameworkOptions.applicationTitle,
      applicationIcon: widget.languageGeneralFrameworkOptions.applicationIcon,
      generalLibFlutterApp: widget.languageGeneralFrameworkOptions.generalLibFlutterApp,
      actions: (context, pageState) sync* {
        yield IconButton(
          onPressed: () {
            setState(() {
              isShowSearch = true;
            });
          },
          icon: Icon(
            Icons.search,
            color: context.theme.indicatorColor,
          ),
        );
        return;
      },
      builder: (context, pageState) sync* {
        return;
      },
      appBarBuilder: (context, appBar) {
        return appBar;
      },
    );
  }

  /// UncompleteDocumentation
  Widget body({
    required BuildContext context,
  }) {
    final languageGeneralFrameworkOptions = widget.languageGeneralFrameworkOptions;
    return Scaffold(
      appBar: appBar(
        context: context,
      ),
      body: ListenableBuilder(
        listenable: languageGeneralFrameworkOptions.languageGeneralFrameworkController,
        builder: (context, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ...contentsWidget(
                  context: context,
                ),
                SizedBox(
                  height: context.mediaQueryData.padding.bottom,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final languageGeneralFrameworkOptions = widget.languageGeneralFrameworkOptions;

    if (languageGeneralFrameworkOptions.languageGeneralFrameworkType == LanguageGeneralFrameworkType.dialog) {
      return MenuContainerBuilderGeneralFrameworkWidget(
        isWithBorder: true,
        isWithShadow: true,
        isLoading: false,
        width: null,
        height: null,
        constraints: null,
        transform: null,
        transformAlignment: null,
        margin: null,
        decorationBuilder: (context, decoration) {
          return decoration.copyWith(borderRadius: BorderRadius.circular(20));
        },
        padding: null,
        clipBehavior: null,
        builder: (context) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: body(context: context),
          );
        },
      );
    }
    return body(context: context);
  }

  /// UncompleteDocumentation

  Iterable<Widget> contentsWidget({
    required BuildContext context,
  }) {
    final languageGeneralFrameworkOptions = widget.languageGeneralFrameworkOptions;
    final countryCodeId = languageGeneralFrameworkOptions.languageGeneralFrameworkController.countryCodeId;
    return [
      for (final element in languageCodeResults.toList()) ...[
        contentWidget(
          context: context,
          languageCodeDataDetail: element.value,
          isLoading: false,
          isSelected: countryCodeId == element.value.code,
        ),
      ],
    ];
  }

  /// UncompleteDocumentation
  Widget contentWidget({
    required BuildContext context,
    required LanguageCodeDataDetail languageCodeDataDetail,
    required bool isLoading,
    required bool isSelected,
  }) {
    return Ink(
      color: () {
        if (isSelected) {
          return context.theme.highlightColor;
        }
      }(),
      child: MenuContainerGeneralFrameworkWidget.lisTile(
        context: context,
        isLoading: isLoading,
        onTap: () {
          widget.languageGeneralFrameworkOptions.languageGeneralFrameworkController.updateCountryCode(countryCodeId: languageCodeDataDetail.code ?? "");
          widget.languageGeneralFrameworkOptions.onSelect(context, languageCodeDataDetail);
        },
        leading: Text(
          languageCodeDataDetail.flag ?? "",
          style: TextStyle(
            fontSize: (isSelected) ? 20 : 15,
            fontWeight: (isSelected) ? FontWeight.bold : null,
            fontFamily: "NotoEmoji",
            package: "general_assets_flutter",
          ),
          textAlign: TextAlign.center,
        ),
        title: "",
        titleBuilder: (context, child) {
          return Text(
            languageCodeDataDetail.name ?? "",
            style: TextStyle(
              fontSize: (isSelected) ? 17 : 12,
              fontWeight: (isSelected) ? FontWeight.bold : null,
            ),
            textAlign: TextAlign.start,
          );
        },
        trailing: Text(
          languageCodeDataDetail.dial_code ?? "",
          style: TextStyle(
            fontSize: (isSelected) ? 17 : 12,
            fontWeight: (isSelected) ? FontWeight.bold : null,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
