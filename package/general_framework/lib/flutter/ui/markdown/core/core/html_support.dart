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
import 'package:html/dom.dart' as h;
import 'package:markdown/markdown.dart' as m;
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:html/dom_parsing.dart';
import '../../markdown_widget.dart';

///see this issue: https://github.com/dart-lang/markdown/issues/284#event-3216258013
///use [htmlToMarkdown] to convert HTML in [m.Text] to [m.Node]
void htmlToMarkdown(h.Node? node, int deep, List<m.Node> mNodes) {
  if (node == null) return;
  if (node is h.Text) {
    mNodes.add(m.Text(node.text));
  } else if (node is h.Element) {
    final tag = node.localName;
    List<m.Node> children = [];
    for (final e in node.children) {
      htmlToMarkdown(e, deep + 1, children);
    }
    m.Element element;
    if (tag == MarkdownTag.img.name || tag == 'video') {
      element = HtmlElement(tag!, children, node.text);
      element.attributes.addAll(node.attributes.cast());
    } else {
      element = HtmlElement(tag!, children, node.text);
      element.attributes.addAll(node.attributes.cast());
    }
    mNodes.add(element);
  }
}

/// UncompleteDocumentation
final RegExp htmlRep = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);

///parse [m.Node] to [h.Node]
List<MarkdownSpanNodeGeneralFrameworkWidget> parseHtml(
  m.Text node, {
  ValueCallback<dynamic>? onError,
  WidgetVisitor? visitor,
  TextStyle? parentStyle,
}) {
  try {
    final text =
        node.textContent.replaceAll(RegExp(r'(\r?\n)|(\r?\t)|(\r)'), '');
    if (!text.contains(htmlRep)) return [TextNode(text: node.text)];
    h.DocumentFragment document = parseFragment(text);
    return HtmlToSpanVisitor(visitor: visitor, parentStyle: parentStyle)
        .toVisit(document.nodes.toList());
  } catch (e) {
    onError?.call(e);
    return [TextNode(text: node.text)];
  }
}

/// UncompleteDocumentation

class HtmlElement extends m.Element {
  @override
  final String textContent;

  /// UncompleteDocumentation
  HtmlElement(super.tag, super.children, this.textContent);
}

/// UncompleteDocumentation
class HtmlToSpanVisitor extends TreeVisitor {
  final List<MarkdownSpanNodeGeneralFrameworkWidget> _spans = [];
  final List<MarkdownSpanNodeGeneralFrameworkWidget> _spansStack = [];

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  final TextStyle parentStyle;

  /// UncompleteDocumentation
  HtmlToSpanVisitor({
    WidgetVisitor? visitor,
    TextStyle? parentStyle,
  })  : visitor = visitor ?? WidgetVisitor(),
        parentStyle = parentStyle ?? const TextStyle();

  /// UncompleteDocumentation

  List<MarkdownSpanNodeGeneralFrameworkWidget> toVisit(List<h.Node> nodes) {
    _spans.clear();
    for (final node in nodes) {
      final emptyNode = ConcreteElementNode(style: parentStyle);
      _spans.add(emptyNode);
      _spansStack.add(emptyNode);
      visit(node);
      _spansStack.removeLast();
    }
    final result = List.of(_spans);
    _spans.clear();
    _spansStack.clear();
    return result;
  }

  @override
  void visitText(h.Text node) {
    final last = _spansStack.last;
    if (last is ElementNode) {
      final textNode = TextNode(text: node.text);
      last.accept(textNode);
    }
  }

  @override
  void visitElement(h.Element node) {
    final localName = node.localName ?? '';
    final mdElement = m.Element(localName, []);
    mdElement.attributes.addAll(node.attributes.cast());
    MarkdownSpanNodeGeneralFrameworkWidget spanNode =
        visitor.getNodeByElement(mdElement, visitor.config);
    if (spanNode is! ElementNode) {
      final n = ConcreteElementNode(tag: localName, style: parentStyle);
      n.accept(spanNode);
      spanNode = n;
    }
    final last = _spansStack.last;
    if (last is ElementNode) {
      last.accept(spanNode);
    }
    _spansStack.add(spanNode);
    for (var child in node.nodes.toList(growable: false)) {
      visit(child);
    }
    _spansStack.removeLast();
  }
}
