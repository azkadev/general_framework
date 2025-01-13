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
      child: MarkdownProxyRichTextGeneralFrameworkWidget(childrenSpan,
          richTextBuilder: visitor.richTextBuilder),
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
  static BlockquoteConfig get darkConfig =>
      const BlockquoteConfig(textColor: Color(0xffd0d7de));

  @nonVirtual
  @override
  String get tag => MarkdownTag.blockquote.name;
}
