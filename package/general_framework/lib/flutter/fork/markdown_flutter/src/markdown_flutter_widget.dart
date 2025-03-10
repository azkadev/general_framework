// ignore_for_file: use_full_hex_values_for_flutter_colors

// import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'code_wrapper.dart';
import 'custom_text_node.dart';

import 'package:general_framework/flutter/fork/markdown_widget/markdown_widget.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
MarkdownConfig markdownFlutterConfig({
  required BuildContext context,
  void Function(String)? onTap,
}) {
  return MarkdownConfig.defaultConfig.copy(
    configs: [
      const PreConfig().copy(
        styleNotMatched: const TextStyle(
          color: Color.fromARGB(255, 210, 213, 222),
        ),
        theme: {
          'root': const TextStyle(
            backgroundColor: Color(0xff011627),
            color: Color.fromARGB(255, 186, 184, 221),
          ),
          'keyword': const TextStyle(
            color: Color(0xffc792ea),
            fontStyle: FontStyle.normal,
          ),
          'built_in': const TextStyle(
            color: Color.fromARGB(255, 0, 185, 219),
            fontStyle: FontStyle.normal,
          ),
          'type': const TextStyle(color: Color(0xff82aaff)),
          'literal': const TextStyle(color: Color(0xffff5874)),
          'number': const TextStyle(color: Color(0xffF78C6C)),
          'regexp': const TextStyle(color: Color(0xff5ca7e4)),
          'string': const TextStyle(color: Color(0xffecc48d)),
          'subst': const TextStyle(color: Color(0xffd3423e)),
          'symbol': const TextStyle(color: Color(0xff82aaff)),
          'class': const TextStyle(color: Color(0xffffcb8b)),
          'function': const TextStyle(color: Color(0xff82AAFF)),
          'title': const TextStyle(
            color: Color.fromARGB(255, 0, 185, 219),
            fontStyle: FontStyle.normal,
          ),
          'params': const TextStyle(color: Color(0xff7fdbca)),
          'comment': const TextStyle(
            color: Color.fromARGB(143, 158, 180, 180),
            fontStyle: FontStyle.normal,
          ),
          'doctag': const TextStyle(color: Color(0xff7fdbca)),
          'meta': const TextStyle(color: Color(0xff82aaff)),
          'meta-keyword': const TextStyle(color: Color(0xff82aaff)),
          'meta-string': const TextStyle(color: Color(0xffecc48d)),
          'section': const TextStyle(color: Color(0xff82b1ff)),
          'tag': const TextStyle(color: Color(0xff7fdbca)),
          'name': const TextStyle(color: Color(0xff7fdbca)),
          'builtin-name': const TextStyle(color: Color(0xff7fdbca)),
          'attr': const TextStyle(color: Color(0xff7fdbca)),
          'attribute': const TextStyle(color: Color(0xff80cbc4)),
          'variable': const TextStyle(color: Color(0xffaddb67)),
          'bullet': const TextStyle(color: Color(0xffd9f5dd)),
          'code': const TextStyle(color: Color(0xff80CBC4)),
          'emphasis': const TextStyle(
              color: Color(0xffc792ea), fontStyle: FontStyle.normal),
          'strong': const TextStyle(
              color: Color(0xffaddb67), fontWeight: FontWeight.bold),
          'formula': const TextStyle(color: Color(0xffc792ea)),
          'link': const TextStyle(color: Color(0xffff869a)),
          'quote': const TextStyle(
              color: Color(0xff697098), fontStyle: FontStyle.normal),
          'selector-tag': const TextStyle(color: Color(0xffff6363)),
          'selector-id': const TextStyle(color: Color(0xfffad430)),
          'selector-class': const TextStyle(
              color: Color(0xffaddb67), fontStyle: FontStyle.normal),
          'selector-attr': const TextStyle(
              color: Color(0xffc792ea), fontStyle: FontStyle.normal),
          'selector-pseudo': const TextStyle(
              color: Color(0xffc792ea), fontStyle: FontStyle.normal),
          'template-tag': const TextStyle(color: Color(0xffc792ea)),
          'template-variable': const TextStyle(color: Color(0xffaddb67)),
          'addition': const TextStyle(
              color: Color(0xffaddb67ff), fontStyle: FontStyle.normal),
          'deletion': const TextStyle(
              color: Color(0xffef535090), fontStyle: FontStyle.normal),
        },
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 26, 27, 38),
        ),
        wrapper: (child, code, language) {
          return CodeWrapperWidget(
            text: code,
            language: language,
            child: child,
          );
        },
      ),
      LinkConfig(
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.none,
        ),
        onTap: onTap,
      )
    ],
  );
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
MarkdownGenerator markdownFlutterGeneratorConfig() {
  // MarkdownC
  return MarkdownGenerator(
    generators: [],
    // inlineSyntaxList: [
    // DBSyntax(),
    // ],
    textGenerator: (node, config, visitor) {
      return CustomTextNode(node.textContent, config, visitor);
    },
  );
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class CustomCode extends CodeNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  CustomCode(super.text, super.codeConfig);

  @override
  InlineSpan build() {
    print(text);
    // TODO: implement build
    return super.build();
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class MarkdownFlutterWidget extends StatelessWidget {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String data;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsetsGeometry? padding;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final bool shrinkWrap;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final bool selectable;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig? config;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownGenerator? markdownGeneratorConfig;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final ScrollPhysics? physics;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TocController? tocController;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const MarkdownFlutterWidget({
    super.key,
    this.padding,
    this.config,
    required this.data,
    this.markdownGeneratorConfig,
    this.physics,
    this.selectable = false,
    this.shrinkWrap = false,
    this.tocController,
  });
  @override
  Widget build(BuildContext context) {
    return MarkdownWidget(
      key: key,
      data: data,
      padding: padding,
      physics: physics,
      selectable: selectable,
      shrinkWrap: shrinkWrap,
      tocController: tocController,
      config: config ??
          markdownFlutterConfig(
            context: context,
            onTap: (url) async {
              // return await CoolAlert.show(
              //   barrierDismissible: true,
              //   context: context,
              //   type: CoolAlertType.confirm,
              //   confirmBtnText: "Open",
              //   text: "Open: ${url}?",
              //   onConfirmBtnTap: () async {
              //     await launchUrlString(url, mode: LaunchMode.externalApplication);
              //   },
              // );
            },
          ),
      markdownGenerator:
          markdownGeneratorConfig ?? markdownFlutterGeneratorConfig(),
    );
  }
}
