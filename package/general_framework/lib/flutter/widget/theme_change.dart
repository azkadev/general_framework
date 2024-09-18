import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
enum ThemeChangeGeneralFrameworkWidgetStyle {
  minimalist,
  full,
}
class ThemeChangeGeneralFrameworkWidget extends StatelessWidget {
  final GeneralLibFlutterApp generalLibFlutterApp;
  final void Function() onChanged;
  const ThemeChangeGeneralFrameworkWidget({
    super.key,
    required this.generalLibFlutterApp,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        generalLibFlutterApp.autoChangeTheme(
          onChangeBrightness: () {
            return context.mediaQueryData.platformBrightness;
          },
        );
        onChanged();
      },
      icon: Icon(
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
      ),
    );
  }
}
