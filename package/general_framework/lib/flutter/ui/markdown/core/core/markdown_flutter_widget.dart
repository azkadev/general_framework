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
// ignore_for_file: use_full_hex_values_for_flutter_colors, empty_catches

// import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';
import 'code_wrapper.dart';
import 'custom_text_node.dart';

import '../../markdown_widget.dart';

/// UncompleteDocumentation
class MarkdownFlutterGeneralFrameworkWidget extends StatelessWidget {
  /// UncompleteDocumentation
  final String data;

  /// UncompleteDocumentation
  final EdgeInsetsGeometry? padding;

  /// UncompleteDocumentation
  final bool shrinkWrap;

  /// UncompleteDocumentation
  final bool selectable;

  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework Function(
    BuildContext context,
    MarkdownConfigGeneralFramework markdownConfigGeneralFramework,
    void Function(String url) onUrlPressed,
  )? markdownConfigBuilder;

  /// UncompleteDocumentation
  final MarkdownGeneralFrameworkGenerator Function(
    BuildContext context,
    MarkdownGeneralFrameworkGenerator markdownGeneralFrameworkGenerator,
  )? markdownGeneralFrameworkGeneratorBuilder;

  /// UncompleteDocumentation
  final ScrollPhysics? physics;

  /// UncompleteDocumentation
  final TocControllerGeneralFrameworkWidget? tocController;

  /// UncompleteDocumentation
  final void Function(String url) onUrlPressed;

  /// UncompleteDocumentation
  const MarkdownFlutterGeneralFrameworkWidget({
    super.key,
    this.padding,
    this.markdownConfigBuilder,
    required this.data,
    required this.onUrlPressed,
    this.markdownGeneralFrameworkGeneratorBuilder,
    this.physics,
    this.selectable = false,
    this.shrinkWrap = false,
    this.tocController,
  });

  @override
  Widget build(BuildContext context) {
    return MarkdownGeneralFrameworkWidget(
      key: key,
      data: data,
      padding: padding,
      physics: physics,
      selectable: selectable,
      shrinkWrap: shrinkWrap,
      tocController: tocController,
      config: (markdownConfigBuilder ?? markdownConfigBuilderDefault).call(context, markdownConfigDefault(context, onUrlPressed), onUrlPressed),
      markdownGenerator: (markdownGeneralFrameworkGeneratorBuilder ?? markdownGeneralFrameworkGeneratorBuilderDefault).call(context, markdownGeneralFrameworkGeneratorDefault(context)),
    );
  }

  /// UncompleteDocumentation
  static MarkdownConfigGeneralFramework markdownConfigDefault(
    BuildContext context,
    void Function(String url) onUrlPressed,
  ) {
    const PreConfig preConfig = PreConfig();
    return MarkdownConfigGeneralFramework.defaultConfig.copy(
      configs: [
        ParagraphMarkdownConfig(
          textStyle: (context.theme.textTheme.bodySmall ?? const TextStyle()).copyWith(
            color: context.theme.indicatorColor,
            shadows: context.extensionGeneralLibFlutterShadows(),
          ),
        ),
        preConfig.copy(
          styleNotMatched: const TextStyle(
            color: Color.fromARGB(255, 210, 213, 222),
          ),
          textStyle: () {
            final bodySmall = context.theme.textTheme.bodySmall;
            if (bodySmall == null) {
              return bodySmall;
            }
            return preConfig.textStyle.copyWith(
              fontSize: bodySmall.fontSize,
              fontWeight: bodySmall.fontWeight,
            );
          }(),
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
            'emphasis': const TextStyle(color: Color(0xffc792ea), fontStyle: FontStyle.normal),
            'strong': const TextStyle(color: Color(0xffaddb67), fontWeight: FontWeight.bold),
            'formula': const TextStyle(color: Color(0xffc792ea)),
            'link': const TextStyle(color: Color(0xffff869a)),
            'quote': const TextStyle(color: Color(0xff697098), fontStyle: FontStyle.normal),
            'selector-tag': const TextStyle(color: Color(0xffff6363)),
            'selector-id': const TextStyle(color: Color(0xfffad430)),
            'selector-class': const TextStyle(color: Color(0xffaddb67), fontStyle: FontStyle.normal),
            'selector-attr': const TextStyle(color: Color(0xffc792ea), fontStyle: FontStyle.normal),
            'selector-pseudo': const TextStyle(color: Color(0xffc792ea), fontStyle: FontStyle.normal),
            'template-tag': const TextStyle(color: Color(0xffc792ea)),
            'template-variable': const TextStyle(color: Color(0xffaddb67)),
            'addition': const TextStyle(color: Color(0xffaddb67ff), fontStyle: FontStyle.normal),
            'deletion': const TextStyle(color: Color(0xffef535090), fontStyle: FontStyle.normal),
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
          onTap: onUrlPressed,
        )
      ],
    );
  }

  /// UncompleteDocumentation
  static MarkdownConfigGeneralFramework markdownConfigBuilderDefault(
    BuildContext context,
    MarkdownConfigGeneralFramework markdownConfigGeneralFramework,
    void Function(String url)? onUrlPressed,
  ) {
    return markdownConfigGeneralFramework;
  }

  /// UncompleteDocumentation
  static MarkdownGeneralFrameworkGenerator markdownGeneralFrameworkGeneratorDefault(
    BuildContext context,
  ) {
    return MarkdownGeneralFrameworkGenerator(
      generators: [],
      textGenerator: (node, config, visitor) {
        return MarkdownCustomTextNodeGeneralFramework(
          node.textContent,
          config,
          visitor,
        );
      },
    );
  }

  /// UncompleteDocumentation
  static MarkdownGeneralFrameworkGenerator markdownGeneralFrameworkGeneratorBuilderDefault(
    BuildContext context,
    MarkdownGeneralFrameworkGenerator markdownGeneralFrameworkGenerator,
  ) {
    return markdownGeneralFrameworkGenerator;
  }
}
