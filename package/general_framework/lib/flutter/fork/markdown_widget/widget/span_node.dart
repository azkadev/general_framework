import 'package:flutter/material.dart';

///the basic node
abstract class SpanNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  InlineSpan build();

  SpanNode? _parent;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TextStyle? style;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TextStyle? get parentStyle => _parent?.style;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpanNode? get parent => _parent;

  ///use [_acceptParent] to accept a parent
  void _acceptParent(SpanNode node) {
    _parent = node;
    onAccepted(node);
  }

  ///when this node was accepted by it's parent, [onAccepted] will be triggered
  void onAccepted(SpanNode parent) {}
}

///this node will accept other SpanNode as children
abstract class ElementNode extends SpanNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final List<SpanNode> children = [];

  ///use [accept] to add a child
  void accept(SpanNode? node) {
    if (node != null) children.add(node);
    node?._acceptParent(this);
  }

  @override
  InlineSpan build() => childrenSpan;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TextSpan get childrenSpan => TextSpan(
      children:
          List.generate(children.length, (index) => children[index].build()));
}

///the default concrete node for ElementNode
class ConcreteElementNode extends ElementNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String tag;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ConcreteElementNode({this.tag = '', TextStyle? style}) {
    this.style = style ?? const TextStyle();
  }

  @override
  InlineSpan build() => childrenSpan;
}

///text node only displays text
class TextNode extends SpanNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String text;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TextNode({this.text = '', TextStyle? style}) {
    this.style = style ?? const TextStyle();
  }

  @override
  InlineSpan build() => TextSpan(text: text, style: style?.merge(parentStyle));
}
