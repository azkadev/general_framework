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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../config/configs.dart';
import '../../proxy_rich_text.dart';
import '../../span_node.dart';
import '../../widget_visitor.dart';

///Tag: [MarkdownTag.blockquote]
///
/// A block quote marker, optionally preceded by up to three spaces of indentation
class BlockquoteNode extends ElementNode {
  /// UncompleteDocumentation
  final BlockquoteConfig config;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  BlockquoteNode(this.config, this.visitor);

  @override
  InlineSpan build() {
    return WidgetSpan(
        child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
        left: BorderSide(color: config.sideColor, width: config.sideWith),
      )),
      padding: config.padding,
      margin: config.margin,
      child: MarkdownProxyRichTextGeneralFrameworkWidget(childrenSpan, richTextBuilder: visitor.richTextBuilder),
    ));
  }

  @override
  TextStyle? get style => TextStyle(color: config.textColor).merge(parentStyle);
}

///config class for Block quotes, tag: blockquote
class BlockquoteConfig implements ContainerConfig {
  /// UncompleteDocumentation
  final Color sideColor;

  /// UncompleteDocumentation
  final Color textColor;

  /// UncompleteDocumentation
  final double sideWith;

  /// UncompleteDocumentation
  final EdgeInsets padding;

  /// UncompleteDocumentation
  final EdgeInsets margin;

  /// UncompleteDocumentation

  const BlockquoteConfig({
    this.sideColor = const Color(0xffd0d7de),
    this.textColor = const Color(0xff57606a),
    this.sideWith = 4.0,
    this.padding = const EdgeInsets.fromLTRB(16, 2, 0, 2),
    this.margin = const EdgeInsets.fromLTRB(0, 8, 0, 8),
  });

  /// UncompleteDocumentation
  static BlockquoteConfig get darkConfig => const BlockquoteConfig(textColor: Color(0xffd0d7de));

  @nonVirtual
  @override
  String get tag => MarkdownTag.blockquote.name;
}
