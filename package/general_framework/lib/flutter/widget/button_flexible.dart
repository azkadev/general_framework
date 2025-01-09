// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_framework/flutter/ui/ui.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

typedef ButtonFlexibleGeneralFrameworkWidgetButton = void Function(
    BuildContext context, ButtonFlexibleDataGeneralFramework button);

class ButtonFlexibleDataGeneralFramework {
  final String title;
  final String url;
  final String callback_data;
  ButtonFlexibleDataGeneralFramework({
    required this.title,
    required this.url,
    required this.callback_data,
  });

  ButtonFlexibleDataGeneralFramework copyWith({
    String? title,
    String? url,
    String? callback_data,
  }) {
    return ButtonFlexibleDataGeneralFramework(
      title: title ?? this.title,
      url: url ?? this.url,
      callback_data: callback_data ?? this.callback_data,
    );
  }
}

class ButtonFlexibleGeneralFramework {
  final List<List<ButtonFlexibleDataGeneralFramework>> buttons;
  const ButtonFlexibleGeneralFramework({
    required this.buttons,
  });
}

class ButtonFlexibleGeneralFrameworkWidget extends StatelessWidget {
  final ButtonFlexibleGeneralFramework button;
  final ButtonFlexibleGeneralFrameworkWidgetButton? onPressed;
  final ButtonFlexibleGeneralFrameworkWidgetButton? onLongPressed;
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Clip clipBehavior;
  final bool isWithBorder;
  final bool isWithBoxShadows;
  final bool isLoading;
  final Color? color;
  const ButtonFlexibleGeneralFrameworkWidget({
    super.key,
    required this.button,
    this.onPressed,
    this.onLongPressed,
    this.decorationBuilder,
    this.color,
    this.isLoading = false,
    this.isWithBoxShadows = true,
    this.isWithBorder = true,
    this.clipBehavior = Clip.antiAlias,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final List<
                ButtonFlexibleDataGeneralFramework> inline_keyboard_column
            in button.buttons) ...[
          () {
            return Row(
              children: [
                for (final ButtonFlexibleDataGeneralFramework inlineKeyboardData
                    in inline_keyboard_column) ...[
                  () {
                    return Expanded(
                      child: ButtonContainerMaterialGeneralFrameworkWidget(
                        width: context.width,
                        margin: padding ?? const EdgeInsets.all(2),
                        borderRadius: borderRadius ?? BorderRadius.circular(5),
                        isWithBorder: isWithBorder,
                        isWithBoxShadows: isWithBoxShadows,
                        color: color,
                        clipBehavior: clipBehavior,
                        decorationBuilder: decorationBuilder,
                        onLongPress: () {
                          (onLongPressed ?? onLongPressedDefault)
                              .call(context, inlineKeyboardData);
                        },
                        onPressed: () {
                          (onPressed ?? onPressedDefault)
                              .call(context, inlineKeyboardData);
                        },
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              inlineKeyboardData.title,
                              style: context.theme.textTheme.titleSmall,
                            ),
                          );
                        },
                      ),
                    );
                  }(),
                ],
              ],
            );
          }(),
        ],
      ],
    );
  }

  static void onLongPressedDefault(BuildContext context,
      ButtonFlexibleDataGeneralFramework inlineKeyboardData) {}
  static void onPressedDefault(BuildContext context,
      ButtonFlexibleDataGeneralFramework inlineKeyboardData) {
    if (inlineKeyboardData.url.trim().isNotEmpty) {
      context.showAlertGeneralFramework(
        alertGeneralFrameworkOptions: AlertGeneralFrameworkOptions(
          title: "Apakah anda yakin?",
          onCancelPressed: (context, alertGeneralFrameworkOptions) {
            launchUrlString(
              inlineKeyboardData.url,
            );
          },
          builder: (context, _) {
            return "Open: ${inlineKeyboardData.url}".trim();
          },
        ),
      );
      return;
    }
    if (inlineKeyboardData.callback_data.trim().isNotEmpty) {}
  }
}
