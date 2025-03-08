import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../config/configs.dart';
import '../../proxy_rich_text.dart';
import '../../span_node.dart';
import '../../widget_visitor.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class TableConfig implements ContainerConfig {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Map<int, TableColumnWidth>? columnWidths;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TableColumnWidth? defaultColumnWidth;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextDirection? textDirection;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TableBorder? border;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TableCellVerticalAlignment? defaultVerticalAlignment;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextBaseline? textBaseline;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Decoration? headerRowDecoration;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Decoration? bodyRowDecoration;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle? headerStyle;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final TextStyle? bodyStyle;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets headPadding;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsets bodyPadding;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetWrapper? wrapper;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class TableNode extends ElementNode {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig config;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TableNode(this.config);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
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
      defaultColumnWidth: tbConfig.defaultColumnWidth ?? IntrinsicColumnWidth(),
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

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class THeadNode extends ElementNode {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig config;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetVisitor visitor;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  THeadNode(this.config, this.visitor);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List<TableRow> get rows => List.generate(children.length, (index) {
        final trChild = children[index] as TrNode;
        return TableRow(
            decoration: config.table.headerRowDecoration,
            children: List.generate(trChild.children.length, (index) {
              final currentTh = trChild.children[index];
              return Center(
                child: Padding(
                    padding: config.table.headPadding,
                    child: ProxyRichText(
                      currentTh.build(),
                      richTextBuilder: visitor.richTextBuilder,
                    )),
              );
            }));
      });

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int get cellCount => (children.first as TrNode).children.length;

  @override
  TextStyle? get style =>
      config.table.headerStyle?.merge(parentStyle) ??
      parentStyle ??
      config.p.textStyle.copyWith(fontWeight: FontWeight.bold);
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class TBodyNode extends ElementNode {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final MarkdownConfig config;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetVisitor visitor;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TBodyNode(this.config, this.visitor);

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List<TableRow> buildRows(int cellCount) {
    return List.generate(children.length, (index) {
      final child = children[index] as TrNode;
      final List<Widget> widgets =
          List.generate(cellCount, (index) => Container());
      for (var i = 0; i < child.children.length; ++i) {
        var c = child.children[i];
        widgets[i] = Padding(
            padding: config.table.bodyPadding,
            child: ProxyRichText(
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

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class TrNode extends ElementNode {
  @override
  TextStyle? get style => parentStyle;
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class ThNode extends ElementNode {
  @override
  TextStyle? get style => parentStyle;
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class TdNode extends ElementNode {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Map<String, String> attribute;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final WidgetVisitor visitor;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  TdNode(this.attribute, this.visitor);

  @override
  InlineSpan build() {
    final align = attribute['align'] ?? '';
    InlineSpan result = childrenSpan;
    if (align.contains('left')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.centerLeft,
              child: ProxyRichText(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    } else if (align.contains('center')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.center,
              child: ProxyRichText(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    } else if (align.contains('right')) {
      result = WidgetSpan(
          child: Align(
              alignment: Alignment.centerRight,
              child: ProxyRichText(
                childrenSpan,
                richTextBuilder: visitor.richTextBuilder,
              )));
    }
    return result;
  }

  @override
  TextStyle? get style => parentStyle;
}
