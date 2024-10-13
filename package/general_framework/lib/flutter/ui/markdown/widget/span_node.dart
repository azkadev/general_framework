import 'package:flutter/material.dart';

///the basic node
abstract class MarkdownSpanNodeGeneralFrameworkWidget {
  InlineSpan build();

  MarkdownSpanNodeGeneralFrameworkWidget? _parent;

  TextStyle? style;

  TextStyle? get parentStyle => _parent?.style;

  MarkdownSpanNodeGeneralFrameworkWidget? get parent => _parent;

  ///use [_acceptParent] to accept a parent
  void _acceptParent(MarkdownSpanNodeGeneralFrameworkWidget node) {
    _parent = node;
    onAccepted(node);
  }

  ///when this node was accepted by it's parent, [onAccepted] will be triggered
  void onAccepted(MarkdownSpanNodeGeneralFrameworkWidget parent) {}
}

///this node will accept other MarkdownSpanNodeGeneralFrameworkWidget as children
abstract class ElementNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  final List<MarkdownSpanNodeGeneralFrameworkWidget> children = [];

  ///use [accept] to add a child
  void accept(MarkdownSpanNodeGeneralFrameworkWidget? node) {
    if (node != null) children.add(node);
    node?._acceptParent(this);
  }

  @override
  InlineSpan build() => childrenSpan;

  TextSpan get childrenSpan => TextSpan(children: List.generate(children.length, (index) => children[index].build()));
}

///the default concrete node for ElementNode
class ConcreteElementNode extends ElementNode {
  final String tag;

  ConcreteElementNode({this.tag = '', TextStyle? style}) {
    this.style = style ?? const TextStyle();
  }

  @override
  InlineSpan build() => childrenSpan;
}

///text node only displays text
class TextNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  final String text;

  TextNode({this.text = '', TextStyle? style}) {
    this.style = style ?? const TextStyle();
  }

  @override
  InlineSpan build() => TextSpan(text: text, style: style?.merge(parentStyle));
}
