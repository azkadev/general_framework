import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../config/configs.dart';
import '../../span_node.dart';

///Tag: [MarkdownTag.p]
///
///A sequence of non-blank lines that cannot be interpreted as other kinds of blocks forms a paragraph
class ParagraphNode extends ElementNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final PConfig pConfig;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
class PConfig implements LeafConfig {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle textStyle;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const PConfig({this.textStyle = const TextStyle(fontSize: 16)});

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static PConfig get darkConfig =>
      PConfig(textStyle: const TextStyle(fontSize: 16));

  @nonVirtual
  @override
  String get tag => MarkdownTag.p.name;
}

///Tag: [MarkdownTag.del]
///
///double '~'swill be wrapped with an HTML <del> tag.
class DelNode extends ElementNode {
  @override
  TextStyle get style =>
      parentStyle?.merge(_defaultDelStyle) ?? _defaultDelStyle;
}

///Tag: [MarkdownTag.strong]
///
/// double '*'s or '_'s will be wrapped with an HTML <strong> tag.
class StrongNode extends ElementNode {
  @override
  TextStyle get style =>
      parentStyle?.merge(_defaultStrongStyle) ?? _defaultStrongStyle;
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
class BrNode extends SpanNode {
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
