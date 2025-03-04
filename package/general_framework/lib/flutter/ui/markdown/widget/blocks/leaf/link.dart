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
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/configs.dart';
import '../../span_node.dart';

///Tag: [MarkdownTag.a]
///
///Link reference definitions, A link reference definition consists of a link label
///link will always be wrapped by other tags, such as [MarkdownTag.p]

class LinkNode extends ElementNode {
  /// UncompleteDocumentation
  final Map<String, String> attributes;

  /// UncompleteDocumentation
  final LinkConfig linkConfig;

  /// UncompleteDocumentation
  LinkNode(this.attributes, this.linkConfig);

  @override
  InlineSpan build() {
    final url = attributes['href'] ?? '';
    return TextSpan(children: [
      for (final child in children)
        _toLinkInlineSpan(
          child.build(),
          () => _onLinkTap(linkConfig, url),
        ),
      if (children.isNotEmpty)
        // FIXME: this is a workaround, maybe need fixed by flutter framework.
        // add a space to avoid the space area of line end can be tapped.
        const TextSpan(text: ' '),
    ]);
  }

  void _onLinkTap(LinkConfig linkConfig, String url) {
    if (linkConfig.onTap != null) {
      linkConfig.onTap?.call(url);
    } else {
      launchUrl(Uri.parse(url));
    }
  }

  @override
  TextStyle get style => parentStyle?.merge(linkConfig.style) ?? linkConfig.style;
}

///config class for link, tag: a
class LinkConfig implements LeafConfig {
  /// UncompleteDocumentation
  final TextStyle style;

  /// UncompleteDocumentation
  final ValueCallback<String>? onTap;

  /// UncompleteDocumentation
  const LinkConfig({this.style = const TextStyle(color: Color(0xff0969da), decoration: TextDecoration.underline), this.onTap});

  @nonVirtual
  @override
  String get tag => MarkdownTag.a.name;
}

// add a tap gesture recognizer to the span.
InlineSpan _toLinkInlineSpan(InlineSpan span, VoidCallback onTap) {
  if (span is TextSpan) {
    span = TextSpan(
      text: span.text,
      children: span.children?.map((e) => _toLinkInlineSpan(e, onTap)).toList(),
      style: span.style,
      recognizer: TapGestureRecognizer()..onTap = onTap,
      onEnter: span.onEnter,
      onExit: span.onExit,
      semanticsLabel: span.semanticsLabel,
      locale: span.locale,
      spellOut: span.spellOut,
    );
  } else if (span is WidgetSpan) {
    span = WidgetSpan(
      child: InkWell(
        child: span.child,
        onTap: onTap,
      ),
      alignment: span.alignment,
      baseline: span.baseline,
      style: span.style,
    );
  }
  return span;
}
