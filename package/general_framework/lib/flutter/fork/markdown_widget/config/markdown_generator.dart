import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as m;

import '../widget/blocks/leaf/heading.dart';
import '../widget/span_node.dart';
import '../widget/widget_visitor.dart';
import 'configs.dart';
import 'toc.dart';

///use [MarkdownGenerator] to transform markdown data to [Widget] list, so you can render it by any type of [ListView]
class MarkdownGenerator {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Iterable<m.InlineSyntax> inlineSyntaxList;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Iterable<m.BlockSyntax> blockSyntaxList;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets linesMargin;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final List<SpanNodeGeneratorWithTag> generators;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final SpanNodeAcceptCallback? onNodeAccepted;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final m.ExtensionSet? extensionSet;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextNodeGenerator? textGenerator;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final SpanNodeBuilder? spanNodeBuilder;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final RichTextBuilder? richTextBuilder;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final RegExp? splitRegExp;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  MarkdownGenerator({
    this.inlineSyntaxList = const [],
    this.blockSyntaxList = const [],
    this.linesMargin = const EdgeInsets.symmetric(vertical: 8),
    this.generators = const [],
    this.onNodeAccepted,
    this.extensionSet,
    this.textGenerator,
    this.spanNodeBuilder,
    this.richTextBuilder,
    this.splitRegExp,
  });

  ///convert [data] to widgets
  ///[onTocList] can provider [Toc] list
  List<Widget> buildWidgets(String data,
      {ValueCallback<List<Toc>>? onTocList, MarkdownConfig? config}) {
    final mdConfig = config ?? MarkdownConfig.defaultConfig;
    final m.Document document = m.Document(
      extensionSet: extensionSet ?? m.ExtensionSet.gitHubFlavored,
      encodeHtml: false,
      inlineSyntaxes: inlineSyntaxList,
      blockSyntaxes: blockSyntaxList,
    );
    final regExp = splitRegExp ?? WidgetVisitor.defaultSplitRegExp;
    final List<String> lines = data.split(regExp);
    final List<m.Node> nodes = document.parseLines(lines);
    final List<Toc> tocList = [];
    final visitor = WidgetVisitor(
        config: mdConfig,
        generators: generators,
        textGenerator: textGenerator,
        richTextBuilder: richTextBuilder,
        splitRegExp: regExp,
        onNodeAccepted: (node, index) {
          onNodeAccepted?.call(node, index);
          if (node is HeadingNode) {
            final listLength = tocList.length;
            tocList.add(
                Toc(node: node, widgetIndex: index, selfIndex: listLength));
          }
        });
    final spans = visitor.visit(nodes);
    onTocList?.call(tocList);
    final List<Widget> widgets = [];
    for (var span in spans) {
      final textSpan = spanNodeBuilder?.call(span) ?? span.build();
      final richText = richTextBuilder?.call(textSpan) ?? Text.rich(textSpan);
      widgets.add(Padding(padding: linesMargin, child: richText));
    }
    return widgets;
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef SpanNodeBuilder = TextSpan Function(SpanNode spanNode);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef RichTextBuilder = Widget Function(InlineSpan span);
