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
import 'package:general_framework/flutter/fork/skeletonizer/lib/src/effects/painting_effect.dart';

/// Creates a painting effect where a two colors are lerped
/// back nad forward based on animation value
class PulseEffect extends PaintingEffect {
  /// The color to fade from
  final Color from;

  /// The color to fade to
  final Color to;

  /// Default constructor
  const PulseEffect(
      {this.from = const Color(0xFFEBEBF4),
      this.to = const Color(0xFFF6F6F6),
      super.lowerBound,
      super.upperBound,
      super.duration = const Duration(milliseconds: 1000)})
      : super(reverse: true);

  @override
  Paint createPaint(double t, Rect rect, TextDirection? textDirection) {
    final color = Color.lerp(from, to, t)!;

    // We're creating a shader here because [ShadedElement] component
    // will use a shader mask to shade original elements
    //
    // todo: find a better way to create a one-color shader!
    return Paint()
      ..shader = LinearGradient(
        colors: [color, color],
      ).createShader(rect);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PulseEffect &&
          runtimeType == other.runtimeType &&
          from == other.from &&
          to == other.to &&
          duration == other.duration;

  @override
  int get hashCode => from.hashCode ^ to.hashCode ^ duration.hashCode;
}
