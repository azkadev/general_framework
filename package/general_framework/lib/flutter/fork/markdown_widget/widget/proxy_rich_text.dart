import 'package:flutter/material.dart';

import '../config/markdown_generator.dart';

///use [ProxyRichText] to give `textScaleFactor` a default value
class ProxyRichText extends StatelessWidget {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final InlineSpan textSpan;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final RichTextBuilder? richTextBuilder;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const ProxyRichText(
    this.textSpan, {
    Key? key,
    this.richTextBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return richTextBuilder?.call(textSpan) ?? Text.rich(textSpan);
  }
}
