import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';
import 'package:flutter_highlight/themes/a11y-light.dart';
import 'package:highlight/highlight.dart' as hi;
import '../../../markdown_widget.dart';
import 'package:markdown/markdown.dart' as m;

///Tag: [MarkdownTag.pre]
///
///An indented code block is composed of one or more indented chunks separated by blank lines
///A code fence is a sequence of at least three consecutive backtick characters (`) or tildes (~)
class CodeBlockNode extends ElementNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CodeBlockNode(this.element, this.preConfig, this.visitor);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String get content => element.textContent;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final PreConfig preConfig;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final m.Element element;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetVisitor visitor;

  @override
  InlineSpan build() {
    String? language = preConfig.language;
    try {
      final languageValue =
          (element.children?.first as m.Element).attributes['class']!;
      language = languageValue.split('-').last;
    } catch (e) {
      language = null;
      debugPrint('get language error:$e');
    }
    final splitContents = content
        .trim()
        .split(visitor.splitRegExp ?? WidgetVisitor.defaultSplitRegExp);
    if (splitContents.last.isEmpty) splitContents.removeLast();
    final codeBuilder = preConfig.builder;
    if (codeBuilder != null) {
      return WidgetSpan(child: codeBuilder.call(content, language ?? ''));
    }
    final widget = Container(
      decoration: preConfig.decoration,
      margin: preConfig.margin,
      padding: preConfig.padding,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(splitContents.length, (index) {
            final currentContent = splitContents[index];
            return ProxyRichText(
              TextSpan(
                children: highLightSpans(
                  currentContent,
                  language: language ?? preConfig.language,
                  theme: preConfig.theme,
                  textStyle: style,
                  styleNotMatched: preConfig.styleNotMatched,
                ),
              ),
              richTextBuilder: visitor.richTextBuilder,
            );
          }),
        ),
      ),
    );
    return WidgetSpan(
        child:
            preConfig.wrapper?.call(widget, content, language ?? '') ?? widget);
  }

  @override
  TextStyle get style => preConfig.textStyle.merge(parentStyle);
}

///transform code to highlight code
List<InlineSpan> highLightSpans(
  String input, {
  String? language,
  bool autoDetectionLanguage = false,
  Map<String, TextStyle> theme = const {},
  TextStyle? textStyle,
  TextStyle? styleNotMatched,
  int tabSize = 8,
}) {
  return convertHiNodes(
      hi.highlight
          .parse(input.trimRight(),
              language: autoDetectionLanguage ? null : language,
              autoDetection: autoDetectionLanguage)
          .nodes!,
      theme,
      textStyle,
      styleNotMatched);
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
List<TextSpan> convertHiNodes(
  List<hi.Node> nodes,
  Map<String, TextStyle> theme,
  TextStyle? style,
  TextStyle? styleNotMatched,
) {
  List<TextSpan> spans = [];
  var currentSpans = spans;
  List<List<TextSpan>> stack = [];

  void traverse(hi.Node node, TextStyle? parentStyle) {
    final nodeStyle = parentStyle ?? theme[node.className ?? ''];
    final finallyStyle = (nodeStyle ?? styleNotMatched)?.merge(style);
    if (node.value != null) {
      currentSpans.add(node.className == null
          ? TextSpan(text: node.value, style: finallyStyle)
          : TextSpan(text: node.value, style: finallyStyle));
    } else if (node.children != null) {
      List<TextSpan> tmp = [];
      currentSpans.add(TextSpan(children: tmp, style: finallyStyle));
      stack.add(currentSpans);
      currentSpans = tmp;

      for (var n in node.children!) {
        traverse(n, nodeStyle);
        if (n == node.children!.last) {
          currentSpans = stack.isEmpty ? spans : stack.removeLast();
        }
      }
    }
  }

  for (var node in nodes) {
    traverse(node, null);
  }
  return spans;
}

///config class for pre
class PreConfig implements LeafConfig {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsetsGeometry padding;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Decoration decoration;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsetsGeometry margin;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle textStyle;

  /// the [styleNotMatched] is used to set a default TextStyle for code that does not match any theme.
  final TextStyle? styleNotMatched;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final CodeWrapper? wrapper;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final CodeBuilder? builder;

  ///see package:flutter_highlight/themes/
  final Map<String, TextStyle> theme;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String language;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const PreConfig({
    this.padding = const EdgeInsets.all(16.0),
    this.decoration = const BoxDecoration(
      color: Color(0xffeff1f3),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    this.margin = const EdgeInsets.symmetric(vertical: 8.0),
    this.textStyle = const TextStyle(fontSize: 16),
    this.styleNotMatched,
    this.theme = a11yLightTheme,
    this.language = 'dart',
    this.wrapper,
    this.builder,
  }) : assert(builder == null || wrapper == null);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static PreConfig get darkConfig => const PreConfig(
        decoration: BoxDecoration(
          color: Color(0xff555555),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        theme: a11yDarkTheme,
      );

  ///copy by other params
  PreConfig copy({
    EdgeInsetsGeometry? padding,
    Decoration? decoration,
    EdgeInsetsGeometry? margin,
    TextStyle? textStyle,
    TextStyle? styleNotMatched,
    CodeWrapper? wrapper,
    Map<String, TextStyle>? theme,
    String? language,
  }) {
    return PreConfig(
      padding: padding ?? this.padding,
      decoration: decoration ?? this.decoration,
      margin: margin ?? this.margin,
      textStyle: textStyle ?? this.textStyle,
      styleNotMatched: styleNotMatched ?? this.styleNotMatched,
      wrapper: wrapper ?? this.wrapper,
      theme: theme ?? this.theme,
      language: language ?? this.language,
    );
  }

  @nonVirtual
  @override
  String get tag => MarkdownTag.pre.name;
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef CodeWrapper = Widget Function(
  Widget child,
  String code,
  String language,
);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef CodeBuilder = Widget Function(String code, String language);
