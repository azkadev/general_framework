import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../config/configs.dart';
import '../span_node.dart';

///Tag: [MarkdownTag.input]
class InputNode extends SpanNode {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Map<String, String> attr;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig config;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  InputNode(this.attr, this.config);

  @override
  InlineSpan build() {
    bool checked = false;
    if (attr['checked'] != null) {
      checked = attr['checked']!.toLowerCase() == 'true';
    }
    final parentStyleHeight =
        (parentStyle?.fontSize ?? config.p.textStyle.fontSize ?? 16.0) *
            (parentStyle?.height ?? config.p.textStyle.height ?? 1.5);
    return WidgetSpan(
      child: config.input.builder?.call(checked) ??
          Padding(
            padding: EdgeInsets.fromLTRB(2, (parentStyleHeight / 2) - 12, 2, 0),
            child: MCheckBox(checked: checked),
          ),
    );
  }
}

///define a function to return a checkbox widget
typedef CheckBoxBuilder = Widget Function(bool checked);

///config class for checkbox, tag: input
class CheckBoxConfig implements InlineConfig {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final CheckBoxBuilder? builder;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const CheckBoxConfig({this.builder});

  @nonVirtual
  @override
  String get tag => MarkdownTag.input.name;
}

///the check box widget
class MCheckBox extends StatelessWidget {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final bool checked;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const MCheckBox({Key? key, required this.checked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      checked ? Icons.check_box : Icons.check_box_outline_blank,
      size: 20,
    );
  }
}
