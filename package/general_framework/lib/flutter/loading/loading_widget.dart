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
import 'package:general_lib_flutter/extension/build_context.dart';
import 'loading_controller.dart';
import 'loading_core.dart';

/// UncompleteDocumentation
class LoadingGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final LoadingGeneralFrameworkController loadingGeneralFrameworkController;

  /// UncompleteDocumentation
  final LoadingGeneralFrameworkType loadingGeneralFrameworkType;

  /// UncompleteDocumentation
  const LoadingGeneralFrameworkWidget({
    super.key,
    required this.loadingGeneralFrameworkController,
    required this.loadingGeneralFrameworkType,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: loadingGeneralFrameworkController,
      builder: (context, childOrNull) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            () {
              final Widget child = CircularProgressIndicator(
                color: context.theme.indicatorColor,
              );

              if ([
                LoadingGeneralFrameworkType.page,
                LoadingGeneralFrameworkType.widget
              ].contains(loadingGeneralFrameworkType)) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: child,
                );
              }
              return Container(
                decoration: BoxDecoration(
                  // color: context.theme.primaryColor.withAlpha(255 / 0.85),
                  color: context.theme.primaryColor.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: context.theme.indicatorColor,
                    width: 0.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.shadowColor.withAlpha(110),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: child,
              );
            }(),
            () {
              final Widget child = Text(
                loadingGeneralFrameworkController.loadingText.trim(),
                style: TextStyle(
                  color: context.theme.indicatorColor,
                  fontSize: 12,
                ),
              );
              if ([
                LoadingGeneralFrameworkType.page,
                LoadingGeneralFrameworkType.widget
              ].contains(loadingGeneralFrameworkType)) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: child,
                );
              }
              return Container(
                decoration: BoxDecoration(
                  // color: context.theme.primaryColor.withAlpha(255 / 0.85),
                  color: context.theme.primaryColor.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: context.theme.indicatorColor,
                    width: 0.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.shadowColor.withAlpha(110),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        0,
                        3,
                      ),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: child,
              );
            }(),
          ],
        );
      },
    );
  }
}
