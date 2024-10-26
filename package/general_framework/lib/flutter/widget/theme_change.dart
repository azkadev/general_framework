import 'package:flutter/material.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

enum ThemeChangeGeneralFrameworkWidgetStyle {
  minimalist,
  listTile,
  full,
}

class ThemeChangeGeneralFrameworkWidget extends StatelessWidget {
  final GeneralLibFlutterApp generalLibFlutterApp;
  final ThemeChangeGeneralFrameworkWidgetStyle themeChangeGeneralFrameworkWidgetStyle;
  final void Function() onChanged;
  const ThemeChangeGeneralFrameworkWidget({
    super.key,
    required this.themeChangeGeneralFrameworkWidgetStyle,
    required this.generalLibFlutterApp,
    required this.onChanged,
  });
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
