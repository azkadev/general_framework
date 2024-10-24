import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

typedef AlertGeneralFrameworkButtonFunction<T> = T Function(BuildContext context, AlertGeneralFrameworkOptions alertGeneralFrameworkOptions);

extension AlertGeneralFrameworkExtensionBuildContext on BuildContext {
  Future<T?> showAlertGeneralFramework<T>({
    required AlertGeneralFrameworkOptions alertGeneralFrameworkOptions,
  }) async {
    return await showDialogGeneralFramework<T>(
      useRootNavigator: alertGeneralFrameworkOptions.useRootNavigator,
      barrierDismissible: alertGeneralFrameworkOptions.barrierDismissible,
      builder: (context, setState) {
        return AlertGeneralFrameworkWidget(
          alertGeneralFrameworkOptions: alertGeneralFrameworkOptions,
        );
      },
    );
  }
}

class AlertGeneralFrameworkOptions {
  final String title;
  final AlertGeneralFrameworkButtonFunction<dynamic> builder;
  final String confirmText;
  final String cancelText;
  final bool isShowCancelButton;
  final bool isAutoCloseOnConfirmBtnPressed;

  final AlertGeneralFrameworkButtonFunction<void>? onCancelPressed;
  final AlertGeneralFrameworkButtonFunction<void>? onConfirmPressed;
  final bool useRootNavigator;
  final bool barrierDismissible;
  final bool isShowCloseButton;
  final Color? color;
  final BorderRadius? borderRadius;
  AlertGeneralFrameworkOptions({
    required this.title,
    required this.builder,
    this.isAutoCloseOnConfirmBtnPressed = true,
    this.color,
    this.borderRadius,
    this.isShowCloseButton = true,
    this.barrierDismissible = true,
    this.confirmText = "Ok",
    this.cancelText = "Cancel",
    this.onCancelPressed,
    this.useRootNavigator = false,
    this.isShowCancelButton = true,
    this.onConfirmPressed,
  });

  AlertGeneralFrameworkOptions copyWith({
    String? title,
    AlertGeneralFrameworkButtonFunction<dynamic>? builder,
    bool? isAutoCloseOnConfirmBtnPressed,
    Color? color,
    BorderRadius? borderRadius,
    bool? isShowCloseButton,
    bool? barrierDismissible,
    String? confirmText,
    String? cancelText,
    AlertGeneralFrameworkButtonFunction<void>? onCancelPressed,
    bool? useRootNavigator,
    bool? isShowCancelButton,
    AlertGeneralFrameworkButtonFunction<void>? onConfirmPressed,
  }) {
    return AlertGeneralFrameworkOptions(
      title: title ?? this.title,
      builder: builder ?? this.builder,
      isAutoCloseOnConfirmBtnPressed: isAutoCloseOnConfirmBtnPressed ?? this.isAutoCloseOnConfirmBtnPressed,
      color: color ?? this.color,
      borderRadius: borderRadius ?? this.borderRadius,
      isShowCancelButton: isShowCloseButton ?? this.isShowCancelButton,
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      confirmText: confirmText ?? this.confirmText,
      cancelText: cancelText ?? this.cancelText,
      onCancelPressed: onCancelPressed ?? this.onCancelPressed,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      isShowCloseButton: isShowCloseButton ?? this.isShowCloseButton,
      onConfirmPressed: onConfirmPressed ?? this.onConfirmPressed,
    );
  }

  static void onCancelPressedDefault(BuildContext context, AlertGeneralFrameworkOptions alertGeneralFrameworkOptions) {
    context.navigator(rootNavigator: alertGeneralFrameworkOptions.useRootNavigator).pop();
  }

  static void onConfirmPressedDefault(BuildContext context, AlertGeneralFrameworkOptions alertGeneralFrameworkOptions) {}
}

class AlertGeneralFrameworkWidget extends StatefulWidget {
  final AlertGeneralFrameworkOptions alertGeneralFrameworkOptions;
  const AlertGeneralFrameworkWidget({
    super.key,
    required this.alertGeneralFrameworkOptions,
  });

  @override
  State<AlertGeneralFrameworkWidget> createState() => _AlertGeneralFrameworkWidgetState();
}

class _AlertGeneralFrameworkWidgetState extends State<AlertGeneralFrameworkWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final dynamic body = widget.alertGeneralFrameworkOptions.builder(context, widget.alertGeneralFrameworkOptions);

    return MenuContainerBuilderGeneralFrameworkWidget(
      isWithBorder: false,
      isWithShadow: false,
      isLoading: false,
      width: null,
      height: null,
      constraints: null,
      transform: null,
      transformAlignment: null,
      margin: null,
      padding: null,
      clipBehavior: null,
      decorationBuilder: (context, decoration) {
        return decoration.copyWith(
          color: widget.alertGeneralFrameworkOptions.color ?? context.theme.primaryColor,
          borderRadius: widget.alertGeneralFrameworkOptions.borderRadius ?? BorderRadius.circular(20),
        );
      },
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      widget.alertGeneralFrameworkOptions.title.trim(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: context.theme.indicatorColor,
                      ),
                    ),
                  ),
                ),
                if (widget.alertGeneralFrameworkOptions.isShowCloseButton) ...[
                  IconButton(
                    onPressed: () {
                      (widget.alertGeneralFrameworkOptions.onCancelPressed ?? AlertGeneralFrameworkOptions.onCancelPressedDefault)(context, widget.alertGeneralFrameworkOptions);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 20,
                    ),
                  ),
                ] else ...[
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                ],
              ],
            ),
            () {
              if (body is Widget) {
                return body;
              }
              if (body is String) {
                return Flexible(
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: context.width,
                        maxHeight: context.height,
                        maxWidth: context.width,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          body,
                          style: TextStyle(
                            color: context.theme.indicatorColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            }(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.alertGeneralFrameworkOptions.isShowCancelButton) ...[
                  Flexible(
                    child: ButtonContainerMaterialGeneralFrameworkWidget(
                      color: widget.alertGeneralFrameworkOptions.color ?? context.theme.primaryColor,
                      borderRadius: widget.alertGeneralFrameworkOptions.borderRadius ?? BorderRadius.circular(20),
                      width: context.width,
                      margin: const EdgeInsets.all(5),
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(widget.alertGeneralFrameworkOptions.confirmText.trim()),
                        );
                      },
                      isLoading: false,
                      onPressed: () {
                        (widget.alertGeneralFrameworkOptions.onCancelPressed ?? AlertGeneralFrameworkOptions.onCancelPressedDefault)(context, widget.alertGeneralFrameworkOptions);
                      },
                    ),
                  ),
                ],
                Flexible(
                  child: ButtonContainerMaterialGeneralFrameworkWidget(
                    color: widget.alertGeneralFrameworkOptions.color ?? context.theme.primaryColor,
                    borderRadius: widget.alertGeneralFrameworkOptions.borderRadius ?? BorderRadius.circular(20),
                    width: context.width,
                    margin: const EdgeInsets.all(5),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget.alertGeneralFrameworkOptions.confirmText.trim()),
                      );
                    },
                    isLoading: false,
                    onPressed: () {
                      (widget.alertGeneralFrameworkOptions.onConfirmPressed ?? AlertGeneralFrameworkOptions.onConfirmPressedDefault)(context, widget.alertGeneralFrameworkOptions);
                      if (widget.alertGeneralFrameworkOptions.isAutoCloseOnConfirmBtnPressed) {
                        context.navigator(rootNavigator: widget.alertGeneralFrameworkOptions.useRootNavigator).pop();
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
