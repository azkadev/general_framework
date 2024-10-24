import 'package:flutter/material.dart';
import 'package:general_framework/flutter/widget/menu_container.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

extension BuildContextGeneralFrameworkFlutterExtension on BuildContext {
  Future<B?> showDialogBuilderWithTitleGeneralFramework<B>({
    required IconData icons,
    required String title,
    required List<Widget> Function(BuildContext context, void Function(void Function()) setState) itemsBuilder,
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
    return await showDialogGeneralFramework<B>(
      barrierDismissible: barrierDismissible,
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
                          offset: const Offset(0, 3), // changes position of shadow
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

  Future<B?> showDialogBuildersWithTitleGeneralFramework<B>({
    required IconData icons,
    required String title,
    required int itemCount,
    required Widget Function(BuildContext context, int index, void Function(void Function()) setState) itemBuilder,
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

  Future<B?> showDialogGeneralFramework<B>({
    required Widget Function(BuildContext context, void Function(void Function()) setState) builder,
    // required List<Widget> children,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = false,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) async {
    // StatefulWidget();
    return await this.showDialog<B>(
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: StatefulBuilder(
            builder: (context, setState) {
              return builder(context, setState);
            },
          ),
        );
      },
    );
  }

  Future<T?> showDialogFloatingGeneralFramework<T>({
    required Widget Function(BuildContext context, void Function(void Function()) setState) builder,
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
        final Size size_max = Size(context.width, context.height - (context.mediaQueryData.padding.bottom + context.mediaQueryData.padding.top));
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
                  maxHeight: size_max.height,
                  maxWidth: size_max.width,
                ),
                child: MediaQuery(
                  data: context.mediaQueryData.copyWith(
                    size: size_max,
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
    );
  }

  RelativeRect treePopUpMenuPositionGeneralFramework({
    PopupMenuPosition? popupMenuPosition,
    Offset popUpOffset = Offset.zero,
  }) {
    // BuildContext? ctx = key.currentContext;
    // if (ctx == null) {
    //   return;
    // }
    final RenderBox button = findRenderObject()! as RenderBox;
    final RenderBox overlay = Navigator.of(this).overlay!.context.findRenderObject()! as RenderBox;
    final PopupMenuThemeData popupMenuTheme = PopupMenuTheme.of(this);

    final PopupMenuPosition popup_menu_position = popupMenuPosition ?? popupMenuTheme.position ?? PopupMenuPosition.over;

    // Offset offset = Offset(
    //   0,
    //   button.size.height,
    // );
    late Offset offset;
    switch (popup_menu_position) {
      case PopupMenuPosition.over:
        offset = popUpOffset;
      case PopupMenuPosition.under:
        offset = Offset(0.0, button.size.height) + popUpOffset;
    }

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(offset, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero) + offset, ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    return position;
  }

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
      shape: shape ?? ShapeDecoration.fromBoxDecoration(BoxDecoration(borderRadius: BorderRadius.circular(10))).shape,
      color: color ?? theme.primaryColor,
      useRootNavigator: useRootNavigator,
      constraints: constraints,
      clipBehavior: clipBehavior,
      routeSettings: routeSettings,
      popUpAnimationStyle: popUpAnimationStyle ?? AnimationStyle.noAnimation,
    );
  }

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
      backgroundColor: theme.primaryColor.withOpacity(0.85),
      barrierLabel: barrierLabel,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints ??
          BoxConstraints(
            minWidth: width,
            maxHeight: height - (mediaQueryData.padding.top + mediaQueryData.padding.bottom),
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
