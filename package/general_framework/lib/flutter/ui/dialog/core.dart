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
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/typedef/typedef.dart';
import 'package:general_framework/flutter/widget/menu_container.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class DialogGeneralFramework {
  /// UncompleteDocumentation
  static Future<T?> showBuilder<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    required bool barrierDismissible,
    required Color? barrierColor,
    required String? barrierLabel,
    required bool useSafeArea,
    required bool useRootNavigator,
    required RouteSettings? routeSettings,
    required Offset? anchorPoint,
    required TraversalEdgeBehavior? traversalEdgeBehavior,
  }) async {
    return await showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) {
        final child = ScaffoldMessenger(
          child: Builder(
            builder: builder,
          ),
        );
        if (barrierDismissible == false) {
          return PopScope(
            canPop: false,
            child: child,
          );
        }
        return child;
      },
    );
  }

  /// UncompleteDocumentation

  static Future<T?> show<T>({
    required BuildContext context,
    required bool isWithBlur,
    required StatefulWidgetBuilder builder,
    bool isCanShowSnackBar = false,
    ImageFilter? blurFilter,
    BlendMode blurBlendMode = BlendMode.srcOver,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    ShapeBorderBuilderGeneralFrameworkWidget? dialogShapeBuilder,
  }) async {
    return await showBuilder<T>(
      context: context,
      builder: (context) {
        if (isWithBlur) {
          final child = BackdropFilter(
            filter: blurFilter ?? ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            blendMode: blurBlendMode,
            child: Dialog(
              shape: (dialogShapeBuilder ??
                  shapeBorderBuilderGeneralFrameworkWidgetDefault)(
                context,
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              backgroundColor: Colors.transparent,
              child: StatefulBuilder(
                builder: (context, setState) {
                  return builder(context, setState);
                },
              ),
            ),
          );
          if (isCanShowSnackBar) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: child,
            );
          }
          return child;
        }
        final child = Dialog(
          backgroundColor: Colors.transparent,
          child: StatefulBuilder(
            builder: (context, setState) {
              return builder(context, setState);
            },
          ),
        );
        if (isCanShowSnackBar) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: child,
          );
        }
        return child;
      },
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
    );
  }
}

/// UncompleteDocumentation

extension BuildContextGeneralFrameworkFlutterExtension on BuildContext {
  /// UncompleteDocumentation
  Future<B?> showDialogBuilderWithTitleGeneralFramework<B>({
    required IconData icons,
    required String title,
    required List<Widget> Function(
            BuildContext context, void Function(void Function()) setState)
        itemsBuilder,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    Color? color,
    bool isWithBlur = true,
  }) async {
    // return showDialogWithTitleGeneralFramework(title: title, children: children)
    return await showDialogGeneralFramework<B>(
      barrierDismissible: barrierDismissible,
      isWithBlur: isWithBlur,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context, setState) {
        return MenuContainerGeneralFrameworkWidget(
          isLoading: false,
          decorationBuilder: (context, decoration) {
            return decoration.copyWith(
              color: color ?? context.theme.primaryColor,
            );
          },
          menuBuilder: (context) {
            return [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    title.trim(),
                    style: TextStyle(
                      color: context.theme.indicatorColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: context.theme.shadowColor.withAlpha(110),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.navigator().pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 20,
                    ),
                  ),
                ],
              ),
              ...itemsBuilder(context, setState),
            ];
          },
        );
      },
    );
  }

  /// UncompleteDocumentation

  Future<B?> showDialogBuildersWithTitleGeneralFramework<B>({
    required IconData icons,
    required String title,
    required int itemCount,
    required Widget Function(BuildContext context, int index,
            void Function(void Function()) setState)
        itemBuilder,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    Color? color,
  }) async {
    // return showDialogWithTitleGeneralFramework(title: title, children: children)
    return await showDialogBuilderWithTitleGeneralFramework<B>(
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      icons: icons,
      title: title,
      itemsBuilder: (context, setState) {
        return List.generate(itemCount, (index) {
          return itemBuilder(context, index, setState);
        }).toList();
      },
    );
  }

  /// UncompleteDocumentation
  Future<B?> showDialogGeneralFramework<B>({
    required Widget Function(
            BuildContext context, void Function(void Function()) setState)
        builder,
    bool isWithBlur = false,
    bool isCanShowSnackBar = false,
    ImageFilter? blurFilter,
    BlendMode blurBlendMode = BlendMode.srcOver,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    ShapeBorderBuilderGeneralFrameworkWidget? dialogShapeBuilder,
  }) async {
    return await DialogGeneralFramework.show<B>(
      context: this,
      isWithBlur: isWithBlur,
      isCanShowSnackBar: isCanShowSnackBar,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      dialogShapeBuilder: dialogShapeBuilder,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: builder,
    );
  }

  /// UncompleteDocumentation

  Future<T?> showDialogFloatingGeneralFramework<T>({
    required Widget Function(
            BuildContext context, void Function(void Function()) setState)
        builder,
    bool isWithBlur = true,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) async {
    return await showDialogGeneralFramework<T>(
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useSafeArea: false,
      useRootNavigator: false,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context, setState) {
        final Size sizeMax = Size(
            context.width,
            context.height -
                (context.mediaQueryData.padding.bottom +
                    context.mediaQueryData.padding.top));
        // print(size_max.height);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: context.mediaQueryData.padding.top,
            ),
            Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: sizeMax.height,
                  maxWidth: sizeMax.width,
                ),
                child: MediaQuery(
                  data: context.mediaQueryData.copyWith(
                    size: sizeMax,
                  ),
                  child: Builder(
                    builder: (context) {
                      return builder(context, setState);
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.mediaQueryData.padding.bottom,
            ),
          ],
        );
      },
      isWithBlur: isWithBlur,
    );
  }

  /// UncompleteDocumentation
  RelativeRect treePopUpMenuPositionGeneralFramework({
    PopupMenuPosition? popupMenuPosition,
    Offset popUpOffset = Offset.zero,
  }) {
    // BuildContext? ctx = key.currentContext;
    // if (ctx == null) {
    //   return;
    // }
    final RenderBox button = findRenderObject()! as RenderBox;
    final RenderBox overlay =
        Navigator.of(this).overlay!.context.findRenderObject()! as RenderBox;
    final PopupMenuThemeData popupMenuTheme = PopupMenuTheme.of(this);

    popupMenuPosition ??= popupMenuTheme.position ?? PopupMenuPosition.over;

    // Offset offset = Offset(
    //   0,
    //   button.size.height,
    // );
    late Offset offset;
    switch (popupMenuPosition) {
      case PopupMenuPosition.over:
        offset = popUpOffset;
      case PopupMenuPosition.under:
        offset = Offset(0.0, button.size.height) + popUpOffset;
    }

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(offset, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero) + offset,
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    return position;
  }

  /// UncompleteDocumentation

  Future<T?> showMenuGeneralFramework<T>({
    required List<PopupMenuEntry<T>> items,
    required RelativeRect? position,
    T? initialValue,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    String? semanticLabel,
    ShapeBorder? shape,
    Color? color,
    bool useRootNavigator = false,
    BoxConstraints? constraints,
    Clip clipBehavior = Clip.none,
    RouteSettings? routeSettings,
    AnimationStyle? popUpAnimationStyle,
  }) async {
    return await showMenu<T>(
      context: this,
      items: items,
      position: position ??
          treePopUpMenuPositionGeneralFramework(
            popupMenuPosition: PopupMenuPosition.under,
          ),
      initialValue: initialValue,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      semanticLabel: semanticLabel,
      shape: shape ??
          ShapeDecoration.fromBoxDecoration(
                  BoxDecoration(borderRadius: BorderRadius.circular(10)))
              .shape,
      color: color ?? theme.primaryColor,
      useRootNavigator: useRootNavigator,
      constraints: constraints,
      clipBehavior: clipBehavior,
      routeSettings: routeSettings,
      popUpAnimationStyle: popUpAnimationStyle ?? AnimationStyle.noAnimation,
    );
  }

  /// UncompleteDocumentation
  Future<T?> showModalBottomSheetGeneralFramework<T>({
    required Widget Function(BuildContext context) builder,
    Color? backgroundColor,
    String? barrierLabel,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = true,
    double? scrollControlDisabledMaxHeightRatio,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    AnimationStyle? sheetAnimationStyle,
  }) async {
    return await showModalBottomSheet<T>(
      context: this,
      builder: builder,
      // backgroundColor: theme.primaryColor.withAlpha(255 / 0.85),
      backgroundColor: theme.primaryColor.withValues(alpha: 0.85),
      barrierLabel: barrierLabel,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints ??
          BoxConstraints(
            minWidth: width,
            maxHeight: height -
                (mediaQueryData.padding.top + mediaQueryData.padding.bottom),
            maxWidth: width,
          ),
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      // scrollControlDisabledMaxHeightRatio: ,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle ?? true,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      sheetAnimationStyle: sheetAnimationStyle,
    );
  }
}
