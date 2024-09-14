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
import 'dart:async';

import 'package:flutter/src/widgets/framework.dart';
import 'package:general_framework/core/client/client.dart';
import 'package:general_framework/flutter/client/base.dart';

class ExampleClient extends GeneralFrameworkClient {
  ExampleClient({
    required super.generalLibrary,
    required super.apiUrl,
    required super.networkClientConnectionType,
    required super.generalFrameworkClientInvokeOptions,
  });

  @override
  String decryptData({required String data}) {
    // TODO: implement decryptData
    throw UnimplementedError();
  }

  @override
  String encryptData({required Map data}) {
    // TODO: implement encryptData
    throw UnimplementedError();
  }
}

class ExampleClientFlutter extends GeneralFrameworkClientFlutter {

  ExampleClientFlutter({
    required super.navigatorKey,
    required super.generalLibrary,
    required super.generalFrameworkClient,
  });
  @override
  FutureOr<void> ensureInitialized() async{
    await super.ensureInitialized();
  }

  @override
  Widget signPage() {
    // TODO: implement signPage
    throw UnimplementedError();
  }

  @override
  FutureOr onInvokeResult(Map result, Map parameters, GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions) {
    // TODO: implement onInvokeResult
    throw UnimplementedError();
  }
}
