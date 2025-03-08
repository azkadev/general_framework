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
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Map<String, String> attributes;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final LinkConfig linkConfig;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
        TextSpan(text: ' '),
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
  TextStyle get style =>
      parentStyle?.merge(linkConfig.style) ?? linkConfig.style;
}

///config class for link, tag: a
class LinkConfig implements LeafConfig {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle style;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final ValueCallback<String>? onTap;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const LinkConfig(
      {this.style = const TextStyle(
          color: Color(0xff0969da), decoration: TextDecoration.underline),
      this.onTap});

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
