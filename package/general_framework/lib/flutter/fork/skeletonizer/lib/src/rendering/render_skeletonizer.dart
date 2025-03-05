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

import 'package:flutter/rendering.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/skeletonizer.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/painting/skeletonizer_painting_context.dart';

/// Builds a renderer object that overrides the painting operation
/// and provides a [SkeletonizerGeneralFrameworkPaintingContext] to paint the skeleton effect
class RenderSkeletonizerGeneralFramework extends RenderProxyBox
    with _RenderSkeletonBase<RenderBox> {
  /// Default constructor
  RenderSkeletonizerGeneralFramework({
    required TextDirection textDirection,
    required double animationValue,
    required Brightness brightness,
    required SkeletonizerGeneralFrameworkConfigData config,
    required bool ignorePointers,
    required bool isZone,
    RenderBox? child,
  })  : _animationValue = animationValue,
        _textDirection = textDirection,
        _brightness = brightness,
        _config = config,
        _isZone = isZone,
        _ignorePointers = ignorePointers,
        super(child);

  TextDirection _textDirection;

  @override
  TextDirection get textDirection => _textDirection;

  set textDirection(TextDirection value) {
    if (_textDirection != value) {
      _textDirection = value;
      markNeedsPaint();
    }
  }

  SkeletonizerGeneralFrameworkConfigData _config;

  @override
  SkeletonizerGeneralFrameworkConfigData get config => _config;

  set config(SkeletonizerGeneralFrameworkConfigData value) {
    if (_config != value) {
      _config = value;
      markNeedsPaint();
    }
  }

  Brightness _brightness;

  @override
  Brightness get brightness => _brightness;

  set brightness(Brightness value) {
    if (_brightness != value) {
      _brightness = value;
      markNeedsPaint();
    }
  }

  bool _ignorePointers;

  set ignorePointers(bool value) {
    if (_ignorePointers != value) {
      _ignorePointers = value;
      markNeedsPaint();
    }
  }

  bool _isZone;

  set isZone(bool value) {
    if (_isZone != value) {
      _isZone = value;
      markNeedsPaint();
    }
  }

  @override
  bool get isZone => _isZone;

  double _animationValue = 0;

  @override
  double get animationValue => _animationValue;

  set animationValue(double value) {
    if (_animationValue != value) {
      _animationValue = value;
      markNeedsPaint();
    }
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    if (_ignorePointers) return false;
    return super.hitTest(result, position: position);
  }
}

/// Creates a Zoned version of [RenderSkeletonizerGeneralFramework] that only shades [Bone] widgets or descendants SkeletonizerGeneralFramework widgets
class ZonedRenderSkeletonizerGeneralFramework
    extends RenderSkeletonizerGeneralFramework
    with _ZonedRenderSkeletonBase<RenderBox> {
  /// Default constructor
  ZonedRenderSkeletonizerGeneralFramework({
    required super.textDirection,
    required super.animationValue,
    required super.brightness,
    required super.config,
    required super.ignorePointers,
    required super.isZone,
    required this.shouldRecreateShader,
  });

  /// Whether the shader paint should be recreated for the sub SkeletonizerGeneralFramework widget
  @override
  final bool shouldRecreateShader;
}

/// Builds a sliver renderer object that overrides the painting operation
/// and provides a [SkeletonizerGeneralFrameworkPaintingContext] to paint the skeleton effect
class RenderSliverSkeletonizerGeneralFramework extends RenderProxySliver
    with _RenderSkeletonBase<RenderSliver> {
  /// Default constructor
  RenderSliverSkeletonizerGeneralFramework({
    required TextDirection textDirection,
    required double animationValue,
    required Brightness brightness,
    required SkeletonizerGeneralFrameworkConfigData config,
    required bool ignorePointers,
    required bool isZone,
    RenderSliver? child,
  })  : _animationValue = animationValue,
        _textDirection = textDirection,
        _brightness = brightness,
        _config = config,
        _isZone = isZone,
        _ignorePointers = ignorePointers,
        super(child);

  TextDirection _textDirection;

  @override
  TextDirection get textDirection => _textDirection;

  set textDirection(TextDirection value) {
    if (_textDirection != value) {
      _textDirection = value;
      markNeedsPaint();
    }
  }

  SkeletonizerGeneralFrameworkConfigData _config;

  @override
  SkeletonizerGeneralFrameworkConfigData get config => _config;

  set config(SkeletonizerGeneralFrameworkConfigData value) {
    if (_config != value) {
      _config = value;
      markNeedsPaint();
    }
  }

  Brightness _brightness;

  @override
  Brightness get brightness => _brightness;

  set brightness(Brightness value) {
    if (_brightness != value) {
      _brightness = value;
      markNeedsPaint();
    }
  }

  bool _ignorePointers;

  set ignorePointers(bool value) {
    if (_ignorePointers != value) {
      _ignorePointers = value;
    }
  }

  bool _isZone;

  set isZone(bool value) {
    if (_isZone != value) {
      _isZone = value;
      markNeedsPaint();
    }
  }

  @override
  bool get isZone => _isZone;

  double _animationValue = 0;

  @override
  double get animationValue => _animationValue;

  set animationValue(double value) {
    if (_animationValue != value) {
      _animationValue = value;
      markNeedsPaint();
    }
  }

  @override
  bool hitTest(SliverHitTestResult result,
      {required double mainAxisPosition, required double crossAxisPosition}) {
    if (_ignorePointers) return false;
    return super.hitTest(result,
        mainAxisPosition: mainAxisPosition,
        crossAxisPosition: crossAxisPosition);
  }
}

/// Creates a Zoned version of [RenderSliverSkeletonizerGeneralFramework] that only shades [Bone] widgets or descendants SkeletonizerGeneralFramework widgets
class ZonedSliverRenderSkeletonizerGeneralFramework
    extends RenderSliverSkeletonizerGeneralFramework
    with _ZonedRenderSkeletonBase<RenderSliver> {
  /// Default constructor
  ZonedSliverRenderSkeletonizerGeneralFramework({
    required super.textDirection,
    required super.animationValue,
    required super.brightness,
    required super.config,
    required super.ignorePointers,
    required super.isZone,
    required this.shouldRecreateShader,
  });

  @override
  final bool shouldRecreateShader;
}

mixin _ZonedRenderSkeletonBase<R extends RenderObject>
    on _RenderSkeletonBase<R> {
  bool get shouldRecreateShader;

  @override
  SkeletonizerGeneralFrameworkPaintingContext
      createSkeletonizerGeneralFrameworkContext(
          PaintingContext context, Offset offset) {
    assert(context is SkeletonizerGeneralFrameworkPaintingContext);
    final skeletonizerContext =
        context as SkeletonizerGeneralFrameworkPaintingContext;
    final Paint shaderPaint;
    if (shouldRecreateShader) {
      shaderPaint = config.effect.createPaint(
        context.animationValue,
        context.estimatedBounds,
        textDirection,
      );
    } else {
      shaderPaint = skeletonizerContext.shaderPaint;
    }
    return SkeletonizerGeneralFrameworkPaintingContext(
      layer: skeletonizerContext.layer,
      animationValue: animationValue,
      estimatedBounds: paintBounds.shift(offset),
      shaderPaint: shaderPaint,
      config: config,
      isZone: isZone,
    );
  }
}

mixin _RenderSkeletonBase<R extends RenderObject>
    on RenderObjectWithChildMixin<R> {
  /// The text direction used to resolve Directional geometries
  TextDirection get textDirection;

  /// The resolved skeletonizer theme data
  SkeletonizerGeneralFrameworkConfigData get config;

  /// The selected brightness
  Brightness get brightness;

  /// The value to animate painting effects
  double get animationValue;

  /// if true, only [Bone] widgets will be shaded
  bool get isZone;

  @override
  bool get isRepaintBoundary => true;

  SkeletonizerGeneralFrameworkPaintingContext
      createSkeletonizerGeneralFrameworkContext(
    PaintingContext context,
    Offset offset,
  ) {
    final estimatedBounds = paintBounds.shift(offset);
    final shaderPaint = config.effect.createPaint(
      animationValue,
      estimatedBounds,
      textDirection,
    );
    return SkeletonizerGeneralFrameworkPaintingContext(
      layer: layer!,
      animationValue: animationValue,
      estimatedBounds: estimatedBounds,
      shaderPaint: shaderPaint,
      config: config,
      isZone: isZone,
    );
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final skeletonizerContext =
        createSkeletonizerGeneralFrameworkContext(context, offset);
    super.paint(skeletonizerContext, offset);
    skeletonizerContext.stopRecordingIfNeeded();
  }
}
