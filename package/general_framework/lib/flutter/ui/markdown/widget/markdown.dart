import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../markdown_widget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MarkdownGeneralFrameworkWidget extends StatefulWidget {
  ///the markdown data
  final String data;

  ///if [tocController] is not null, you can use [tocListener] to get current TOC index
  final TocControllerGeneralFrameworkWidget? tocController;

  ///set the desired scroll physics for the markdown item list
  final ScrollPhysics? physics;

  ///set shrinkWrap to obtained [ListView] (only available when [tocController] is null)
  final bool shrinkWrap;

  /// [ListView] padding
  final EdgeInsetsGeometry? padding;

  ///make text selectable
  final bool selectable;

  ///the configs of markdown
  final MarkdownConfigGeneralFramework? config;

  ///config for [MarkdownGeneralFrameworkGenerator]
  final MarkdownGeneralFrameworkGenerator? markdownGenerator;

  const MarkdownGeneralFrameworkWidget({
    super.key,
    required this.data,
    this.tocController,
    this.physics,
    this.shrinkWrap = false,
    this.selectable = true,
    this.padding,
    this.config,
    this.markdownGenerator,
  });

  @override
  MarkdownGeneralFrameworkWidgetState createState() =>
      MarkdownGeneralFrameworkWidgetState();
}

class MarkdownGeneralFrameworkWidgetState
    extends State<MarkdownGeneralFrameworkWidget> {
  ///use [markdownGenerator] to transform markdown data to [Widget] list
  late MarkdownGeneralFrameworkGenerator markdownGenerator;

  ///The markdown string converted by MarkdownGeneralFrameworkGenerator will be retained in the [_widgets]
  final List<Widget> _widgets = [];

  ///[TocControllerGeneralFrameworkWidget] combines [TocWidget] and [MarkdownGeneralFrameworkWidget]
  TocControllerGeneralFrameworkWidget? _tocController;

  ///[AutoScrollController] provides the scroll to index mechanism
  final AutoScrollController controller = AutoScrollController();

  ///every [VisibilityDetector]'s child which is visible will be kept with [indexTreeSet]
  final indexTreeSet = SplayTreeSet<int>((a, b) => a - b);

  ///if the [ScrollDirection] of [ListView] is [ScrollDirection.forward], [isForward] will be true
  bool isForward = true;

  @override
  void initState() {
    super.initState();
    _tocController = widget.tocController;
    _tocController?.jumpToIndexCallback = (index) {
      controller.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    };
    updateState();
  }

  ///when we've got the data, we need update data without setState() to avoid the flicker of the view
  void updateState() {
    indexTreeSet.clear();
    markdownGenerator =
        widget.markdownGenerator ?? MarkdownGeneralFrameworkGenerator();
    final result = markdownGenerator.buildWidgets(
      widget.data,
      onTocList: (tocList) {
        _tocController?.setTocList(tocList);
      },
      config: widget.config,
    );
    _widgets.addAll(result);
  }

  ///this method will be called when [updateState] or [dispose]
  void clearState() {
    indexTreeSet.clear();
    _widgets.clear();
  }

  @override
  void dispose() {
    clearState();
    controller.dispose();
    _tocController?.jumpToIndexCallback = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => buildMarkdownGeneralFrameworkWidget();

  ///
  Widget buildMarkdownGeneralFrameworkWidget() {
    final markdownWidget = NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        isForward = direction == ScrollDirection.forward;
        return true;
      },
      child: ListView.builder(
        shrinkWrap: widget.shrinkWrap,
        physics: widget.physics,
        controller: controller,
        itemBuilder: (ctx, index) => wrapByAutoScroll(index,
            wrapByVisibilityDetector(index, _widgets[index]), controller),
        itemCount: _widgets.length,
        padding: widget.padding,
      ),
    );
    return widget.selectable
        ? SelectionArea(child: markdownWidget)
        : markdownWidget;
  }

  ///wrap widget by [VisibilityDetector] that can know if [child] is visible
  Widget wrapByVisibilityDetector(int index, Widget child) {
    return VisibilityDetector(
      key: ValueKey(index.toString()),
      onVisibilityChanged: (VisibilityInfo info) {
        final visibleFraction = info.visibleFraction;
        if (isForward) {
          visibleFraction == 0
              ? indexTreeSet.remove(index)
              : indexTreeSet.add(index);
        } else {
          visibleFraction == 1.0
              ? indexTreeSet.add(index)
              : indexTreeSet.remove(index);
        }
        if (indexTreeSet.isNotEmpty) {
          _tocController?.onIndexChanged(indexTreeSet.first);
        }
      },
      child: child,
    );
  }

  @override
  void didUpdateWidget(MarkdownGeneralFrameworkWidget oldWidget) {
    clearState();
    updateState();
    super.didUpdateWidget(widget);
  }
}

///wrap widget by [AutoScrollTag] that can use [AutoScrollController] to scrollToIndex
Widget wrapByAutoScroll(
    int index, Widget child, AutoScrollController controller) {
  return AutoScrollTag(
    key: Key(index.toString()),
    controller: controller,
    index: index,
    child: child,
    highlightColor: Colors.black.withOpacity(0.1),
  );
}
