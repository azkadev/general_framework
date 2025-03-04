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
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/effects/effects.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/skeletonizer_config.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/widgets/skeletonizer_render_object_widget.dart';

/// Paints a skeleton of the [child] widget
///
/// if [enabled] is set the false the child
/// will be painted normally
abstract class SkeletonizerGeneralFramework extends StatefulWidget {
  /// The widget to be skeletonized
  final Widget child;

  /// Whether skeletonizing is enabled
  final bool enabled;

  /// The painting effect to apply
  /// on the skeletonized elements
  final PaintingEffect? effect;

  /// The [TextElement] border radius config
  final TextBoneBorderRadius? textBoneBorderRadius;

  /// Whether to ignore container elements and only paint
  /// the dependents
  final bool? ignoreContainers;

  /// Whether to justify multi line text bones
  final bool? justifyMultiLineText;

  /// The color of the container elements
  /// this includes [Container], [Card], [DecoratedBox] ..etc
  ///
  /// if null the actual color will be used
  final Color? containersColor;

  /// Whether to ignore pointer events
  ///
  /// defaults to true
  final bool ignorePointers;

  final bool _isZone;

  /// Default constructor
  const SkeletonizerGeneralFramework._({
    super.key,
    required this.child,
    this.enabled = true,
    this.effect,
    this.textBoneBorderRadius,
    this.ignoreContainers,
    this.justifyMultiLineText,
    this.containersColor,
    this.ignorePointers = true,
  }) : _isZone = false;

  /// Creates a SkeletonizerGeneralFramework widget that only shades [Bone] widgets
  const SkeletonizerGeneralFramework._zone({
    super.key,
    required this.child,
    this.enabled = true,
    this.effect,
    this.textBoneBorderRadius,
    this.ignoreContainers,
    this.justifyMultiLineText,
    this.containersColor,
    this.ignorePointers = true,
  }) : _isZone = true;

  /// Creates a [SkeletonizerGeneralFramework] widget
  const factory SkeletonizerGeneralFramework({
    Key? key,
    required Widget child,
    bool enabled,
    PaintingEffect? effect,
    TextBoneBorderRadius? textBoneBorderRadius,
    bool? ignoreContainers,
    bool? justifyMultiLineText,
    Color? containersColor,
    bool ignorePointers,
  }) = _SkeletonizerGeneralFramework;

  /// Creates a SkeletonizerGeneralFramework widget that only shades [Bone] and nested skeletonizers
  @Deprecated('Use SkeletonizerGeneralFramework.zone instead')
  const factory SkeletonizerGeneralFramework.bones({
    Key? key,
    required Widget child,
    PaintingEffect? effect,
    TextBoneBorderRadius? textBoneBorderRadius,
    bool? ignoreContainers,
    bool? justifyMultiLineText,
    Color? containersColor,
    bool ignorePointers,
    bool enabled,
  }) = _SkeletonizerGeneralFramework.zone;

  /// Creates a SkeletonizerGeneralFramework widget that only shades [Bone] and nested skeletonizers
  const factory SkeletonizerGeneralFramework.zone({
    Key? key,
    required Widget child,
    PaintingEffect? effect,
    TextBoneBorderRadius? textBoneBorderRadius,
    bool? ignoreContainers,
    bool? justifyMultiLineText,
    Color? containersColor,
    bool ignorePointers,
    bool enabled,
  }) = _SkeletonizerGeneralFramework.zone;

  /// Creates a [SliverSkeletonizerGeneralFramework] widget
  const factory SkeletonizerGeneralFramework.sliver({
    Key? key,
    required Widget child,
    bool enabled,
    PaintingEffect? effect,
    TextBoneBorderRadius? textBoneBorderRadius,
    bool? ignoreContainers,
    bool? justifyMultiLineText,
    Color? containersColor,
    bool ignorePointers,
  }) = SliverSkeletonizerGeneralFramework;

  @override
  State<SkeletonizerGeneralFramework> createState() => SkeletonizerGeneralFrameworkState();

  /// Depends on the the nearest SkeletonizerGeneralFrameworkScope if any
  static SkeletonizerGeneralFrameworkScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SkeletonizerGeneralFrameworkScope>();
  }

  /// Depends on the the nearest SkeletonizerGeneralFrameworkScope if any otherwise it throws
  static SkeletonizerGeneralFrameworkScope of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<SkeletonizerGeneralFrameworkScope>();
    assert(() {
      if (scope == null) {
        throw FlutterError(
          'SkeletonizerGeneralFramework operation requested with a context that does not include a SkeletonizerGeneralFramework.\n'
          'The context used to push or pop routes from the Navigator must be that of a '
          'widget that is a descendant of a SkeletonizerGeneralFramework widget.',
        );
      }
      return true;
    }());
    return scope!;
  }

  /// Delegates the build to the [SkeletonizerGeneralFrameworkState]
  Widget build(BuildContext context, SkeletonizerGeneralFrameworkBuildData data);
}

/// The state of [SkeletonizerGeneralFramework] widget
class SkeletonizerGeneralFrameworkState extends State<SkeletonizerGeneralFramework> with TickerProviderStateMixin<SkeletonizerGeneralFramework> {
  AnimationController? _animationController;

  late bool _enabled = widget.enabled;

  SkeletonizerGeneralFrameworkConfigData? _config;

  double get _animationValue => _animationController?.value ?? 0.0;

  PaintingEffect? get _effect => _config?.effect;

  Brightness _brightness = Brightness.light;
  TextDirection _textDirection = TextDirection.ltr;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setupEffect();
  }

  void _setupEffect() {
    _brightness = Theme.of(context).brightness;
    _textDirection = Directionality.of(context);
    final isDarkMode = _brightness == Brightness.dark;
    var resolvedConfig = SkeletonizerGeneralFrameworkConfig.maybeOf(context) ??
        ((isDarkMode)
            ? const SkeletonizerGeneralFrameworkConfigData.dark(
                effect: ShimmerEffect(
                  //
                  // baseColor: context.theme.dialogBackgroundColor.withOpacity(0.85),
                  // highlightColor: context.theme.indicatorColor,

                  baseColor: Color.fromARGB(255, 20, 26, 20),
                  highlightColor: Color.fromARGB(255, 165, 143, 143),
                ),
              )
            : const SkeletonizerGeneralFrameworkConfigData.light(
                effect: ShimmerEffect(
                  baseColor: Color.fromARGB(255, 203, 213, 214),
                  highlightColor: Color.fromARGB(255, 159, 163, 184),
                ),
              ));

    resolvedConfig = resolvedConfig.copyWith(
      effect: widget.effect,
      textBorderRadius: widget.textBoneBorderRadius,
      ignoreContainers: widget.ignoreContainers,
      justifyMultiLineText: widget.justifyMultiLineText,
      containersColor: widget.containersColor,
      // containersColor: context.theme.indicatorColor,
    );
    if (resolvedConfig != _config) {
      _config = resolvedConfig;
      _stopAnimation();
      if (widget.enabled) {
        _startAnimationIfNeeded();
      }
    }
  }

  void _stopAnimation() {
    _animationController
      ?..removeListener(_onShimmerChange)
      ..stop(canceled: true)
      ..dispose();
    _animationController = null;
  }

  void _startAnimationIfNeeded() {
    assert(_effect != null);
    final scope = SkeletonizerGeneralFramework.maybeOf(context);
    final isInsideZone = scope?.isZone ?? false;
    if (!isInsideZone && _effect!.duration.inMilliseconds != 0) {
      _animationController = AnimationController.unbounded(vsync: this)
        ..addListener(_onShimmerChange)
        ..repeat(
          reverse: _effect!.reverse,
          min: _effect!.lowerBound,
          max: _effect!.upperBound,
          period: _effect!.duration,
        );
    }
  }

  @override
  void didUpdateWidget(covariant SkeletonizerGeneralFramework oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enabled != widget.enabled) {
      _enabled = widget.enabled;
      if (!_enabled) {
        _animationController?.reset();
        _animationController?.stop(canceled: true);
      } else {
        _startAnimationIfNeeded();
      }
    }
    _setupEffect();
  }

  @override
  void dispose() {
    _animationController?.removeListener(_onShimmerChange);
    _animationController?.dispose();
    super.dispose();
  }

  void _onShimmerChange() {
    if (mounted && widget.enabled) {
      setState(() {
        // update the shimmer painting.
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final parent = SkeletonizerGeneralFramework.maybeOf(context);
    assert(parent == null || parent.isZone, 'SkeletonizerGeneralFramework widgets can not be nested directly, use SkeletonizerGeneralFramework.zone as a parent for child SkeletonizerGeneralFrameworks.');

    final isInsideZone = parent?.isZone ?? false;

    return widget.build(
      context,
      SkeletonizerGeneralFrameworkBuildData(
        enabled: _enabled,
        config: _config!,
        brightness: _brightness,
        textDirection: _textDirection,
        animationValue: _animationValue,
        ignorePointers: widget.ignorePointers,
        isZone: widget._isZone,
        animationController: _animationController,
        isInsideZone: isInsideZone,
      ),
    );
  }
}

class _SkeletonizerGeneralFramework extends SkeletonizerGeneralFramework {
  const _SkeletonizerGeneralFramework({
    required super.child,
    super.key,
    super.enabled = true,
    super.effect,
    super.textBoneBorderRadius,
    super.ignoreContainers,
    super.justifyMultiLineText,
    super.containersColor,
    super.ignorePointers,
  }) : super._();

  const _SkeletonizerGeneralFramework.zone({
    required super.child,
    super.key,
    super.effect,
    super.textBoneBorderRadius,
    super.ignoreContainers,
    super.justifyMultiLineText,
    super.containersColor,
    super.ignorePointers,
    super.enabled,
  }) : super._zone();

  @override
  Widget build(BuildContext context, SkeletonizerGeneralFrameworkBuildData data) {
    final enabled = data.enabled && (SkeletonizerGeneralFramework.maybeOf(context)?.enabled ?? true);
    return SkeletonizerGeneralFrameworkScope(
      enabled: data.enabled,
      config: data.config,
      isZone: data.isZone,
      isInsideZone: data.isInsideZone,
      animationController: data.animationController,
      child: enabled ? SkeletonizerGeneralFrameworkRenderObjectWidget(data: data, child: child) : child,
    );
  }
}

/// A [SkeletonizerGeneralFramework] widget that can be used in a [CustomScrollView]
class SliverSkeletonizerGeneralFramework extends SkeletonizerGeneralFramework {
  /// Creates a [SliverSkeletonizerGeneralFramework] widget
  const SliverSkeletonizerGeneralFramework({
    required super.child,
    super.key,
    super.enabled = true,
    super.effect,
    super.textBoneBorderRadius,
    super.ignoreContainers,
    super.justifyMultiLineText,
    super.containersColor,
    super.ignorePointers,
  }) : super._();

  /// Creates a SkeletonizerGeneralFramework widget that only shades [Bone] widgets
  const SliverSkeletonizerGeneralFramework.bones({
    required super.child,
    super.key,
    super.effect,
    super.textBoneBorderRadius,
    super.ignoreContainers,
    super.justifyMultiLineText,
    super.containersColor,
    super.ignorePointers,
    super.enabled,
  }) : super._zone();

  @override
  Widget build(BuildContext context, SkeletonizerGeneralFrameworkBuildData data) {
    final enabled = data.enabled && (SkeletonizerGeneralFramework.maybeOf(context)?.enabled ?? true);
    return SkeletonizerGeneralFrameworkScope(
      enabled: data.enabled,
      config: data.config,
      isZone: data.isZone,
      isInsideZone: data.isInsideZone,
      animationController: data.animationController,
      child: enabled
          ? SliverSkeletonizerGeneralFrameworkRenderObjectWidget(
              data: data,
              child: child,
            )
          : child,
    );
  }
}

/// The data that is passed to the [SkeletonizerGeneralFrameworkRenderObjectWidget]
class SkeletonizerGeneralFrameworkBuildData {
  /// Default constructor
  const SkeletonizerGeneralFrameworkBuildData({
    required this.enabled,
    required this.config,
    required this.brightness,
    required this.textDirection,
    required this.animationValue,
    required this.ignorePointers,
    required this.isZone,
    required this.animationController,
    required this.isInsideZone,
  });

  /// Whether skeletonizing is enabled
  final bool enabled;

  /// The skeletonizer configuration
  final SkeletonizerGeneralFrameworkConfigData config;

  /// The animation controller used to animate the skeletonization
  final AnimationController? animationController;

  /// The brightness of the theme
  final Brightness brightness;

  /// The text direction of the theme
  final TextDirection textDirection;

  /// The animation value
  final double animationValue;

  /// Whether to ignore pointer events
  ///
  /// defaults to true
  final bool ignorePointers;

  /// When true, the only [Bone] widgets will be shaded or nested skeletonizers
  final bool isZone;

  /// Whether the skeletonizer is inside a parent SkeletonizerGeneralFramework's zone
  final bool isInsideZone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SkeletonizerGeneralFrameworkBuildData && runtimeType == other.runtimeType && enabled == other.enabled && config == other.config && brightness == other.brightness && isZone == other.isZone && isInsideZone == other.isInsideZone && textDirection == other.textDirection && animationValue == other.animationValue && animationController == other.animationController && ignorePointers == other.ignorePointers;

  @override
  int get hashCode => enabled.hashCode ^ config.hashCode ^ brightness.hashCode ^ textDirection.hashCode ^ animationValue.hashCode ^ animationController.hashCode ^ isZone.hashCode ^ isInsideZone.hashCode ^ ignorePointers.hashCode;
}

/// Provides the skeletonizer activation information
/// to the descent widgets
class SkeletonizerGeneralFrameworkScope extends InheritedWidget {
  /// Default constructor
  const SkeletonizerGeneralFrameworkScope({
    super.key,
    required super.child,
    required this.enabled,
    required this.config,
    required this.isInsideZone,
    required this.isZone,
    required this.animationController,
  });

  /// Whether skeletonizing is enabled
  final bool enabled;

  /// Whether this skeletonizer provides a skeletonization zone
  final bool isZone;

  /// Whether the skeletonizer is inside a parent SkeletonizerGeneralFramework's zone
  final bool isInsideZone;

  /// The current skeletonizer configuration
  final SkeletonizerGeneralFrameworkConfigData config;

  /// The animation controller used to animate the skeletonization
  final AnimationController? animationController;

  @override
  bool updateShouldNotify(covariant SkeletonizerGeneralFrameworkScope oldWidget) {
    return enabled != oldWidget.enabled || config != oldWidget.config || isZone != oldWidget.isZone || isInsideZone != oldWidget.isInsideZone || animationController != oldWidget.animationController;
  }
}
