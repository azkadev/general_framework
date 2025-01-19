// ignore_for_file: empty_catches

import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'package:window_manager/window_manager.dart';

/// UncompleteDocumentationu
class AppBarGeneralFrameworkWidget extends StatelessWidget implements PreferredSizeWidget {
  /// UncompleteDocumentation
  final Size size;

  /// UncompleteDocumentation
  final Key? containerKey;

  /// UncompleteDocumentation
  final DecorationBuilderGeneralFrameworkWidget? decorationBuilder;

  /// UncompleteDocumentation
  final AlignmentGeometry? alignment;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? margin;

  /// UncompleteDocumentation
  final bool isAddPaddingTop;

  /// UncompleteDocumentation
  final Clip clipBehavior;

  /// UncompleteDocumentation
  final Iterable<Widget> Function(BuildContext context) builder;

  /// UncompleteDocumentation
  final Widget Function(BuildContext context, Widget child)? widgetBuilder;

  /// UncompleteDocumentation
  const AppBarGeneralFrameworkWidget({
    super.key,
    this.containerKey,
    this.isAddPaddingTop = true,
    required this.size,
    required this.builder,
    this.widgetBuilder,
    this.decorationBuilder,
    this.alignment,
    this.padding,
    this.margin,
    this.clipBehavior = Clip.none,
  });

  @override
  Size get preferredSize => size;

  @override
  Widget build(BuildContext context) {
    final Decoration decoration = (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
      context,
      BoxDecoration(
        color: context.theme.appBarTheme.backgroundColor,
      ),
    );
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        key: containerKey,
        padding: padding,
        alignment: alignment,
        margin: margin,
        // margin: () {
        //   final margin = (this.margin ?? const EdgeInsets.only());
        //   return EdgeInsets.only(
        //     top: (margin.vertical / 2),
        //     left: margin.horizontal / 2,
        //     right: margin.horizontal / 2,
        //     bottom: margin.vertical / 2,
        //   );
        // }(),
        clipBehavior: clipBehavior,
        decoration: (decorationBuilder ?? decorationBuilderGeneralFrameworkWidgetDefault).call(
          context,
          BoxDecoration(
            color: context.theme.appBarTheme.backgroundColor,
          ),
        ),
        child: () {
          final child = contentWidget(
            context: context,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isAddPaddingTop) ...[
                  SizedBox(
                    height: context.mediaQueryData.padding.top,
                  ),
                ],
                for (final element in builder(context)) ...[
                  if (element is AppBar) ...[
                    MediaQuery.removePadding(
                      context: context,
                      removeBottom: true,
                      removeLeft: true,
                      removeRight: true,
                      removeTop: true,
                      child: element,
                    ),
                  ] else ...[
                    element,
                  ],
                ],
              ],
            ),
          );

          if (decoration is BoxDecoration) {
            return ClipRRect(
              borderRadius: decoration.borderRadius ?? BorderRadius.zero,
              child: child,
            );
          }
          return child;
        }(),
      ),
    );
  }

  /// UncompleteDocumentation
  Widget contentWidget({
    required BuildContext context,
    required Widget child,
  }) {
    final widgetBuilder = this.widgetBuilder;
    if (widgetBuilder != null) {
      return widgetBuilder(context, child);
    }
    return child;
  }

  ///
  static AppBarGeneralFrameworkWidget create({
    Key? key,
    required Widget? Function(BuildContext context, Widget? child) leadingBuilder,
    required BuildContext context,
    required String title,
    DecorationBuilderGeneralFrameworkWidget? decorationBuilder,
    required GeneralLibFlutterStatefulWidget pageState,
    bool isAddChangeTheme = true,
    bool isHideAppBarContent = false,
    required bool isShowApplicationIconAndtitle,
    required bool isApplicationFullScreen,
    required String applicationTitle,
    required dynamic applicationIcon,
    Widget? backIcon,
    required GeneralLibFlutterApp generalLibFlutterApp,
    required Iterable<Widget> Function(BuildContext context, GeneralLibFlutterStatefulWidget pageState) actions,
    required Iterable<Widget> Function(BuildContext context, GeneralLibFlutterStatefulWidget pageState) builder,
    required Widget Function(BuildContext context, Widget appBar) appBarBuilder,
  }) {
    return AppBarGeneralFrameworkWidget.raw(
      key: key,
      context: context,
      isShowApplicationIconAndtitle: isShowApplicationIconAndtitle,
      decorationBuilder: decorationBuilder,
      pageState: pageState,
      isApplicationFullScreen: isApplicationFullScreen,
      applicationIcon: applicationIcon,
      applicationTitle: applicationTitle,
      generalLibFlutterApp: generalLibFlutterApp,
      builder: (context, GeneralLibFlutterStatefulWidget pageState) sync* {
        if (isHideAppBarContent == false) {
          yield appBarBuilder(
            context,
            MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              removeLeft: true,
              removeRight: true,
              removeTop: true,
              child: AppBar(
                centerTitle: true,
                leading: () {
                  return leadingBuilder(context, () {
                    if (context.navigator().canPop()) {
                      return backButtonWidget(
                        context: context,
                        generalLibFlutterStatefulWidget: pageState,
                        backIcon: backIcon ?? const Icon(Icons.arrow_back),
                        onPressed: () {
                          context.navigator().pop();
                        },
                      );
                    }
                    return null;
                  }());
                }(),
                title: SkeletonizerGeneralFramework(
                  enabled: pageState.isLoading,
                  child: Text(
                    title,
                    style: context.theme.textTheme.titleLarge,
                  ),
                ),
                actions: [
                  if (isAddChangeTheme) ...[
                    SkeletonizerGeneralFramework(
                      enabled: pageState.isLoading,
                      child: AppBarGeneralFrameworkWidget.themeChangeWidget(
                        generalLibFlutterApp: generalLibFlutterApp,
                      ),
                    ),
                  ],
                  for (final element in actions(context, pageState)) ...[
                    element,
                  ]
                ],
              ),
            ),
          );
        }
        yield* builder(context, pageState);
        return;
      },
    );
  }

  ///
  static AppBarGeneralFrameworkWidget raw({
    Key? key,
    required BuildContext context,
    final DecorationBuilderGeneralFrameworkWidget? decorationBuilder,
    required GeneralLibFlutterStatefulWidget pageState,
    required GeneralLibFlutterApp generalLibFlutterApp,
    required bool isApplicationFullScreen,
    required bool isShowApplicationIconAndtitle,
    required dynamic applicationIcon,
    required String applicationTitle,
    required Iterable<Widget> Function(BuildContext context, GeneralLibFlutterStatefulWidget pageState) builder,
  }) {
    return AppBarGeneralFrameworkWidget(
      key: key,
      size: Size(context.width, context.height),
      decorationBuilder: decorationBuilder ?? decorationDefaultFunction,
      builder: (context) sync* {
        if (Dart.isDesktop && Dart.isWeb == false && isApplicationFullScreen == false) {
          yield Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isShowApplicationIconAndtitle) ...[
                () {
                  final Widget child = ProfilePictureGeneralFrameworkWidget(
                    pathImage: applicationIcon,
                    width: 25,
                    height: 25,
                    borderRadius: BorderRadius.circular(10),
                    margin: const EdgeInsets.all(5),
                    onPressed: null,
                  );
                  if (context.orientation.isPortrait) {
                    return Flexible(
                      child: child,
                    );
                  }
                  return Row(
                    children: [
                      child,
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          applicationTitle,
                          style: context.theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  );
                }(),
              ] else ...[
                const SizedBox(),
              ],
              Flexible(
                child: AppBarGeneralFrameworkWidget.actionWindowWidget(
                  context: context,
                  generalLibFlutterApp: generalLibFlutterApp,
                ),
              ),
            ],
          );
        }
        yield* builder(
          context,
          pageState,
        );
        return;
      },
    );
  }

  ///
  static Widget backButtonWidget({required void Function()? onPressed, required BuildContext context, required GeneralLibFlutterStatefulWidget generalLibFlutterStatefulWidget, required Widget backIcon}) {
    return SkeletonizerGeneralFramework(
      enabled: generalLibFlutterStatefulWidget.isLoading,
      child: IconButton(
        onPressed: onPressed,
        icon: backIcon,
      ),
    );
  }

  ///
  static Decoration decorationDefaultFunction(BuildContext context, BoxDecoration decoration) {
    return decoration.copyWith(
      borderRadius: const BorderRadiusDirectional.only(
        bottomEnd: Radius.circular(20),
        bottomStart: Radius.circular(20),
      ),
      border: Border(
        bottom: BorderSide(
          color: context.theme.indicatorColor,
        ),
      ),
      boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
    );
  }

  ///
  static Brightness platformBrightness({
    required BuildContext context,
    required GeneralLibFlutterApp generalLibFlutterApp,
  }) {
    if (generalLibFlutterApp.themeMode == ThemeMode.dark) {
      return Brightness.dark;
    }
    if (generalLibFlutterApp.themeMode == ThemeMode.light) {
      return Brightness.light;
    }
    return context.mediaQueryData.platformBrightness;
  }

  ///
  static Widget themeChangeWidget({
    required GeneralLibFlutterApp generalLibFlutterApp,
  }) {
    return ThemeChangeGeneralFrameworkWidget(
      themeChangeGeneralFrameworkWidgetStyle: ThemeChangeGeneralFrameworkWidgetStyle.minimalist,
      generalLibFlutterApp: generalLibFlutterApp,
      onChanged: () {},
    );
  }

  ///
  static Widget actionWindowWidget({
    required BuildContext context,
    required GeneralLibFlutterApp generalLibFlutterApp,
  }) {
    if (Dart.isDesktop == false) {
      return const SizedBox.shrink();
    }
    final children = [
      // WindowCaptionButton.minimize(
      //   brightness: platformBrightness(context: context, generalLibFlutterApp: generalLibFlutterApp),
      //   onPressed: () async {
      //     try {
      //       await windowManager.setAlwaysOnBottom(false);
      //       await windowManager.setFullScreen(false);
      //       // bool isMinimized = await windowManager.();
      //       // if (isMinimized) {
      //       //   await windowManager.restore();
      //       // } else {
      //       //   await windowManager.minimize();
      //       // }
      //     } catch (e) {}
      //   },
      // ),
      WindowCaptionButton.minimize(
        brightness: platformBrightness(context: context, generalLibFlutterApp: generalLibFlutterApp),
        onPressed: () async {
          try {
            bool isMinimized = await windowManager.isMinimized();
            if (isMinimized) {
              await windowManager.restore();
            } else {
              await windowManager.minimize();
            }
          } catch (e) {}
        },
      ),
      FutureBuilder<bool>(
        future: () async {
          try {
            return windowManager.isMaximized();
          } catch (e) {
            return false;
          }
        }(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.data == true) {
            return WindowCaptionButton.unmaximize(
              brightness: platformBrightness(context: context, generalLibFlutterApp: generalLibFlutterApp),
              onPressed: () async {
                try {
                  await windowManager.unmaximize();
                } catch (e) {}
              },
            );
          }
          return WindowCaptionButton.maximize(
            brightness: platformBrightness(context: context, generalLibFlutterApp: generalLibFlutterApp),
            onPressed: () async {
              try {
                await windowManager.maximize();
              } catch (e) {}
            },
          );
        },
      ),
      WindowCaptionButton.close(
        brightness: platformBrightness(context: context, generalLibFlutterApp: generalLibFlutterApp),
        onPressed: () async {
          context.theme;
          try {
            await windowManager.close();
          } catch (e) {}
        },
      ),
    ];
    if (context.orientation.isPortrait) {
      if (context.width < 300) {
        return PopupMenuButton(
          itemBuilder: (context) {
            return children.map((e) {
              return PopupMenuItem(
                child: e,
              );
            }).toList();
          },
        );
      }
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }
}
