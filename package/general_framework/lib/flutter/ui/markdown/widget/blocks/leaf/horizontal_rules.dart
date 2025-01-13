import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../config/configs.dart';
import '../../span_node.dart';

///Tag: [MarkdownTag.hr]
///
///the horizontal rules widget
///eg: `---`, `_ _ _`, `*  *  *`, etc.
class HorizontalRulesNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  /// UncompleteDocumentation
  final HorizontalRulesConfig hrConfig;

  /// UncompleteDocumentation
  HorizontalRulesNode(this.hrConfig);

  @override
  InlineSpan build() {
    return WidgetSpan(
      child: Container(
        height: hrConfig.height,
        color: hrConfig.color,
      ),
    );
  }
}

///config class for [HorizontalRulesNode]
class HorizontalRulesConfig implements LeafConfig {
  /// UncompleteDocumentation
  final double height;

  /// UncompleteDocumentation
  final Color color;

  /// UncompleteDocumentation

  const HorizontalRulesConfig(
      {this.height = 2, this.color = const Color(0xFFd0d7de)});

  @nonVirtual
  @override
  String get tag => MarkdownTag.hr.name;

  /// UncompleteDocumentation
  static HorizontalRulesConfig get darkConfig =>
      const HorizontalRulesConfig(color: Colors.white);
}
