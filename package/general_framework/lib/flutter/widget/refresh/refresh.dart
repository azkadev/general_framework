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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
class RefreshGeneralFrameworkWidget extends StatefulWidget {
  /// Callback function on pull down to refresh | 下拉刷新时的回调函数
  final Future<void> Function() onRefreshTop;

  /// Callback function on pull up to load more data | 上拉以加载更多数据的回调函数
  final Future<void> Function() onRefreshBottom;

  /// Whether it is the last page, if it is true, you can not load more | 是否为最后一页，如果为true，则无法加载更多
  final bool isLastPage;

  /// Child widget | 子组件
  final Widget child;

  /// Prompt text widget when there is no more data at the bottom | 底部没有更多数据时的提示文字组件
  final Widget? noMoreWidget;

  /// Prompt widget when loading new data at the bottom | 正在加载数据时的提示组件
  final Widget? loadingWidget;

  /// Prompt padding for body if needed | 你可以自定义padding
  final EdgeInsetsGeometry? padding;

  /// You can use your custom scrollController, or not | 你可以使用自定义的 ScrollController，或者不使用
  final ScrollController? scrollController;

  ///
  const RefreshGeneralFrameworkWidget({
    super.key,
    required this.child,
    required this.isLastPage,
    required this.onRefreshTop,
    required this.onRefreshBottom,
    this.noMoreWidget,
    this.loadingWidget,
    this.padding,
    this.scrollController,
  });
  @override
  State<RefreshGeneralFrameworkWidget> createState() =>
      RefreshGeneralFrameworkWidgetState();
}

///
class RefreshGeneralFrameworkWidgetState
    extends State<RefreshGeneralFrameworkWidget> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  ScrollController? _scrollController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = widget.scrollController ?? ScrollController();
    _scrollController!.addListener(() async {
      if (_scrollController!.position.pixels >=
          _scrollController!.position.maxScrollExtent) {
        if (_isLoading) {
          return;
        }

        if (mounted) {
          setState(() {
            _isLoading = true;
          });
        }

        if (!widget.isLastPage) {
          await widget.onRefreshBottom();
        }

        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    if (widget.scrollController == null) _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Widget mainWiget = ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: widget.padding,
        controller: _scrollController,
        children: <Widget>[
          widget.child,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: _isLoading
                    ? widget.loadingWidget ?? const CupertinoActivityIndicator()
                    : widget.isLastPage
                        ? widget.noMoreWidget ??
                            Text(
                              'No more data',
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).disabledColor,
                              ),
                            )
                        : Container(),
              ),
            ],
          ),
        ],
      ),
    );

    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: () async {
        if (_isLoading) return;
        await widget.onRefreshTop();
      },
      child: mainWiget,
    );
  }
}
