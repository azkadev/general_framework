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

import '../../config/configs.dart';
import '../span_node.dart';

///Tag: [MarkdownTag.input]
class InputNode extends MarkdownSpanNodeGeneralFrameworkWidget {
  /// UncompleteDocumentation
  final Map<String, String> attr;

  /// UncompleteDocumentation
  final MarkdownConfigGeneralFramework config;

  /// UncompleteDocumentation
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
  /// UncompleteDocumentation
  final CheckBoxBuilder? builder;

  /// UncompleteDocumentation
  const CheckBoxConfig({this.builder});

  @nonVirtual
  @override
  String get tag => MarkdownTag.input.name;
}

///the check box widget
class MCheckBox extends StatelessWidget {
  /// UncompleteDocumentation
  final bool checked;

  /// UncompleteDocumentation
  const MCheckBox({super.key, required this.checked});

  @override
  Widget build(BuildContext context) {
    return Icon(
      checked ? Icons.check_box : Icons.check_box_outline_blank,
      size: 20,
    );
  }
}
