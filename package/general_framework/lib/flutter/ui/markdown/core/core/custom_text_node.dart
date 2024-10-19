// import 'package:markdown_widget/markdown_widget.dart';
// import 'html_support.dart';
// import 'package:markdown/markdown.dart' as m;

// class CustomTextNode extends ElementNode {
//   final String text;
//   final MarkdownConfigGeneralFramework config;
//   final WidgetVisitor visitor;

//   CustomTextNode(this.text, this.config, this.visitor);

//   @override
//   void onAccepted(MarkdownSpanNodeGeneralFrameworkWidget parent) {
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

import '../../markdown_widget.dart';
import 'html_support.dart';
import 'package:markdown/markdown.dart' as m;

class CustomTextNode extends ElementNode {
  final String text;
  final MarkdownConfigGeneralFramework config;
  final WidgetVisitor visitor;
  final double? fontSize;

  CustomTextNode(this.text, this.config, this.visitor, {this.fontSize});

  @override
  void onAccepted(MarkdownSpanNodeGeneralFrameworkWidget parent) {
    final textStyle = config.p.textStyle.merge(parentStyle);
    children.clear();
    if (!text.contains(htmlRep)) {
      accept(TextNode(text: text, style: textStyle.copyWith(fontSize: fontSize)));
      return;
    }
    final spans = parseHtml(
      m.Text(text),
      visitor: WidgetVisitor(config: visitor.config, generators: visitor.generators),
      parentStyle: parentStyle!.copyWith(fontSize: fontSize),
    );
    for (var element in spans) {
      accept(element);
    }
  }
}
