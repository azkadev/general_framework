// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:app_ui_template_general_framework/landing/about/about.dart';
import 'package:app_ui_template_general_framework/landing/home/home.dart';
import 'package:app_ui_template_general_framework/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:general_framework/flutter/widget/widget.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class CrossFadeStateController extends ChangeNotifier {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  void autoChange() {
    change(isShowSecond: crossFadeState == CrossFadeState.showFirst);
  }

  void change({
    required bool isShowSecond,
  }) {
    if (isShowSecond) {
      crossFadeState = CrossFadeState.showSecond;
    } else {
      crossFadeState = CrossFadeState.showFirst;
    }
    notifyListeners();
  }
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollController = ScrollController();
  final GlobalKey home_global_key = GlobalKey();
  final GlobalKey about_global_key = GlobalKey();
  final GlobalKey blog_global_key = GlobalKey();
  final GlobalKey documentation_global_key = GlobalKey();
  final GlobalKey contact_global_key = GlobalKey();
  final GlobalKey pricing_global_key = GlobalKey();
  final GlobalKey privacy_global_key = GlobalKey();
  final GlobalKey terms_global_key = GlobalKey();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollListener(scrollController: scrollController);
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  final CrossFadeStateController crossFadeStateData = CrossFadeStateController();
  void scrollListener({
    required ScrollController scrollController,
  }) {
    scrollController.onScrolling((isScrolling) {
      Future.delayed(Durations.short1, () async {
        try {
          crossFadeStateData.change(isShowSecond: isScrolling);
        } catch (e) {}
      });
    });
  }

  final CrossFadeStateController crossFadeStatusBar = CrossFadeStateController();
  final GlobalKey status_bar_global_key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(450),
        child: ListenableBuilder(
          listenable: crossFadeStateData,
          builder: (context, child) {
            return AnimatedCrossFade(
              crossFadeState: crossFadeStateData.crossFadeState,
              secondChild: const SizedBox.shrink(),
              duration: Durations.short4,
              firstChild: Container(
                key: status_bar_global_key,
                margin: const EdgeInsets.only(
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.shadowColor,
                      blurRadius: 1.5,
                      spreadRadius: 1.5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: context.mediaQueryData.padding.top,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text(
                              "App Ui Template General Framework",
                              style: context.theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        if (context.orientation.isPortrait) ...[
                          Row(
                            children: [
                              ThemeChangeGeneralFrameworkWidget(
                                generalLibFlutterApp: AppUiTemplateGeneralFrameworkMain.generalLibFlutterApp,
                                onChanged: () {
                                  setState(() {});
                                },
                              ),
                              IconButton(
                                onPressed: () {
                                  crossFadeStatusBar.autoChange();
                                },
                                icon: const RotatedBox(
                                  quarterTurns: 3,
                                  child: Icon(
                                    Icons.more_horiz_outlined,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ] else ...[
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: statusBarWidget(
                                        context: context,
                                        onPressed: () {
                                          crossFadeStatusBar.autoChange();
                                        },
                                      ).map((e) {
                                        return Align(
                                          alignment: Alignment.center,
                                          child: e,
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.5),
                                  child: ThemeChangeGeneralFrameworkWidget(
                                    generalLibFlutterApp: AppUiTemplateGeneralFrameworkMain.generalLibFlutterApp,
                                    onChanged: () {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                    if (context.orientation.isPortrait) ...[
                      Flexible(
                        child: SizedBox(
                          width: context.width,
                          child: SingleChildScrollView(
                            child: ListenableBuilder(
                              listenable: crossFadeStatusBar,
                              builder: (context, child) {
                                return AnimatedCrossFade(
                                  crossFadeState: crossFadeStatusBar.crossFadeState,
                                  firstChild: const SizedBox.shrink(),
                                  duration: Durations.short4,
                                  secondChild: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: statusBarWidget(
                                      context: context,
                                      onPressed: () {
                                        crossFadeStatusBar.autoChange();
                                      },
                                    ).map((e) {
                                      return Align(
                                        alignment: Alignment.center,
                                        child: e,
                                      );
                                    }).toList(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height,
            minWidth: context.width,
          ),
          child: Column(
            children: [
              contentWidget(
                globalKey: home_global_key,
                context: context,
                contentBuilder: (context) {
                  return const HomeContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: about_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: blog_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: contact_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: documentation_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: pricing_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: privacy_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              contentWidget(
                globalKey: terms_global_key,
                context: context,
                contentBuilder: (context) {
                  return const AboutContentLandingPageWidget();
                },
              ),
              footerWidget(context: context),
              SizedBox(
                height: context.mediaQueryData.padding.bottom,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> statusBarWidget({
    required BuildContext context,
    required void Function() onPressed,
  }) {
    return [
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: home_global_key);
          },
          child: Text(
            "Home",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: about_global_key);
          },
          child: Text(
            "About",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: blog_global_key);
          },
          child: Text(
            "Blog",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: documentation_global_key);
          },
          child: Text(
            "Documentation",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: contact_global_key);
          },
          child: Text(
            "Contact",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: pricing_global_key);
          },
          child: Text(
            "Pricing",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: privacy_global_key);
          },
          child: Text(
            "Privacy",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.5),
        child: TextButton(
          onPressed: () {
            onPressed();
            scrollController.scrollToGlobalKey(globalKey: terms_global_key);
          },
          child: Text(
            "Terms",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ),
      MaterialButton(
        onPressed: () {
          onPressed();
          context.routerGeneralLibFlutter().pushNamed(routeName: "/sign");
        },
        child: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 15,
            child: Icon(
              Icons.person,
              size: 15,
            ),
          ),
        ),
      ),
    ];
  }

  Widget contentWidget({
    required GlobalKey globalKey,
    required BuildContext context,
    required WidgetBuilder contentBuilder,
  }) {
    final Size size = Size(context.width, context.height);
    // final Size size = Size(context.width, context.height - (status_bar_global_key.sizeRenderBox().height + context.mediaQueryData.padding.bottom));
    return ConstrainedBox(
      key: globalKey,
      constraints: BoxConstraints(
        minHeight: size.height,
        minWidth: size.width,
        maxHeight: size.height,
        maxWidth: size.width,
      ),
      child: MediaQuery(
        data: context.mediaQueryData.copyWith(size: size),
        child: Builder(
          builder: contentBuilder,
        ),
      ),
    );
  }

  Widget footerWidget({
    required BuildContext context,
  }) {

    return Container(
      width: context.width,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: context.theme.dialogBackgroundColor,
        // color: (AppUiTemplateGeneralFrameworkMain.generalLibFlutterApp.themeMode == ThemeMode.dark) ?context.theme.primaryColor:context.theme.primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: context.theme.shadowColor,
            blurRadius: 1.5,
            spreadRadius: 1.5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("sa"),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
