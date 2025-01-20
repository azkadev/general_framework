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
import 'package:flutter/cupertino.dart';
import 'package:markdown/markdown.dart' as m;
import '../config/configs.dart';
import 'all.dart';

import '../config/markdown_generator.dart';

///use [WidgetVisitor] that can transform MarkdownNode to [MarkdownSpanNodeGeneralFrameworkWidget]s
///and you can use [MarkdownSpanNodeGeneralFrameworkWidget] with [Text.rich] or [RichText] to get widget
class WidgetVisitor implements m.NodeVisitor {
  ///remain the result of [visit] function
  final List<MarkdownSpanNodeGeneralFrameworkWidget> _spans = [];

  ///the index of [_spans]
  int _currentSpanIndex = 0;

  ///[visitElementBefore] will push a [MarkdownSpanNodeGeneralFrameworkWidget] onto [_spansStack]
  ///[visitElementAfter] will pop the last [MarkdownSpanNodeGeneralFrameworkWidget] off
  final List<MarkdownSpanNodeGeneralFrameworkWidget> _spansStack = [];

  ///[MarkdownConfigGeneralFramework] is used to define the UI display
  late MarkdownConfigGeneralFramework config;

  /// add your custom [MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag] to [generators]
  /// that you can customize the conversion of Nodes
  final List<MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag> generators;

  ///this function will be triggered when a [MarkdownSpanNodeGeneralFrameworkWidget] is accepted
  final MarkdownSpanNodeGeneralFrameworkWidgetAcceptCallback? onNodeAccepted;

  ///use [textGenerator] to custom your own [TextNode]
  final TextNodeGenerator? textGenerator;

  ///use [richTextBuilder] to custom your own [Text.rich]
  final RichTextBuilder? richTextBuilder;

  ///use [splitRegExp] to split markdown data
  final RegExp? splitRegExp;

  /// UncompleteDocumentation
  static RegExp defaultSplitRegExp = RegExp(r'(\r?\n)|(\r)');

  /// UncompleteDocumentation
  WidgetVisitor({
    MarkdownConfigGeneralFramework? config,
    this.generators = const [],
    this.onNodeAccepted,
    this.textGenerator,
    this.richTextBuilder,
    this.splitRegExp,
  }) {
    this.config = config ?? MarkdownConfigGeneralFramework.defaultConfig;
    for (var e in generators) {
      _tag2node[e.tag] = e.generator;
    }
  }

  ///[visit] will return a [MarkdownSpanNodeGeneralFrameworkWidget] list
  List<MarkdownSpanNodeGeneralFrameworkWidget> visit(List<m.Node> nodes) {
    _spans.clear();
    _currentSpanIndex = 0;
    for (final node in nodes) {
      final emptyNode = ConcreteElementNode();
      _spans.add(emptyNode);
      _currentSpanIndex = _spans.length - 1;
      _spansStack.add(emptyNode);
      node.accept(this);
      _spansStack.removeLast();
    }
    final result = List.of(_spans);
    _spans.clear();
    _spansStack.clear();
    return result;
  }

  @override
  bool visitElementBefore(m.Element element) {
    final node = getNodeByElement(element, config);
    final last = _spansStack.last;
    if (last is ElementNode) {
      last.accept(node);
      onNodeAccepted?.call(node, _currentSpanIndex);
    }
    _spansStack.add(node);

    return true;
  }

  @override
  void visitElementAfter(m.Element element) {
    _spansStack.removeLast();
  }

  @override
  void visitText(m.Text text) {
    final last = _spansStack.last;
    if (last is ElementNode) {
      final textNode = textGenerator?.call(text, config, this) ??
          TextNode(text: text.text, style: config.p.textStyle);
      last.accept(textNode);
      onNodeAccepted?.call(textNode, _currentSpanIndex);
    }
  }

  ///every tag has it's own [MarkdownSpanNodeGeneralFrameworkWidgetGenerator]
  final _tag2node = <String, MarkdownSpanNodeGeneralFrameworkWidgetGenerator>{
    MarkdownTag.h1.name: (e, config, visitor) =>
        HeadingNode(config.h1, visitor),
    MarkdownTag.h2.name: (e, config, visitor) =>
        HeadingNode(config.h2, visitor),
    MarkdownTag.h3.name: (e, config, visitor) =>
        HeadingNode(config.h3, visitor),
    MarkdownTag.h4.name: (e, config, visitor) =>
        HeadingNode(config.h4, visitor),
    MarkdownTag.h5.name: (e, config, visitor) =>
        HeadingNode(config.h5, visitor),
    MarkdownTag.h6.name: (e, config, visitor) =>
        HeadingNode(config.h6, visitor),
    MarkdownTag.li.name: (e, config, visitor) => ListNode(config, visitor),
    MarkdownTag.ol.name: (e, config, visitor) =>
        UlOrOLNode(e.tag, e.attributes, config.li, visitor),
    MarkdownTag.ul.name: (e, config, visitor) =>
        UlOrOLNode(e.tag, e.attributes, config.li, visitor),
    MarkdownTag.blockquote.name: (e, config, visitor) =>
        BlockquoteNode(config.blockquote, visitor),
    MarkdownTag.pre.name: (e, config, visitor) =>
        CodeBlockNode(e, config.pre, visitor),
    MarkdownTag.hr.name: (e, config, visitor) => HorizontalRulesNode(config.hr),
    MarkdownTag.table.name: (e, config, visitor) => TableNode(config),
    MarkdownTag.thead.name: (e, config, visitor) => THeadNode(config, visitor),
    MarkdownTag.tbody.name: (e, config, visitor) => TBodyNode(config, visitor),
    MarkdownTag.tr.name: (e, config, visitor) => TrNode(),
    MarkdownTag.th.name: (e, config, visitor) => ThNode(),
    MarkdownTag.td.name: (e, config, visitor) => TdNode(e.attributes, visitor),
    MarkdownTag.p.name: (e, config, visitor) => ParagraphNode(config.p),
    MarkdownTag.input.name: (e, config, visitor) =>
        InputNode(e.attributes, config),
    MarkdownTag.a.name: (e, config, visitor) =>
        LinkNode(e.attributes, config.a),
    MarkdownTag.del.name: (e, config, visitor) => DelNode(),
    MarkdownTag.strong.name: (e, config, visitor) => StrongNode(),
    MarkdownTag.em.name: (e, config, visitor) => EmNode(),
    MarkdownTag.br.name: (e, config, visitor) => BrNode(),
    MarkdownTag.code.name: (e, config, visitor) =>
        CodeNode(e.textContent, config.code),
    MarkdownTag.img.name: (e, config, visitor) =>
        ImageNode(e.attributes, config, visitor),
  };

  /// UncompleteDocumentation

  MarkdownSpanNodeGeneralFrameworkWidget getNodeByElement(
      m.Element element, MarkdownConfigGeneralFramework config) {
    return _tag2node[element.tag]?.call(element, config, this) ??
        textGenerator?.call(element, config, this) ??
        TextNode(text: element.textContent);
  }
}

///use [MarkdownSpanNodeGeneralFrameworkWidgetGenerator] will return a [MarkdownSpanNodeGeneralFrameworkWidget]
typedef MarkdownSpanNodeGeneralFrameworkWidgetGenerator
    = MarkdownSpanNodeGeneralFrameworkWidget Function(m.Element e,
        MarkdownConfigGeneralFramework config, WidgetVisitor visitor);

///use [TextNodeGenerator] to custom your own [TextNode]
typedef TextNodeGenerator = MarkdownSpanNodeGeneralFrameworkWidget? Function(
    m.Node node, MarkdownConfigGeneralFramework config, WidgetVisitor visitor);

///when a [SpanNope] is visited, this callback will be triggered
typedef MarkdownSpanNodeGeneralFrameworkWidgetAcceptCallback = void Function(
    MarkdownSpanNodeGeneralFrameworkWidget node, int nodeIndex);

///use [MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag] that you can custom your own [MarkdownSpanNodeGeneralFrameworkWidgetGenerator] with tag
class MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag {
  /// UncompleteDocumentation
  final String tag;

  /// UncompleteDocumentation
  final MarkdownSpanNodeGeneralFrameworkWidgetGenerator generator;

  /// UncompleteDocumentation
  MarkdownSpanNodeGeneralFrameworkWidgetGeneratorWithTag(
      {required this.tag, required this.generator});
}

///wrap [child] by another widget
typedef WidgetWrapper = Widget Function(Widget child);
