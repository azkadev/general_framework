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
import 'package:flutter/material.dart';

import '../../../config/configs.dart';
import '../../inlines/input.dart';
import '../../proxy_rich_text.dart';
import '../../span_node.dart';
import '../../widget_visitor.dart';
import '../leaf/paragraph.dart';

///Tag [MarkdownTag.ol]、[MarkdownTag.ul]
///
/// ordered list and unordered widget
class UlOrOLNode extends ElementNode {
  /// UncompleteDocumentation
  final String tag;

  /// UncompleteDocumentation
  final ListConfig config;

  /// UncompleteDocumentation
  final Map<String, String> attribute;

  /// UncompleteDocumentation
  late int start;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  UlOrOLNode(this.tag, this.attribute, this.config, this.visitor) {
    start = (int.tryParse(attribute['start'] ?? '') ?? 1) - 1;
  }

  @override
  void accept(MarkdownSpanNodeGeneralFrameworkWidget? node) {
    super.accept(node);
    if (node != null && node is ListNode) {
      node._index = start;
      start++;
    }
  }

  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Padding(
        padding: EdgeInsets.only(top: parent == null ? 0 : config.marginBottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            children.length,
            (index) {
              final childNode = children[index];
              return MarkdownProxyRichTextGeneralFrameworkWidget(childNode.build(), richTextBuilder: visitor.richTextBuilder);
            },
          ),
        ),
      ),
    );
  }

  @override
  TextStyle? get style => parentStyle;
}

///Tag [MarkdownTag.li]
///
/// A list is a sequence of one or more list items of the same type.
/// The list items may be separated by any number of blank lines.
class ListNode extends ElementNode {
  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  ListNode(this.config, this.visitor);

  int _index = 0;

  /// UncompleteDocumentation
  int get index => _index;

  /// UncompleteDocumentation
  bool get isOrdered {
    final p = parent;
    return p != null && p is UlOrOLNode && p.tag == MarkdownTag.ol.name;
  }

  /// UncompleteDocumentation
  int get depth {
    int d = 0;
    MarkdownSpanNodeGeneralFrameworkWidget? p = parent;
    while (p != null) {
      p = p.parent;
      if (p != null && p is UlOrOLNode && _listTag.contains(p.tag)) d += 1;
    }
    return d;
  }

  @override
  InlineSpan build() {
    final space = config.li.marginLeft;
    final marginBottom = config.li.marginBottom;
    final parentStyleHeight = (parentStyle?.fontSize ?? config.p.textStyle.fontSize ?? 16.0) * (parentStyle?.height ?? config.p.textStyle.height ?? 1.2);
    Widget marker;
    if (isCheckbox) {
      marker = MarkdownProxyRichTextGeneralFrameworkWidget(
        children.removeAt(0).build(),
        richTextBuilder: visitor.richTextBuilder,
      );
    } else {
      marker = config.li.marker?.call(isOrdered, depth, index) ?? getDefaultMarker(isOrdered, depth, parentStyle?.color, index, parentStyleHeight / 2, config);
    }
    return WidgetSpan(
      child: Padding(
        padding: EdgeInsets.only(bottom: marginBottom),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: space,
              child: marker,
            ),
            Flexible(
              child: MarkdownProxyRichTextGeneralFrameworkWidget(
                TextSpan(
                  children: [
                    if (children.isNotEmpty) children.first.build(),
                    for (final child in children.skip(1)) ...[
                      // Introducing a new line before the next list item.
                      // Otherwise, it might be rendered on the same line, disrupting the layout.
                      if (child is UlOrOLNode) const TextSpan(text: '\n'),
                      child.build(),
                    ],
                  ],
                ),
                richTextBuilder: visitor.richTextBuilder,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// UncompleteDocumentation
  bool get isCheckbox {
    return children.isNotEmpty && children.first is InputNode;
  }

  @override
  TextStyle? get style => parentStyle;
}

///config class for list, tag: li
class ListConfig implements ContainerConfig {
  ///the value margin left for list children
  final double marginLeft;

  ///the value margin left bottom list children
  final double marginBottom;

  ///the marker widget for list
  final ListMarker? marker;

  /// UncompleteDocumentation
  const ListConfig({
    this.marginLeft = 32.0,
    this.marginBottom = 4.0,
    this.marker,
  });

  @nonVirtual
  @override
  String get tag => MarkdownTag.li.name;
}

///the function to get marker widget
typedef ListMarker = Widget? Function(bool isOrdered, int depth, int index);

///the default marker widget for unordered list
class _UlMarker extends StatelessWidget {
  final int depth;
  final Color? color;

  const _UlMarker({this.depth = 0, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final c = color ?? theme.textTheme.titleLarge?.color ?? Colors.black;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 6,
        height: 6,
        decoration: get(depth % 3, c),
      ),
    );
  }

  BoxDecoration get(int depth, Color color) {
    if (depth == 0) {
      return BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      );
    } else if (depth == 1) {
      return BoxDecoration(
        border: Border.all(color: color),
        shape: BoxShape.circle,
      );
    }
    return BoxDecoration(color: color);
  }
}

///the default marker widget for ordered list
class _OlMarker extends StatelessWidget {
  final int depth;
  final int index;
  final Color? color;
  final ParagraphMarkdownConfig config;

  const _OlMarker({this.depth = 0, this.color, this.index = 1, required this.config});

  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(child: Text('${index + 1}.', style: config.textStyle.copyWith(color: color)));
  }
}

///get default marker for list
Widget getDefaultMarker(bool isOrdered, int depth, Color? color, int index, double paddingTop, MarkdownConfigGeneralFramework config) {
  Widget marker;
  if (isOrdered) {
    marker = Container(alignment: Alignment.topRight, padding: const EdgeInsets.only(right: 1), child: _OlMarker(depth: depth, index: index, color: color, config: config.p));
  } else {
    marker = Padding(padding: EdgeInsets.only(top: paddingTop - 3), child: _UlMarker(depth: depth, color: color));
  }
  return marker;
}

const _listTag = {'ul', 'ol'};
