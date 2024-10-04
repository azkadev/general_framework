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
import 'package:flutter/material.dart';

import 'painting_effect.dart';

/// Builds a painting effect where a linear gradient
/// is used to create a shimmer-like effect
abstract class ShimmerEffect extends PaintingEffect {
  /// see [LinearGradient.colors]
  List<Color> get colors;

  /// see [LinearGradient.stops]
  List<double>? get stops;

  /// see [LinearGradient.begin]
  AlignmentGeometry get begin;

  /// see [LinearGradient.end]
  AlignmentGeometry get end;

  /// see [LinearGradient.tileMode]
  TileMode get tileMode;

  const ShimmerEffect._({
    super.lowerBound,
    super.upperBound,
    super.duration = const Duration(milliseconds: 2000),
  });

  /// Builds a [_ShimmerEffect] with default values
  const factory ShimmerEffect({
    Color baseColor,
    Color highlightColor,
    AlignmentGeometry begin,
    AlignmentGeometry end,
    Duration duration,
  }) = _ShimmerEffect;

  /// Builds a [_RawShimmerEffect] with default values
  const factory ShimmerEffect.raw({
    required List<Color> colors,
    List<double>? stops,
    AlignmentGeometry begin,
    AlignmentGeometry end,
    TileMode tileMode,
    double lowerBound,
    double upperBound,
    Duration duration,
  }) = _RawShimmerEffect;

  @override
  Paint createPaint(double t, Rect rect, TextDirection? textDirection) {
    final beginX = begin.resolve(textDirection).x;
    final endX = end.resolve(textDirection).x;
    final isVertical = beginX == 0 && endX == 0;
    return Paint()
      ..shader = LinearGradient(
        colors: colors,
        stops: stops,
        begin: begin,
        end: end,
        tileMode: tileMode,
        transform: _SlidingGradientTransform(offset: t, isVertical: isVertical),
      ).createShader(rect, textDirection: textDirection);
  }
}

class _ShimmerEffect extends ShimmerEffect {
  final Color baseColor;
  final Color highlightColor;

  const _ShimmerEffect({
    this.baseColor = const Color(0xFFEBEBF4),
    this.highlightColor = const Color(0xFFF4F4F4),
    this.begin = const AlignmentDirectional(-1.0, -0.3),
    this.end = const AlignmentDirectional(1.0, 0.3),
    super.duration,
  }) : super._(lowerBound: -.5, upperBound: 1.5);

  @override
  List<Color> get colors => [
        baseColor,
        highlightColor,
        baseColor,
      ];

  @override
  final AlignmentGeometry begin;

  @override
  final AlignmentGeometry end;

  @override
   // ignore: avoid_field_initializers_in_const_classes
   final List<double> stops = const [0.1, 0.3, 0.4];

  @override
  // ignore: avoid_field_initializers_in_const_classes
  final TileMode tileMode =  TileMode.clamp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ShimmerEffect &&
          runtimeType == other.runtimeType &&
          baseColor == other.baseColor &&
          highlightColor == other.highlightColor &&
          begin == other.begin &&
          duration == other.duration &&
          end == other.end &&
          tileMode == other.tileMode;

  @override
  int get hashCode =>
      baseColor.hashCode ^
      highlightColor.hashCode ^
      begin.hashCode ^
      end.hashCode ^
      tileMode.hashCode ^
      duration.hashCode;
}

class _RawShimmerEffect extends ShimmerEffect {
  @override
  final List<Color> colors;

  @override
  final List<double>? stops;

  @override
  final AlignmentGeometry begin;

  @override
  final AlignmentGeometry end;
  @override
  final TileMode tileMode;

  const _RawShimmerEffect({
    required this.colors,
    this.stops,
    this.begin = const AlignmentDirectional(-1.0, -0.3),
    this.end = const AlignmentDirectional(1.0, 0.3),
    this.tileMode = TileMode.clamp,
    super.lowerBound = -0.5,
    super.upperBound = 1.5,
    super.duration,
  }) : super._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _RawShimmerEffect &&
          runtimeType == other.runtimeType &&
          colors == other.colors &&
          stops == other.stops &&
          begin == other.begin &&
          end == other.end &&
          duration == other.duration &&
          tileMode == other.tileMode;

  @override
  int get hashCode =>
      colors.hashCode ^
      stops.hashCode ^
      begin.hashCode ^
      end.hashCode ^
      tileMode.hashCode ^
      duration.hashCode;
}

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.offset,
    required this.isVertical,
  });

  final bool isVertical;
  final double offset;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    if (isVertical) {
      return Matrix4.translationValues(0.0, bounds.height * offset, 0.0);
    }
    final resolvedOffset =
        textDirection == TextDirection.rtl ? -offset : offset;
    return Matrix4.translationValues(bounds.width * resolvedOffset, 0.0, 0.0);
  }
}
