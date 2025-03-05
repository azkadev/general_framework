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
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/rendering/render_skeletonizer.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/widgets/skeletonizer.dart';

/// Builds a [RenderSkeletonizerGeneralFramework]
class SkeletonizerGeneralFrameworkRenderObjectWidget
    extends SingleChildRenderObjectWidget {
  /// The default constructor
  const SkeletonizerGeneralFrameworkRenderObjectWidget({
    super.key,
    required super.child,
    required this.data,
  });

  /// The SkeletonizerGeneralFramework build data
  final SkeletonizerGeneralFrameworkBuildData data;

  @override
  RenderSkeletonizerGeneralFramework createRenderObject(BuildContext context) {
    if (data.isInsideZone) {
      final shouldRecreateShader =
          SkeletonizerGeneralFramework.of(context).config.effect !=
              data.config.effect;
      return ZonedRenderSkeletonizerGeneralFramework(
        animationValue: data.animationValue,
        brightness: data.brightness,
        textDirection: data.textDirection,
        config: data.config,
        ignorePointers: data.ignorePointers,
        isZone: data.isZone,
        shouldRecreateShader: shouldRecreateShader,
      );
    }
    return RenderSkeletonizerGeneralFramework(
      animationValue: data.animationValue,
      brightness: data.brightness,
      textDirection: data.textDirection,
      config: data.config,
      ignorePointers: data.ignorePointers,
      isZone: data.isZone,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderSkeletonizerGeneralFramework renderObject,
  ) {
    renderObject
      ..animationValue = data.animationValue
      ..brightness = data.brightness
      ..config = data.config
      ..ignorePointers = data.ignorePointers
      ..isZone = data.isZone
      ..textDirection = data.textDirection;
  }
}

/// Builds a [RenderSkeletonizerGeneralFramework]
class SliverSkeletonizerGeneralFrameworkRenderObjectWidget
    extends SingleChildRenderObjectWidget {
  /// The default constructor
  const SliverSkeletonizerGeneralFrameworkRenderObjectWidget({
    super.key,
    required super.child,
    required this.data,
  });

  /// The SkeletonizerGeneralFramework build data
  final SkeletonizerGeneralFrameworkBuildData data;

  @override
  RenderSliverSkeletonizerGeneralFramework createRenderObject(
      BuildContext context) {
    if (data.isInsideZone) {
      final shouldRecreateShader =
          SkeletonizerGeneralFramework.of(context).config.effect !=
              data.config.effect;
      return ZonedSliverRenderSkeletonizerGeneralFramework(
        animationValue: data.animationValue,
        brightness: data.brightness,
        textDirection: data.textDirection,
        config: data.config,
        ignorePointers: data.ignorePointers,
        isZone: data.isZone,
        shouldRecreateShader: shouldRecreateShader,
      );
    }

    return RenderSliverSkeletonizerGeneralFramework(
      animationValue: data.animationValue,
      brightness: data.brightness,
      textDirection: data.textDirection,
      config: data.config,
      ignorePointers: data.ignorePointers,
      isZone: data.isZone,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderSliverSkeletonizerGeneralFramework renderObject,
  ) {
    renderObject
      ..animationValue = data.animationValue
      ..brightness = data.brightness
      ..config = data.config
      ..ignorePointers = data.ignorePointers
      ..isZone = data.isZone
      ..textDirection = data.textDirection;
  }
}
