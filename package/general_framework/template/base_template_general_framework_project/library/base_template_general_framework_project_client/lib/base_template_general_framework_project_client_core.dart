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
import 'dart:convert';

import 'package:base_template_general_framework_project_secret/base_template_general_framework_project_secret.dart';
import 'package:general_framework/core/client/client.dart';

/// base template general framework
class BaseTemplateGeneralFrameworkProjectClient extends GeneralFrameworkClient {
  final BaseTemplateGeneralFrameworkProjectSecret
      baseTemplateGeneralFrameworkProjectSecret;

  BaseTemplateGeneralFrameworkProjectClient({
    required this.baseTemplateGeneralFrameworkProjectSecret,
    required super.generalLibrary,
    required super.networkClientConnectionType,
    required super.generalFrameworkClientInvokeOptions,
    required super.generalFrameworkDatabase,
    super.eventEmitter,
    super.eventInvoke,
    super.eventUpdate,
    super.httpClient,
  }) : super(
          apiUrl: baseTemplateGeneralFrameworkProjectSecret.apiUrl,
        );

  @override
  FutureOr<void> ensureInitialized({
    required InvokeClientFunction<dynamic> onInvokeResult,
    required InvokeClientFunction<dynamic> onInvokeRequest,
    required InvokeClientValidationFunction<Map?> onInvokeValidation,
    required String currentPath,
  }) async {
    await super.ensureInitialized(
      currentPath: currentPath,
      onInvokeValidation:
          (parameters, generalFrameworkClientInvokeOptions) async {
        final Map result = await onInvokeValidationDefault(
                parameters, generalFrameworkClientInvokeOptions) ??
            {};
        if (result.isNotEmpty) {
          return result;
        }
        return await onInvokeValidation(
            parameters, generalFrameworkClientInvokeOptions);
      },
      onInvokeResult:
          (result, parameters, generalFrameworkClientInvokeOptions) async {
        await onInvokeResultDefault(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
        await onInvokeResult(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
      },
      onInvokeRequest:
          (result, parameters, generalFrameworkClientInvokeOptions) async {
        await onInvokeRequestDefault(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
        await onInvokeRequest(
          result,
          parameters,
          generalFrameworkClientInvokeOptions,
        );
      },
    );
  }

  FutureOr<Map?> onInvokeValidationDefault(
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) async {
    return null;
  }

  FutureOr<dynamic> onInvokeRequestDefault(
      Map<dynamic, dynamic> result,
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) {}

  FutureOr<dynamic> onInvokeResultDefault(
      Map<dynamic, dynamic> result,
      Map<dynamic, dynamic> parameters,
      GeneralFrameworkClientInvokeOptions
          generalFrameworkClientInvokeOptions) {}

  @override
  String decryptData({required String data}) {
    return baseTemplateGeneralFrameworkProjectSecret.crypto
        .decrypt(data_base64: data);
  }

  @override
  String encryptData({required Map data}) {
    return baseTemplateGeneralFrameworkProjectSecret.crypto
        .encrypt(data: json.encode(data));
  }
}
