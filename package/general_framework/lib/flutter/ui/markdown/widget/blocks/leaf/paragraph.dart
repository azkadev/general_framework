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
import '../../span_node.dart';

///Tag: [MarkdownTag.p]
///
///A sequence of non-blank lines that cannot be interpreted as other kinds of blocks forms a paragraph
class ParagraphNode extends ElementNode {
  /// UncompleteDocumentation
  final ParagraphMarkdownConfig pConfig;

  /// UncompleteDocumentation
  ParagraphNode(this.pConfig);

  @override
  InlineSpan build() {
    return TextSpan(
        children: List.generate(children.length, (index) {
      final child = children[index];
      return child.build();
    }));
  }

  @override
  TextStyle? get style => pConfig.textStyle.merge(parentStyle);
}

///config class for paragraphs, tag: p
class ParagraphMarkdownConfig implements LeafConfig {
  /// UncompleteDocumentation
  final TextStyle textStyle;

  /// UncompleteDocumentation
  const ParagraphMarkdownConfig({this.textStyle = const TextStyle(fontSize: 16)});

  /// UncompleteDocumentation
  static ParagraphMarkdownConfig get darkConfig => const ParagraphMarkdownConfig(textStyle: TextStyle(fontSize: 16));

  @nonVirtual
  @override
  String get tag => MarkdownTag.p.name;
}

///Tag: [MarkdownTag.del]
///
///double '~'swill be wrapped with an HTML <del> tag.
class DelNode extends ElementNode {
  @override
  TextStyle get style => parentStyle?.merge(_defaultDelStyle) ?? _defaultDelStyle;
}

///Tag: [MarkdownTag.strong]
///
/// double '*'s or '_'s will be wrapped with an HTML <strong> tag.
class StrongNode extends ElementNode {
  @override
  TextStyle get style => parentStyle?.merge(_defaultStrongStyle) ?? _defaultStrongStyle;
}

///Tag: [MarkdownTag.em]
///
/// emphasis, Markdown treats asterisks (*) and underscores (_) as indicators of emphasis
class EmNode extends ElementNode {
  @override
  TextStyle get style => parentStyle?.merge(_defaultEmStyle) ?? _defaultEmStyle;
}

///Tag: [MarkdownTag.br]
///
///  a hard line break
class BrNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  @override
  InlineSpan build() {
    return TextSpan(text: '\n', style: parentStyle);
  }
}

///see [DelNode]
const _defaultDelStyle = TextStyle(decoration: TextDecoration.lineThrough);

///see [StrongNode]
const _defaultStrongStyle = TextStyle(fontWeight: FontWeight.bold);

///see [EmNode]
const _defaultEmStyle = TextStyle(fontStyle: FontStyle.italic);
