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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// UncompleteDocumentation
class CodeWrapperWidget extends StatefulWidget {
  /// UncompleteDocumentation
  final Widget child;

  /// UncompleteDocumentation
  final String text;

  /// UncompleteDocumentation
  final String language;

  /// UncompleteDocumentation
  const CodeWrapperWidget({
    super.key,
    required this.child,
    required this.text,
    required this.language,
  });
  @override
  State<CodeWrapperWidget> createState() => _PreWrapperState();
}

class _PreWrapperState extends State<CodeWrapperWidget> {
  late Widget _switchWidget;
  bool hasCopied = false;

  @override
  void initState() {
    super.initState();
    _switchWidget = Icon(
      Icons.copy_rounded,
      key: UniqueKey(),
      color: Colors.white,
      size: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Theme.of(context).brightness;

    return Stack(
      children: [
        widget.child,
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: _switchWidget,
              ),
              onTap: () async {
                if (hasCopied) return;
                await Clipboard.setData(ClipboardData(text: widget.text));
                _switchWidget = Icon(
                  Icons.check,
                  key: UniqueKey(),
                  color: Colors.white,
                );
                refresh();
                Future.delayed(const Duration(seconds: 2), () {
                  hasCopied = false;
                  _switchWidget = Icon(
                    Icons.copy_rounded,
                    key: UniqueKey(),
                    color: Colors.white,
                    size: 20,
                  );
                  refresh();
                });
              },
            ),
          ),
        )
      ],
    );
  }

  void refresh() {
    if (mounted) setState(() {});
  }
}
