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
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
enum ThemeChangeGeneralFrameworkWidgetStyle {
  /// UncompleteDocumentation
  minimalist,

  /// UncompleteDocumentation
  listTile,

  /// UncompleteDocumentation
  full,
}

/// UncompleteDocumentation
class ThemeChangeGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final GeneralLibFlutterApp generalLibFlutterApp;

  /// UncompleteDocumentation
  final ThemeChangeGeneralFrameworkWidgetStyle themeChangeGeneralFrameworkWidgetStyle;

  /// UncompleteDocumentation
  final void Function() onChanged;

  /// UncompleteDocumentation
  const ThemeChangeGeneralFrameworkWidget({
    super.key,
    required this.themeChangeGeneralFrameworkWidgetStyle,
    required this.generalLibFlutterApp,
    required this.onChanged,
  });

  /// UncompleteDocumentation
  static void onPressedDefault({
    required BuildContext context,
    required final GeneralLibFlutterApp generalLibFlutterApp,
    required final void Function() onChanged,
  }) {
    generalLibFlutterApp.autoChangeTheme(
      onChangeBrightness: () {
        return context.mediaQueryData.platformBrightness;
      },
    );
    onChanged();
  }

  /// UncompleteDocumentation

  static Widget iconButtonWidget({
    required BuildContext context,
    required final GeneralLibFlutterApp generalLibFlutterApp,
    required final void Function() onChanged,
  }) {
    return IconButton(
      onPressed: () {
        onPressedDefault(context: context, generalLibFlutterApp: generalLibFlutterApp, onChanged: onChanged);
      },
      icon: iconWidget(generalLibFlutterApp: generalLibFlutterApp),
    );
  }

  /// UncompleteDocumentation
  static Widget iconWidget({
    required final GeneralLibFlutterApp generalLibFlutterApp,
  }) {
    return Icon(
      () {
        if (generalLibFlutterApp.themeMode == ThemeMode.dark) {
          return Icons.dark_mode;
        }
        if (generalLibFlutterApp.themeMode == ThemeMode.light) {
          return Icons.light_mode;
        }
        // return AntDesign.dark;
        // return Clarity.dark;
        return Icons.auto_mode;
      }(),
    );
  }

  /// UncompleteDocumentation
  static Widget textWidget({
    required final GeneralLibFlutterApp generalLibFlutterApp,
  }) {
    return Text(() {
      switch (generalLibFlutterApp.themeMode) {
        case ThemeMode.dark:
          return "Dark Mode";
        case ThemeMode.light:
          return "Light Mode";
        default:
          return "Auto Mode";
      }
    }());
  }

  @override
  Widget build(BuildContext context) {
    switch (themeChangeGeneralFrameworkWidgetStyle) {
      case ThemeChangeGeneralFrameworkWidgetStyle.minimalist:
        return iconButtonWidget(
          context: context,
          generalLibFlutterApp: generalLibFlutterApp,
          onChanged: onChanged,
        );
      case ThemeChangeGeneralFrameworkWidgetStyle.listTile:
        return ListTile(
          onTap: () {
            onPressedDefault(context: context, generalLibFlutterApp: generalLibFlutterApp, onChanged: onChanged);
          },
          leading: iconWidget(generalLibFlutterApp: generalLibFlutterApp),
          title: textWidget(generalLibFlutterApp: generalLibFlutterApp),
        );
      default:
        return ButtonContainerMaterialGeneralFrameworkWidget(
          onPressed: () {
            onPressedDefault(context: context, generalLibFlutterApp: generalLibFlutterApp, onChanged: onChanged);
          },
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  iconWidget(
                    generalLibFlutterApp: generalLibFlutterApp,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  textWidget(generalLibFlutterApp: generalLibFlutterApp),
                ],
              ),
            );
          },
        );
    }
  }
}
