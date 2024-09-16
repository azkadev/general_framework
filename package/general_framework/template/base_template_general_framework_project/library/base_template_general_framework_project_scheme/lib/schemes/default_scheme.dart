// ignore_for_file: non_constant_identifier_names

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

import 'package:base_template_general_framework_project_scheme/schemes/api_scheme.dart';
import 'package:general_lib/general_lib.dart';

class BaseTemplateGeneralFrameworkProjectSchemeDefault {
  static final List<String> api_methods = api_schemes.map((e) => e["@type"].toString()).toList();
  static String utils_generateSessionToken() {
    return generateUuid(25, text: "0123456789abcdefghijklmnopqrstuvwxyz-_");
  }

  static Map<String, dynamic> account({
    required GeneralLibSchemeType generalLibSchemeType,
  }) {
    final Map<String, dynamic> json_data = {
      "@type": "account${generalLibSchemeType.toSpesialType()}",
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "bio": "",
    };

    if (generalLibSchemeType == GeneralLibSchemeType.database) {
      json_data.general_lib_extension_updateForce(data: <String, dynamic>{
        "password": "",
      });
    }
    return json_data;
  }

  static Map<String, dynamic> session({
    required GeneralLibSchemeType generalLibSchemeType,
  }) {
    final Map<String, dynamic> json_data = {
      "@type": "session${generalLibSchemeType.toSpesialType()}",
      "account_user_id": 0,
      "token": "",
    };

    if (generalLibSchemeType == GeneralLibSchemeType.database) {
      // json_data.general_lib_extension_updateForce(data: <String, dynamic>{

      // });
    } else if (generalLibSchemeType == GeneralLibSchemeType.isar) {
      json_data.general_lib_extension_updateForce(data: <String, dynamic>{
        //
        //
        "is_default": false,
      });
    }
    return json_data;
  }

  static Map<String, dynamic> message({
    required GeneralLibSchemeType generalLibSchemeType,
  }) {
    final Map<String, dynamic> json_data = {
      "@type": "message${generalLibSchemeType.toSpesialType()}",
      "is_outgoing": false,
      "message_id": 0,
      "from_user_id": 0,
      "text": "",
      "date": 0,
      "update_date": 0,
      "status": "",
    };

    if (generalLibSchemeType == GeneralLibSchemeType.database) {
      json_data.general_lib_extension_updateForce(data: <String, dynamic>{
        "chat_ids": [0],
      });
    } else if (generalLibSchemeType == GeneralLibSchemeType.scheme) {
      json_data.general_lib_extension_updateForce(data: <String, dynamic>{
        "chat_id": 0,
      });
    }
    return json_data;
  }
}
