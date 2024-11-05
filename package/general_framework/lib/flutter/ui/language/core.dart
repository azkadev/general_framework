// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/dialog/core.dart';
import 'package:general_framework/flutter/widget/menu_container.dart';
import 'package:general_framework/flutter/widget/text_form_field.dart';
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
          onPressed: () {
            setState(() {
              isShowSearch = true;
            });
          },
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
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: body(context: context),
          );
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
