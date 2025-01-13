import 'package:flutter/material.dart';
import 'package:markdown/markdown.dart' as m;

import '../widget/blocks/leaf/heading.dart';
import '../widget/span_node.dart';
import '../widget/widget_visitor.dart';
import 'configs.dart';
import 'toc.dart';

///use [MarkdownGeneralFrameworkGenerator] to transform markdown data to [Widget] list, so you can render it by any type of [ListView]
class MarkdownGeneralFrameworkGenerator {
  /// UncompleteDocumentation
  final Iterable<m.InlineSyntax> inlineSyntaxList;

  /// UncompleteDocumentation
  final Iterable<m.BlockSyntax> blockSyntaxList;

  /// UncompleteDocumentation
  final EdgeInsets linesMargin;

  /// UncompleteDocumentation
  final List<MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag> generators;

  /// UncompleteDocumentation
  final MarkdownSpanNodeGeneralFrameworkWidgetAcceptCallback? onNodeAccepted;

  /// UncompleteDocumentation
  final m.ExtensionSet? extensionSet;

  /// UncompleteDocumentation
  final TextNodeGenerator? textGenerator;

  /// UncompleteDocumentation
  final MarkdownSpanNodeGeneralFrameworkWidgetBuilder? spanNodeBuilder;

  /// UncompleteDocumentation
  final RichTextBuilder? richTextBuilder;

  /// UncompleteDocumentation
  final RegExp? splitRegExp;

  /// UncompleteDocumentation
  MarkdownGeneralFrameworkGenerator({
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
      {ValueCallback<List<Toc>>? onTocList,
      MarkdownConfigGeneralFramework? config}) {
    final mdConfig = config ?? MarkdownConfigGeneralFramework.defaultConfig;
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

/// UncompleteDocumentation
typedef MarkdownSpanNodeGeneralFrameworkWidgetBuilder = TextSpan Function(
    MarkdownSpanNodeGeneralFrameworkWidget spanNode);

/// UncompleteDocumentation
typedef RichTextBuilder = Widget Function(InlineSpan span);
