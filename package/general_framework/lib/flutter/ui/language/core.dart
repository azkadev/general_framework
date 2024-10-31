import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/dialog/core.dart';
import 'package:general_framework/flutter/widget/menu_container.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/language_code_data_detail.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

enum LanguageGeneralFrameworkType {
  dialog,
  full,
}

typedef LanguageGeneralFrameworkOnSelect = void Function(
  BuildContext context,
  LanguageCodeDataDetail languageCodeDataDetail,
);

class LanguageGeneralFrameworkOptions {
  final LanguageGeneralFrameworkType languageGeneralFrameworkType;
  final LanguageGeneralFrameworkOnSelect onSelect;
  final LanguageGeneralFrameworkController languageGeneralFrameworkController;

  const LanguageGeneralFrameworkOptions({
    required this.languageGeneralFrameworkType,
    required this.onSelect,
    required this.languageGeneralFrameworkController,
  });

  LanguageGeneralFrameworkOptions copyWith({
    LanguageGeneralFrameworkType? languageGeneralFrameworkType,
    LanguageGeneralFrameworkOnSelect? onSelect,
    LanguageGeneralFrameworkController? languageGeneralFrameworkController,
  }) {
    return LanguageGeneralFrameworkOptions(
      languageGeneralFrameworkType: languageGeneralFrameworkType ?? this.languageGeneralFrameworkType,
      onSelect: onSelect ?? this.onSelect,
      languageGeneralFrameworkController: languageGeneralFrameworkController ?? this.languageGeneralFrameworkController,
    );
  }

  static List<MapEntry<String, LanguageCodeDataDetail>> getCountryGeneralUiPages({
    required List<String> countryCodes,
  }) {
    return () {
      if (countryCodes.isNotEmpty) {
        final List<MapEntry<String, LanguageCodeDataDetail>> results = [];

        for (final country_code in countryCodes) {
          for (var element in languageCodeDetailData.entries.toList()) {
            if (element.key == country_code) {
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

  static List<MapEntry<String, LanguageCodeDataDetail>> search({
    required List<MapEntry<String, LanguageCodeDataDetail>> languageCodeDatas,
    required String value,
  }) {
    final List<MapEntry<String, LanguageCodeDataDetail>> language_code_results = [];

    for (final element in languageCodeDatas) {
      try {
        if (RegExp("^(([0-9]+))", caseSensitive: false).hasMatch(value)) {
          if (!RegExp("^(${value})", caseSensitive: false).hasMatch((element.value.dial_code ?? "").replaceAll(RegExp("([+])"), ""))) {
            continue;
          }
        } else {
          if (!RegExp(value, caseSensitive: false).hasMatch(element.value.name ?? "")) {
            continue;
          }
        }
        if (!language_code_results.contains(element)) {
          language_code_results.add(element);
        }
      } catch (e) {}
    }
    sort(
      languages: language_code_results,
    );
    return language_code_results;
  }

  static void sort({
    required List<MapEntry<String, LanguageCodeDataDetail>> languages,
  }) {
    languages.sort((a, b) {
      return (a.value.name ?? "").toLowerCase().trim().compareTo((b.value.name ?? "").toLowerCase().trim());
    });
  }
}

class LanguageGeneralFrameworkController extends ChangeNotifier {
  String countryCodeId;
  final List<String> languageSupports;
  LanguageGeneralFrameworkController({
    required this.countryCodeId,
    required this.languageSupports,
  });

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

class LanguageGeneralFramework extends StatefulWidget {
  final LanguageGeneralFrameworkOptions languageGeneralFrameworkOptions;
  const LanguageGeneralFramework({
    super.key,
    required this.languageGeneralFrameworkOptions,
  });

  @override
  State<LanguageGeneralFramework> createState() => LanguageGeneralFrameworkState();

  static Future<T?> show<T>({
    required BuildContext context,
    required LanguageGeneralFrameworkOptions languageGeneralFrameworkOptions,
  }) async {
    return await context.showDialogGeneralFramework<T>(
      isWithBlur: true,
      useRootNavigator: false,
      builder: (context, setState) {
        return LanguageGeneralFramework(
          languageGeneralFrameworkOptions: languageGeneralFrameworkOptions,
        );
      },
    );
  }
}

class LanguageGeneralFrameworkState extends State<LanguageGeneralFramework> {
  final TextEditingController searchTextEditingController = TextEditingController();
  bool isShowSearch = false;

  late final List<MapEntry<String, LanguageCodeDataDetail>> languageCodeDatas = LanguageGeneralFrameworkOptions.getCountryGeneralUiPages(
    countryCodes: widget.languageGeneralFrameworkOptions.languageGeneralFrameworkController.languageSupports,
  );

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

  void search({
    required String value,
  }) async {
    setStateWithIgnoreError(fn: () {
      languageCodeResults.clear();
    });
    languageCodeResults.addAll(LanguageGeneralFrameworkOptions.search(languageCodeDatas: languageCodeDatas, value: value));
    setStateWithIgnoreError(fn: () {});
  }

  void reset() {
    setState(() {
      searchTextEditingController.clear();
      isShowSearch = false;
      languageCodeResults.clear();
      languageCodeResults.addAll(languageCodeDatas);
    });
  }

  final GlobalKey appBarGlobalKey = GlobalKey();
  AppBar appBar({
    required BuildContext context,
  }) {
    final languageGeneralFrameworkOptions = widget.languageGeneralFrameworkOptions;

    return AppBar(
      key: appBarGlobalKey,
      leading: () {
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
        return null;
      }(),
      centerTitle: true,
      title: Text(
        "Language",
        style: context.theme.textTheme.titleLarge,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: context.theme.indicatorColor,
          ),
        ),
      ],
    );
  }

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
          return body(context: context);
        },
      );
    }
    return body(context: context);
  }

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
