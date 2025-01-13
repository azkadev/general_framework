import 'package:flutter/material.dart';

import '../config/markdown_generator.dart';

///use [MarkdownProxyRichTextGeneralFrameworkWidget] to give `textScaleFactor` a default value
class MarkdownProxyRichTextGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final InlineSpan textSpan;

  /// UncompleteDocumentation
  final RichTextBuilder? richTextBuilder;

  /// UncompleteDocumentation
  const MarkdownProxyRichTextGeneralFrameworkWidget(
    this.textSpan, {
    super.key,
    this.richTextBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return richTextBuilder?.call(textSpan) ?? Text.rich(textSpan);
  }
}
