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
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
typedef AlertGeneralFrameworkButtonFunction<T> = T Function(
    BuildContext context,
    AlertGeneralFrameworkOptions alertGeneralFrameworkOptions);

/// UncompleteDocumentation
extension AlertGeneralFrameworkExtensionBuildContext on BuildContext {
  /// UncompleteDocumentation
  Future<T?> showAlertGeneralFramework<T>({
    required AlertGeneralFrameworkOptions alertGeneralFrameworkOptions,
  }) async {
    return await showDialogGeneralFramework<T>(
      useRootNavigator: alertGeneralFrameworkOptions.useRootNavigator,
      barrierDismissible: alertGeneralFrameworkOptions.barrierDismissible,
      isWithBlur: alertGeneralFrameworkOptions.isWithBlur,
      builder: (context, setState) {
        return AlertGeneralFrameworkWidget(
          alertGeneralFrameworkOptions: alertGeneralFrameworkOptions,
        );
      },
    );
  }
}

/// UncompleteDocumentation
class AlertGeneralFrameworkOptions {
  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final bool isWithBlur;

  /// UncompleteDocumentation
  final AlertGeneralFrameworkButtonFunction<dynamic> builder;

  /// UncompleteDocumentation
  final String confirmText;

  /// UncompleteDocumentation
  final String cancelText;

  /// UncompleteDocumentation
  final bool isShowCancelButton;

  /// UncompleteDocumentation
  final bool isAutoCloseOnConfirmBtnPressed;

  /// UncompleteDocumentation
  final AlertGeneralFrameworkButtonFunction<void>? onCancelPressed;

  /// UncompleteDocumentation
  final AlertGeneralFrameworkButtonFunction<void>? onConfirmPressed;

  /// UncompleteDocumentation
  final bool useRootNavigator;

  /// UncompleteDocumentation
  final bool barrierDismissible;

  /// UncompleteDocumentation
  final bool isShowCloseButton;

  /// UncompleteDocumentation
  final Color? color;

  /// UncompleteDocumentation
  final BorderRadius? borderRadius;

  /// UncompleteDocumentation
  AlertGeneralFrameworkOptions({
    required this.title,
    required this.builder,
    this.isWithBlur = false,
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

  /// UncompleteDocumentation
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
      isAutoCloseOnConfirmBtnPressed:
          isAutoCloseOnConfirmBtnPressed ?? this.isAutoCloseOnConfirmBtnPressed,
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

  /// UncompleteDocumentation
  static void onCancelPressedDefault(BuildContext context,
      AlertGeneralFrameworkOptions alertGeneralFrameworkOptions) {
    context
        .navigator(rootNavigator: alertGeneralFrameworkOptions.useRootNavigator)
        .pop();
  }

  /// UncompleteDocumentation
  static void onConfirmPressedDefault(BuildContext context,
      AlertGeneralFrameworkOptions alertGeneralFrameworkOptions) {}
}

/// UncompleteDocumentation
class AlertGeneralFrameworkWidget extends StatefulWidget {
  /// UncompleteDocumentation
  final AlertGeneralFrameworkOptions alertGeneralFrameworkOptions;

  /// UncompleteDocumentation
  const AlertGeneralFrameworkWidget({
    super.key,
    required this.alertGeneralFrameworkOptions,
  });

  @override
  State<AlertGeneralFrameworkWidget> createState() =>
      _AlertGeneralFrameworkWidgetState();
}

class _AlertGeneralFrameworkWidgetState
    extends State<AlertGeneralFrameworkWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        setState(() {});
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final dynamic body = widget.alertGeneralFrameworkOptions
        .builder(context, widget.alertGeneralFrameworkOptions);

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
      padding: null,
      clipBehavior: null,
      decorationBuilder: (context, decoration) {
        return decoration.copyWith(
          color: widget.alertGeneralFrameworkOptions.color ??
              context.theme.primaryColor,
          borderRadius: widget.alertGeneralFrameworkOptions.borderRadius ??
              BorderRadius.circular(20),
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
                      (widget.alertGeneralFrameworkOptions.onCancelPressed ??
                              AlertGeneralFrameworkOptions
                                  .onCancelPressedDefault)(
                          context, widget.alertGeneralFrameworkOptions);
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
                      color: widget.alertGeneralFrameworkOptions.color ??
                          context.theme.primaryColor,
                      borderRadius:
                          widget.alertGeneralFrameworkOptions.borderRadius ??
                              BorderRadius.circular(20),
                      width: context.width,
                      margin: const EdgeInsets.all(5),
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(widget
                              .alertGeneralFrameworkOptions.cancelText
                              .trim()),
                        );
                      },
                      isLoading: false,
                      onPressed: () {
                        (widget.alertGeneralFrameworkOptions.onCancelPressed ??
                                AlertGeneralFrameworkOptions
                                    .onCancelPressedDefault)(
                            context, widget.alertGeneralFrameworkOptions);
                      },
                    ),
                  ),
                ],
                Flexible(
                  child: ButtonContainerMaterialGeneralFrameworkWidget(
                    color: widget.alertGeneralFrameworkOptions.color ??
                        context.theme.primaryColor,
                    borderRadius:
                        widget.alertGeneralFrameworkOptions.borderRadius ??
                            BorderRadius.circular(20),
                    width: context.width,
                    margin: const EdgeInsets.all(5),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(widget
                            .alertGeneralFrameworkOptions.confirmText
                            .trim()),
                      );
                    },
                    isLoading: false,
                    onPressed: () {
                      (widget.alertGeneralFrameworkOptions.onConfirmPressed ??
                              AlertGeneralFrameworkOptions
                                  .onConfirmPressedDefault)(
                          context, widget.alertGeneralFrameworkOptions);
                      if (widget.alertGeneralFrameworkOptions
                          .isAutoCloseOnConfirmBtnPressed) {
                        context
                            .navigator(
                                rootNavigator: widget
                                    .alertGeneralFrameworkOptions
                                    .useRootNavigator)
                            .pop();
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
