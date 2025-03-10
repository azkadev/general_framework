import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../config/configs.dart';
import '../span_node.dart';

///Tag:  [MarkdownTag.code]
///the code textSpan
class CodeNode extends ElementNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final CodeConfig codeConfig;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String text;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CodeNode(this.text, this.codeConfig);

  @override
  InlineSpan build() => TextSpan(style: style, text: text);

  @override
  TextStyle get style => codeConfig.style.merge(parentStyle);
}

///config class for code, tag: code
class CodeConfig implements InlineConfig {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle style;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const CodeConfig(
      {this.style = const TextStyle(backgroundColor: Color(0xCCeff1f3))});

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static CodeConfig get darkConfig =>
      CodeConfig(style: const TextStyle(backgroundColor: Color(0xCC555555)));

  @nonVirtual
  @override
  String get tag => MarkdownTag.code.name;
}
