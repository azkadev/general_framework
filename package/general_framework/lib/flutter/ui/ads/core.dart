import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/image/image_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class AdsGeneralFrameworkControllers extends ChangeNotifier {
  final List<AdsContentAdsGeneralFramework> ads = [];

  AdsGeneralFrameworkControllers();
  void update({
    required List<AdsContentAdsGeneralFramework> ads,
  }) {
    this.ads.clear();
    notifyListeners();
    for (final element in ads) {
      this.ads.add(element);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    ads.clear();
    super.dispose();
  }
}

class AdsContentAdsGeneralFramework {
  final dynamic media;
  final dynamic authorPhotoProfile;
  final String title;
  final String subtitle;
  final void Function(
      AdsContentAdsGeneralFramework adsContentAdsGeneralFramework) onPressed;
  const AdsContentAdsGeneralFramework({
    required this.media,
    required this.authorPhotoProfile,
    required this.title,
    required this.onPressed,
    required this.subtitle,
  });

  static Widget carouselWidget({
    required BuildContext context,
    EdgeInsets? margin,
    required double? maxHeight,
    double? maxWidth,
    required List<AdsContentAdsGeneralFramework> ads,
    required void Function(
            AdsContentAdsGeneralFramework adsContentAdsGeneralFramework,
            bool value)
        onHighlightChanged,
    required void Function(
            AdsContentAdsGeneralFramework adsContentAdsGeneralFramework)
        onProfilePressed,
    required bool isLoading,
  }) {
    return AdsCarouselGeneralFrameworkWidget(
      ads: ads,
      margin: margin,
      maxHeight: maxHeight ?? context.height / 3.5,
      isLoading: isLoading,
      maxWidth: maxWidth ?? context.width,
      onHighlightChanged: onHighlightChanged,
      onProfilePressed: onProfilePressed,
    );
  }
}

class AdsCarouselGeneralFrameworkWidget extends StatelessWidget {
  final EdgeInsets? margin;
  final double maxHeight;
  final double maxWidth;
  final List<AdsContentAdsGeneralFramework> ads;
  final void Function(
      AdsContentAdsGeneralFramework adsContentAdsGeneralFramework,
      bool value) onHighlightChanged;
  final void Function(
          AdsContentAdsGeneralFramework adsContentAdsGeneralFramework)
      onProfilePressed;
  final bool isLoading;
  const AdsCarouselGeneralFrameworkWidget({
    super.key,
    required this.ads,
    required this.margin,
    required this.maxHeight,
    required this.isLoading,
    required this.maxWidth,
    required this.onHighlightChanged,
    required this.onProfilePressed,
  });

  @override
  Widget build(BuildContext context) {
    if (ads.isEmpty) {
      return const SizedBox.shrink();
    }
    return CarouselGeneralFrameworkView(
      constraints: BoxConstraints(
        minHeight: 0,
        maxHeight: maxHeight,
        minWidth: maxWidth,
        maxWidth: maxWidth,
      ),
      padding: margin ?? const EdgeInsets.all(5),
      onBuilder: (ctx) {
        final sizeProcces = context.extensionGeneralLibFlutterSizePhotoSmall();
        return ads
            .map((AdsContentAdsGeneralFramework adsContentAdsGeneralFramework) {
          final child = MaterialButton(
            onPressed: () {
              adsContentAdsGeneralFramework
                  .onPressed(adsContentAdsGeneralFramework);
            },
            onHighlightChanged: (value) {
              onHighlightChanged(adsContentAdsGeneralFramework, value);
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: context.extensionGeneralLibFlutterBorderAll(),
                      boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
                      image: ImageGeneralUiGeneralFramework.decorationImage(
                        pathImage: adsContentAdsGeneralFramework.media,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(),
                  leading: ProfilePictureGeneralFrameworkWidget(
                    pathImage: adsContentAdsGeneralFramework.authorPhotoProfile,
                    width: sizeProcces.width,
                    borderRadius: BorderRadius.circular(20),
                    height: sizeProcces.height,
                    nick_name: "",
                    isWithBorder: true,
                    isUseShadow: true,
                    onPressed: () {
                      onProfilePressed(adsContentAdsGeneralFramework);
                    },
                  ),
                  title: Text(
                    adsContentAdsGeneralFramework.title,
                    style: context.theme.textTheme.titleSmall,
                  ),
                  subtitle: Text(
                    adsContentAdsGeneralFramework.subtitle,
                    style: context.theme.textTheme.bodySmall,
                  ),
                  trailing: PopupMenuButton(
                    iconColor: context.theme.indicatorColor,
                    position: PopupMenuPosition.under,
                    color: context.theme.primaryColor,
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(
                          child: Text("Lapor"),
                        ),
                      ];
                    },
                  ),
                ),
              ],
            ),
          );

          if (isLoading) {
            return SkeletonizerGeneralFramework(
                enabled: isLoading, child: child);
          }
          return child;
        }).toList();
      },
    );
  }
}
