import 'package:flutter/material.dart';
import 'package:general_framework/flutter/flutter.dart';
import 'package:general_framework/flutter/image/image_core.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

/// UncompleteDocumentation
class AdsGeneralFrameworkControllers extends ChangeNotifier {
  /// UncompleteDocumentation
  final List<AdsContentAdsGeneralFramework> ads = [];

  /// UncompleteDocumentation
  AdsGeneralFrameworkControllers();

  /// UncompleteDocumentation
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

/// UncompleteDocumentation

class AdsContentAdsGeneralFramework {
  /// UncompleteDocumentation
  final dynamic media;

  /// UncompleteDocumentation
  final dynamic authorPhotoProfile;

  /// UncompleteDocumentation
  final String title;

  /// UncompleteDocumentation
  final String subtitle;

  /// UncompleteDocumentation
  final void Function(
      AdsContentAdsGeneralFramework adsContentAdsGeneralFramework) onPressed;

  /// UncompleteDocumentation
  const AdsContentAdsGeneralFramework({
    required this.media,
    required this.authorPhotoProfile,
    required this.title,
    required this.onPressed,
    required this.subtitle,
  });

  /// UncompleteDocumentation

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

/// UncompleteDocumentation
class AdsCarouselGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final EdgeInsets? margin;

  /// UncompleteDocumentation
  final double maxHeight;

  /// UncompleteDocumentation
  final double maxWidth;

  /// UncompleteDocumentation
  final List<AdsContentAdsGeneralFramework> ads;

  /// UncompleteDocumentation
  final void Function(
      AdsContentAdsGeneralFramework adsContentAdsGeneralFramework,
      bool value) onHighlightChanged;

  /// UncompleteDocumentation
  final void Function(
          AdsContentAdsGeneralFramework adsContentAdsGeneralFramework)
      onProfilePressed;

  /// UncompleteDocumentation
  final bool isLoading;

  /// UncompleteDocumentation
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
