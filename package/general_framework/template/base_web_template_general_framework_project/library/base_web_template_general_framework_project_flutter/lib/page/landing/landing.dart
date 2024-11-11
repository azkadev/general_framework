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

import 'package:base_web_template_general_framework_project_flutter/client/core.dart';
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class LandingPage
    extends BaseWebTemplateGeneralFrameworkProjectClientFlutterAppStatefulWidget {
  const LandingPage({super.key, required super.generalFrameworkClientFlutter});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with GeneralLibFlutterStatefulWidget {
  final ScrollControllerAutoKeepStateData scrollControllerAutoKeepStateData =
      ScrollControllerAutoKeepStateData(
    keyId: "home_page",
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      refresh();
    });
  }

  @override
  Future<void> refresh() async {
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    await Future(() async {
      //
    });
    setState(() {
      isLoading = false;
    });
  }

  double getActualHeight() {
    return context.height - appBarGlobalKey.sizeRenderBox().height;
  }

  bool isShowMenuTopBar = false;
  List<Widget> contentTopBarChildren({
    required BuildContext context,
  }) {
    final isLandscape = context.orientation.isLandscape;
    return [
      if (isLandscape == false) ...[
        SizedBox(
          height: context.mediaQueryData.padding.top,
        ),
      ],
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.home,
        text: "Home",
        onPressed: () {},
      ),
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.book,
        text: "About",
        onPressed: () {},
      ),
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.browse_gallery_rounded,
        text: "Blog",
        onPressed: () {},
      ),
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.document_scanner,
        text: "Documentation",
        onPressed: () {},
      ),
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.price_change,
        text: "Pricing",
        onPressed: () {},
      ),
      contentTopBarWidget(
        context: context,
        isLoading: isLoading,
        isLandscape: isLandscape,
        iconData: Icons.security,
        text: "Policy",
        onPressed: () {},
      ),
      SkeletonizerGeneralFramework(
        enabled: isLoading,
        child: ThemeChangeGeneralFrameworkWidget(
          themeChangeGeneralFrameworkWidgetStyle: (isLandscape)
              ? ThemeChangeGeneralFrameworkWidgetStyle.minimalist
              : ThemeChangeGeneralFrameworkWidgetStyle.listTile,
          generalLibFlutterApp: widget.generalFrameworkClientFlutter
              .generalLibFlutterAppFunction(),
          onChanged: () {},
        ),
      ),
      if (isLandscape == false) ...[
        SizedBox(
          height: context.mediaQueryData.padding.bottom,
        ),
      ],
    ];
  }

  Widget contentTopBarWidget({
    required BuildContext context,
    required bool isLoading,
    required String text,
    required bool isLandscape,
    required IconData iconData,
    required void Function()? onPressed,
  }) {
    return SkeletonizerGeneralFramework(
      enabled: isLoading,
      child: () {
        final child = Text(
          text,
          style:
              (context.theme.textTheme.bodySmall ?? const TextStyle()).copyWith(
            color: context.theme.indicatorColor,
          ),
        );
        if (isLandscape) {
          return TextButton(onPressed: onPressed, child: child);
        }
        return MaterialButton(
          onPressed: onPressed,
          minWidth: context.width,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    iconData,
                    color: context.theme.indicatorColor,
                  ),
                ),
                child,
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.navigate_next,
                    color: context.theme.indicatorColor,
                  ),
                ),
              ],
            ),
          ),
        );
      }(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final actualHeight = getActualHeight();

    final mediaQueryData = context.mediaQueryData.copyWith(
      size: Size(context.width, actualHeight),
    );
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      appBar: () {
        final AppBar child = AppBar(
          key: appBarGlobalKey,
          centerTitle: true,
          title: Text(
            "Home",
            style: context.theme.textTheme.titleLarge,
          ),
          backgroundColor: context.theme.primaryColor,
          actions: [
            if (context.orientation.isLandscape) ...[
              ...contentTopBarChildren(context: context),
            ] else ...[
              SkeletonizerGeneralFramework(
                enabled: isLoading,
                // child: ThemeChangeGeneralFrameworkWidget(
                //   themeChangeGeneralFrameworkWidgetStyle: ThemeChangeGeneralFrameworkWidgetStyle.minimalist,
                //   generalLibFlutterApp: widget.generalFrameworkClientFlutter.generalLibFlutterAppFunction(),
                //   onChanged: () {},
                // ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isShowMenuTopBar = !isShowMenuTopBar;
                    });
                  },
                  icon: Icon(
                    Icons.menu,
                    color: context.theme.indicatorColor,
                  ),
                ),
              ),
            ],
            ProfilePictureGeneralFrameworkWidget(
              pathImage: "",
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              isWithBorder: true,
              isLoading: isLoading,
              width: 30,
              height: 30,
              onPressed: () {},
            ),
          ],
        );
        if (isShowMenuTopBar == false || context.orientation.isLandscape) {
          return child;
        }
        return PreferredSize(
          preferredSize: Size.fromHeight(context.height),
          child: Container(
            decoration: BoxDecoration(
              color: context.theme.primaryColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                child,
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: contentTopBarChildren(
                        context: context,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }(),
      body: scrollControllerAutoKeepStateData.builderWidget(
        builder: (ctx, pageStorageBucket) {
          return SingleChildScrollView(
            controller: scrollControllerAutoKeepStateData.scroll_controller,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: actualHeight,
                minWidth: context.width,
                maxWidth: context.width,
              ),
              child: Column(
                children: [
                  MediaQuerGeneralFrameworkWidget(
                    mediaQueryData: mediaQueryData,
                    builder: (context) {
                      return Column(
                        children: [
                          Text(
                            "Website Name",
                            style: (context.theme.textTheme.titleLarge ??
                                    const TextStyle())
                                .copyWith(
                              fontSize: 70,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
