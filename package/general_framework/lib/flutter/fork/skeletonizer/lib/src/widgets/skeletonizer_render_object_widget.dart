import 'package:flutter/material.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/rendering/render_skeletonizer.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/widgets/skeletonizer.dart';

/// Builds a [RenderSkeletonizerGeneralFramework]
class SkeletonizerGeneralFrameworkRenderObjectWidget extends SingleChildRenderObjectWidget {
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
      final shouldRecreateShader = SkeletonizerGeneralFramework.of(context).config.effect != data.config.effect;
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
class SliverSkeletonizerGeneralFrameworkRenderObjectWidget extends SingleChildRenderObjectWidget {
  /// The default constructor
  const SliverSkeletonizerGeneralFrameworkRenderObjectWidget({
    super.key,
    required super.child,
    required this.data,
  });

  /// The SkeletonizerGeneralFramework build data
  final SkeletonizerGeneralFrameworkBuildData data;

  @override
  RenderSliverSkeletonizerGeneralFramework createRenderObject(BuildContext context) {
    if (data.isInsideZone) {
      final shouldRecreateShader = SkeletonizerGeneralFramework.of(context).config.effect != data.config.effect;
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
