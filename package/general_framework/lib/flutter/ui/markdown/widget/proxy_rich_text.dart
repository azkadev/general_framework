import 'package:flutter/material.dart';

import '../config/markdown_generator.dart';

///use [MarkdownProxyRichTextGeneralFrameworkWidget] to give `textScaleFactor` a default value
class MarkdownProxyRichTextGeneralFrameworkWidget extends StatelessWidget {
  final InlineSpan textSpan;
  final RichTextBuilder? richTextBuilder;

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
