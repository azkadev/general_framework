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
import 'package:flutter/cupertino.dart';
import 'package:general_framework/flutter/fork/skeletonizer/lib/skeletonizer.dart';

const _defaultTextBoneBorderRadius = TextBoneBorderRadius.fromHeightFactor(.5);

/// Holds [SkeletonizerGeneralFramework] theme data
class SkeletonizerGeneralFrameworkConfigData {
  /// The painting effect to apply
  /// on the skeletonized elements
  final PaintingEffect effect;

  /// The [TextElement] border radius config
  final TextBoneBorderRadius textBorderRadius;

  /// Whether to justify multi line text bones
  final bool justifyMultiLineText;

  /// Whether to ignore container elements and only paint
  /// the dependents
  final bool ignoreContainers;

  /// The color of the container elements
  /// this includes [Container], [Card], [DecoratedBox] ..etc
  ///
  /// if null the actual color will be used
  final Color? containersColor;

  /// Default constructor
  const SkeletonizerGeneralFrameworkConfigData({
    this.effect = const ShimmerEffect(),
    this.justifyMultiLineText = true,
    this.textBorderRadius = _defaultTextBoneBorderRadius,
    this.ignoreContainers = false,
    this.containersColor,
  });

  /// Builds a light themed instance
  const SkeletonizerGeneralFrameworkConfigData.light({
    this.effect = const ShimmerEffect(),
    this.justifyMultiLineText = true,
    this.textBorderRadius = _defaultTextBoneBorderRadius,
    this.ignoreContainers = false,
    this.containersColor,
  });

  /// Builds a dark themed instance
  const SkeletonizerGeneralFrameworkConfigData.dark({
    this.effect = const ShimmerEffect(
      baseColor: Color(0xFF3A3A3A),
      highlightColor: Color(0xFF424242),
    ),
    this.containersColor,
    this.justifyMultiLineText = true,
    this.textBorderRadius = _defaultTextBoneBorderRadius,
    this.ignoreContainers = false,
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is SkeletonizerGeneralFrameworkConfigData && runtimeType == other.runtimeType && effect == other.effect && textBorderRadius == other.textBorderRadius && justifyMultiLineText == other.justifyMultiLineText && ignoreContainers == other.ignoreContainers && containersColor == other.containersColor;

  @override
  int get hashCode => effect.hashCode ^ textBorderRadius.hashCode ^ justifyMultiLineText.hashCode ^ ignoreContainers.hashCode ^ containersColor.hashCode;

  /// Clones the instance with overrides
  SkeletonizerGeneralFrameworkConfigData copyWith({
    PaintingEffect? effect,
    TextBoneBorderRadius? textBorderRadius,
    bool? justifyMultiLineText,
    bool? ignoreContainers,
    Color? containersColor,
  }) {
    return SkeletonizerGeneralFrameworkConfigData(
      effect: effect ?? this.effect,
      textBorderRadius: textBorderRadius ?? this.textBorderRadius,
      justifyMultiLineText: justifyMultiLineText ?? this.justifyMultiLineText,
      ignoreContainers: ignoreContainers ?? this.ignoreContainers,
      containersColor: containersColor ?? this.containersColor,
    );
  }
}

/// Holds border radius information
/// for [TextElement]
class TextBoneBorderRadius {
  final BorderRadiusGeometry? _borderRadius;
  final double? _heightPercentage;

  /// Whether this is constructed using [fromHeightFactor]
  final bool usesHeightFactor;

  /// Builds TextBoneBorderRadius instance that
  /// uses default/fixed border radius
  const TextBoneBorderRadius(
    BorderRadiusGeometry borderRadius,
  )   : _borderRadius = borderRadius,
        _heightPercentage = null,
        usesHeightFactor = false;

  /// Builds TextBoneBorderRadius instance that
  /// uses a high factor to resolve used border radius
  const TextBoneBorderRadius.fromHeightFactor(
    double factor,
  )   : assert(factor >= 0 && factor <= 1),
        _borderRadius = null,
        _heightPercentage = factor,
        usesHeightFactor = true;

  /// This defines the value of border radius
  /// based on the font size e.g
  /// fontSize: 14
  /// heightPercentage: .5
  /// border radius =>  14 * .5 = 7
  double? get heightPercentage => _heightPercentage;

  /// The fixed border radius
  BorderRadiusGeometry? get borderRadius => _borderRadius;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TextBoneBorderRadius && runtimeType == other.runtimeType && _borderRadius == other._borderRadius && _heightPercentage == other._heightPercentage && usesHeightFactor == other.usesHeightFactor;

  @override
  int get hashCode => _borderRadius.hashCode ^ _heightPercentage.hashCode ^ usesHeightFactor.hashCode;
}

/// Provided the scoped [SkeletonizerGeneralFrameworkConfigData] to descended widgets
class SkeletonizerGeneralFrameworkConfig extends InheritedWidget {
  /// The Scoped config data
  final SkeletonizerGeneralFrameworkConfigData data;

  /// Depends on the the nearest SkeletonizerGeneralFrameworkConfigData if any
  static SkeletonizerGeneralFrameworkConfigData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SkeletonizerGeneralFrameworkConfig>()?.data;
  }

  /// Depends on the the nearest SkeletonizerGeneralFrameworkConfigData if any otherwise it throws
  static SkeletonizerGeneralFrameworkConfigData of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<SkeletonizerGeneralFrameworkConfig>();
    assert(() {
      if (scope == null) {
        throw FlutterError(
          'SkeletonizerGeneralFrameworkTheme operation requested with a context that does not include a SkeletonizerGeneralFrameworkTheme.\n'
          'The context used to push or pop routes from the Navigator must be that of a '
          'widget that is a descendant of a SkeletonizerGeneralFrameworkTheme widget.',
        );
      }
      return true;
    }());
    return scope!.data;
  }

  /// Default constructor
  const SkeletonizerGeneralFrameworkConfig({
    super.key,
    required super.child,
    required this.data,
  });

  @override
  bool updateShouldNotify(covariant SkeletonizerGeneralFrameworkConfig oldWidget) {
    return data != oldWidget.data;
  }
}
