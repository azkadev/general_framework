import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../config/configs.dart';
import '../span_node.dart';

///Tag:  [MarkdownTag.code]
///the code textSpan
class CodeNode extends ElementNode {
  /// UncompleteDocumentation
  final CodeConfig codeConfig;

  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  CodeNode(this.text, this.codeConfig);

  @override
  InlineSpan build() => TextSpan(style: style, text: text);

  @override
  TextStyle get style => codeConfig.style.merge(parentStyle);
}

///config class for code, tag: code
class CodeConfig implements InlineConfig {
  /// UncompleteDocumentation
  final TextStyle style;

  /// UncompleteDocumentation
  const CodeConfig(
      {this.style = const TextStyle(backgroundColor: Color(0xCCeff1f3))});

  /// UncompleteDocumentation
  static CodeConfig get darkConfig =>
      const CodeConfig(style: TextStyle(backgroundColor: Color(0xCC555555)));

  @nonVirtual
  @override
  String get tag => MarkdownTag.code.name;
}
