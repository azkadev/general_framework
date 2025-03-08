// import 'package:markdown_widget/markdown_widget.dart';
// import 'html_support.dart';
// import 'package:markdown/markdown.dart' as m;

// class CustomTextNode extends ElementNode {
//   final String text;
//   final MarkdownConfig config;
//   final WidgetVisitor visitor;

//   CustomTextNode(this.text, this.config, this.visitor);

//   @override
//   void onAccepted(SpanNode parent) {
//     final textStyle = config.p.textStyle.merge(parentStyle);
//     children.clear();
//     if (!text.contains(htmlRep)) {
//       accept(TextNode(text: text, style: textStyle));
//       return;
//     }
//     final spans = parseHtml(
//       m.Text(text),
//       visitor: WidgetVisitor(config: visitor.config, generators: visitor.generators),
//       parentStyle: parentStyle,
//     );
//     for (var element in spans) {
//       accept(element);
//     }
//   }
// }

// import 'package:markdown_widget/markdown_widget.dart';
import 'package:general_framework/flutter/fork/markdown_widget/markdown_widget.dart';

import 'html_support.dart';
import 'package:markdown/markdown.dart' as m;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class CustomTextNode extends ElementNode {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String text;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig config;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetVisitor visitor;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final double? fontSize;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CustomTextNode(this.text, this.config, this.visitor, {this.fontSize});

  @override
  void onAccepted(SpanNode parent) {
    final textStyle = config.p.textStyle.merge(parentStyle);
    children.clear();
    if (!text.contains(htmlRep)) {
      accept(
          TextNode(text: text, style: textStyle.copyWith(fontSize: fontSize)));
      return;
    }
    final spans = parseHtml(
      m.Text(text),
      visitor:
          WidgetVisitor(config: visitor.config, generators: visitor.generators),
      parentStyle: parentStyle!.copyWith(fontSize: fontSize),
    );
    for (var element in spans) {
      accept(element);
    }
  }
}
