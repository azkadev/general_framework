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
import 'package:general_framework/flutter/ui/alert/alert.dart';
import 'package:general_lib/general_lib.dart';

/// UncompleteDocumentation
extension BuildContextGeneralFrameworkFlutterExtension on BuildContext {
  /// UncompleteDocumentation
  bool extensionGeneralFrameworkShowAlertError({
    required dynamic data,
  }) {
    if ((data is Map || data is JsonScheme) && data["@type"] == "error") {
      showAlertGeneralFramework(
        alertGeneralFrameworkOptions: AlertGeneralFrameworkOptions(
          title: "Error",
          isShowCloseButton: false,
          isShowCancelButton: false,
          builder: (context, alertGeneralFrameworkOptions) {
            if (data["message"] is String == false) {
              data["message"] = "";
            }
            return (data["message"] as String)
                .toLowerCase()
                .split("_")
                .map((e) => e.toUpperCaseFirstData())
                .join(" ");
          },
        ),
      );
      return true;
    }
    return false;
  }
}
