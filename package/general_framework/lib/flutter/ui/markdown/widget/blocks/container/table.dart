import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../config/configs.dart';
import '../../proxy_rich_text.dart';
import '../../span_node.dart';
import '../../widget_visitor.dart';

/// UncompleteDocumentation
class TableConfig implements ContainerConfig {
  /// UncompleteDocumentation
  final Map<int, TableColumnWidth>? columnWidths;

  /// UncompleteDocumentation
  final TableColumnWidth? defaultColumnWidth;

  /// UncompleteDocumentation
  final TextDirection? textDirection;

  /// UncompleteDocumentation
  final TableBorder? border;

  /// UncompleteDocumentation
  final TableCellVerticalAlignment? defaultVerticalAlignment;

  /// UncompleteDocumentation
  final TextBaseline? textBaseline;

  /// UncompleteDocumentation
  final Decoration? headerRowDecoration;

  /// UncompleteDocumentation
  final Decoration? bodyRowDecoration;

  /// UncompleteDocumentation
  final TextStyle? headerStyle;

  /// UncompleteDocumentation
  final TextStyle? bodyStyle;

  /// UncompleteDocumentation
  final EdgeInsets headPadding;

  /// UncompleteDocumentation
  final EdgeInsets bodyPadding;

  /// UncompleteDocumentation
  final WidgetWrapper? wrapper;

  /// UncompleteDocumentation
  const TableConfig({
    this.columnWidths,
    this.defaultColumnWidth,
    this.textDirection,
    this.border,
    this.defaultVerticalAlignment,
    this.textBaseline,
    this.headerRowDecoration,
    this.bodyRowDecoration,
    this.headerStyle,
    this.bodyStyle,
    this.wrapper,
    this.headPadding = const EdgeInsets.fromLTRB(8, 4, 8, 4),
    this.bodyPadding = const EdgeInsets.fromLTRB(8, 4, 8, 4),
  });

  @nonVirtual
  @override
  String get tag => MarkdownTag.table.name;
}

/// UncompleteDocumentation
class TableNode extends ElementNode {
  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
  TableNode(this.config);

  /// UncompleteDocumentation
  TableConfig get tbConfig => config.table;

  @override
  InlineSpan build() {
    List<TableRow> rows = [];

    int cellCount = 0;

    for (var child in children) {
      if (child is THeadNode) {
        cellCount = child.cellCount;
        rows.addAll(child.rows);
      } else if (child is TBodyNode) {
        rows.addAll(child.buildRows(cellCount));
      }
    }

    final tableWidget = Table(
      columnWidths: tbConfig.columnWidths,
      defaultColumnWidth:
          tbConfig.defaultColumnWidth ?? const IntrinsicColumnWidth(),
      textBaseline: tbConfig.textBaseline,
      textDirection: tbConfig.textDirection,
      border: tbConfig.border ??
          TableBorder.all(
              color: parentStyle?.color ??
                  config.p.textStyle.color ??
                  Colors.grey),
      defaultVerticalAlignment: tbConfig.defaultVerticalAlignment ??
          TableCellVerticalAlignment.middle,
      children: rows,
    );

    return WidgetSpan(
        child: config.table.wrapper?.call(tableWidget) ?? tableWidget);
  }
}

/// UncompleteDocumentation
class THeadNode extends ElementNode {
  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  THeadNode(this.config, this.visitor);

  /// UncompleteDocumentation
  List<TableRow> get rows => List.generate(children.length, (index) {
        final trChild = children[index] as TrNode;
        return TableRow(
            decoration: config.table.headerRowDecoration,
            children: List.generate(trChild.children.length, (index) {
              final currentTh = trChild.children[index];
              return Center(
                child: Padding(
                    padding: config.table.headPadding,
                    child: MarkdownProxyRichTextGeneralFrameworkWidget(
                      currentTh.build(),
                      richTextBuilder: visitor.richTextBuilder,
                    )),
              );
            }));
      });

  /// UncompleteDocumentation
  int get cellCount => (children.first as TrNode).children.length;

  @override
  TextStyle? get style =>
      config.table.headerStyle?.merge(parentStyle) ??
      parentStyle ??
      config.p.textStyle.copyWith(fontWeight: FontWeight.bold);
}

/// UncompleteDocumentation
class TBodyNode extends ElementNode {
  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  TBodyNode(this.config, this.visitor);

  /// UncompleteDocumentation
  List<TableRow> buildRows(int cellCount) {
    return List.generate(children.length, (index) {
      final child = children[index] as TrNode;
      final List<Widget> widgets =
          List.generate(cellCount, (index) => Container());
      for (var i = 0; i < child.children.length; ++i) {
        var c = child.children[i];
        widgets[i] = Padding(
            padding: config.table.bodyPadding,
            child: MarkdownProxyRichTextGeneralFrameworkWidget(
              c.build(),
              richTextBuilder: visitor.richTextBuilder,
            ));
      }
      return TableRow(
          decoration: config.table.bodyRowDecoration, children: widgets);
    });
  }

  @override
  TextStyle? get style =>
      config.table.headerStyle?.merge(parentStyle) ??
      parentStyle ??
      config.p.textStyle;
}

/// UncompleteDocumentation

class TrNode extends ElementNode {
  @override
  TextStyle? get style => parentStyle;
}

/// UncompleteDocumentation
class ThNode extends ElementNode {
  @override
  TextStyle? get style => parentStyle;
}

/// UncompleteDocumentation

class TdNode extends ElementNode {
  /// UncompleteDocumentation
  final Map<String, String> attribute;

  /// UncompleteDocumentation
  final WidgetVisitor visitor;

  /// UncompleteDocumentation
  TdNode(this.attribute, this.visitor);

  @override
  InlineSpan build() {
    final align = attribute['align'] ?? '';
    InlineSpan result = childrenSpan;
    if (align.contains('left')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.centerLeft,
              child: MarkdownProxyRichTextGeneralFrameworkWidget(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    } else if (align.contains('center')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.center,
              child: MarkdownProxyRichTextGeneralFrameworkWidget(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    } else if (align.contains('right')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.centerRight,
              child: MarkdownProxyRichTextGeneralFrameworkWidget(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    }
    return result;
  }

  @override
  TextStyle? get style => parentStyle;
}
