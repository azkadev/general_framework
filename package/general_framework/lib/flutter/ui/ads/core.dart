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
