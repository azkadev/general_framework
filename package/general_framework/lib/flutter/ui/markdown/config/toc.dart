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
import 'dart:collection';

import 'package:flutter/material.dart';
import 'configs.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../widget/blocks/leaf/heading.dart';
import '../widget/markdown.dart';
import '../widget/proxy_rich_text.dart';

///[TocControllerGeneralFrameworkWidget] combines [TocWidget] and [MarkdownGeneralFrameworkWidget],
///you can use it to control the jump between the two,
/// and each [TocWidget] corresponds to a [MarkdownGeneralFrameworkWidget].
class TocControllerGeneralFrameworkWidget {
  ///key is index of widgets, value is [Toc]
  final LinkedHashMap<int, Toc> _index2toc = LinkedHashMap();

  ValueCallback<int>? _jumpToIndexCallback;
  ValueCallback<int>? _onIndexChangedCallback;
  ValueCallback<List<Toc>>? _onListChanged;

  /// UncompleteDocumentation
  void setTocList(List<Toc> list) {
    _index2toc.clear();
    for (final toc in list) {
      _index2toc[toc.widgetIndex] = toc;
    }
    _onListChanged?.call(list);
  }

  set jumpToIndexCallback(ValueCallback<int>? value) {
    _jumpToIndexCallback = value;
  }

  /// UncompleteDocumentation

  List<Toc> get tocList => List.unmodifiable(_index2toc.values);

  /// UncompleteDocumentation
  void dispose() {
    _index2toc.clear();
    _onIndexChangedCallback = null;
    _jumpToIndexCallback = null;
    _onListChanged = null;
  }

  /// UncompleteDocumentation
  void jumpToIndex(int index) {
    _jumpToIndexCallback?.call(index);
  }

  /// UncompleteDocumentation
  void onIndexChanged(int index) {
    _onIndexChangedCallback?.call(index);
  }
}

///config for toc
class Toc {
  ///the HeadingNode
  final HeadingNode node;

  ///index of [MarkdownGeneralFrameworkGenerator]'s _children
  final int widgetIndex;

  ///index of [TocControllerGeneralFrameworkWidget.tocList]
  final int selfIndex;

  /// UncompleteDocumentation
  Toc({
    required this.node,
    this.widgetIndex = 0,
    this.selfIndex = 0,
  });
}

/// UncompleteDocumentation

class TocWidget extends StatefulWidget {
  ///[controller] must not be null
  final TocControllerGeneralFrameworkWidget controller;

  ///set the desired scroll physics for the markdown item list
  final ScrollPhysics? physics;

  ///set shrinkWrap to obtained [ListView] (only available when [tocController] is null)
  final bool shrinkWrap;

  /// [ListView] padding
  final EdgeInsetsGeometry? padding;

  ///use [itemBuilder] to return a custom widget
  final TocItemBuilder? itemBuilder;

  /// UncompleteDocumentation
  const TocWidget({
    super.key,
    required this.controller,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    this.itemBuilder,
  });

  @override
  State<TocWidget> createState() => _TocWidgetState();
}

class _TocWidgetState extends State<TocWidget> {
  final AutoScrollController controller = AutoScrollController();
  int currentIndex = 0;
  final List<Toc> _tocList = [];

  TocControllerGeneralFrameworkWidget get tocController => widget.controller;

  void refresh() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    tocController._onListChanged = (list) {
      if (list.length < _tocList.length && currentIndex >= list.length) {
        currentIndex = list.length - 1;
      }
      _refreshList(list);

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        refresh();
      });
    };
    tocController._onIndexChangedCallback = (index) {
      final selfIndex = tocController._index2toc[index]?.selfIndex;
      if (selfIndex != null && _tocList.length > selfIndex) {
        refreshIndex(selfIndex);
        controller.scrollToIndex(currentIndex, preferPosition: AutoScrollPosition.begin);
      }
    };
    _refreshList(tocController.tocList);
  }

  void _refreshList(List<Toc> list) {
    _tocList.clear();
    _tocList.addAll(List.unmodifiable(list));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    _tocList.clear();
    tocController._onIndexChangedCallback = null;
    tocController._onListChanged = null;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: widget.shrinkWrap,
      physics: widget.physics,
      controller: controller,
      itemBuilder: (ctx, index) {
        final currentToc = _tocList[index];
        bool isCurrentToc = index == currentIndex;
        final itemBuilder = widget.itemBuilder;
        if (itemBuilder != null) {
          final result = itemBuilder.call(TocItemBuilderData(index, currentToc, currentIndex, refreshIndex));
          if (result != null) return result;
        }
        final node = currentToc.node.copy(headingConfig: _TocHeadingConfig(TextStyle(fontSize: 16, color: isCurrentToc ? Colors.blue : null), currentToc.node.headingConfig.tag));
        final child = ListTile(
          title: Container(
            margin: EdgeInsets.only(left: 20.0 * (headingTag2Level[node.headingConfig.tag] ?? 1)),
            child: MarkdownProxyRichTextGeneralFrameworkWidget(node.build()),
          ),
          onTap: () {
            tocController.jumpToIndex(currentToc.widgetIndex);
            refreshIndex(index);
          },
        );
        return wrapByAutoScroll(index, child, controller);
      },
      itemCount: _tocList.length,
      padding: widget.padding,
    );
  }

  void refreshIndex(int index) {
    currentIndex = index;
    refresh();
  }
}

///use [TocItemBuilder] to return a custom widget
typedef TocItemBuilder = Widget? Function(TocItemBuilderData data);

///pass [TocItemBuilderData] to help build your own [TocItemBuilder]
class TocItemBuilderData {
  ///the index of item
  final int index;

  ///the toc data
  final Toc toc;

  ///current selected index of item
  final int currentIndex;

  ///use [refreshIndexCallback] to change [currentIndex]
  final ValueChanged<int> refreshIndexCallback;

  /// UncompleteDocumentation
  TocItemBuilderData(this.index, this.toc, this.currentIndex, this.refreshIndexCallback);
}

///every heading tag has a special level
final headingTag2Level = <String, int>{
  'h1': 1,
  'h2': 2,
  'h3': 3,
  'h4': 5,
  'h5': 5,
  'h6': 6,
};

class _TocHeadingConfig extends HeadingConfig {
  @override
  final TextStyle style;
  @override
  final String tag;

  _TocHeadingConfig(this.style, this.tag);
}
