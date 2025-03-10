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
// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:async';

import 'package:general_lib/general_lib.dart';
import 'package:general_schema/base/core.dart';
import 'package:general_schema/client/core.dart';
import 'package:general_schema/database/database.dart';

class ExampleClientOnly extends GeneralSchemaClientOnly {
  ExampleClientOnly({
    required super.requestDefault,
  });

  @override
  FutureOr<void> dispose() async {
    return;
  }

  @override
  FutureOr<void> ensureInitialized({required generalSchemaRequest}) async {
    return;
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType>
      getDetailStatusDeviceSupportAsync() async {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  FutureOr<void> initialized() async {}

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return true;
  }

  @override
  bool isDeviceSupportSync() {
    return true;
  }

  @override
  FutureOr<dynamic> invokeRaw({required dynamic parameters}) {
    //  invokeRaw
    throw UnimplementedError();
  }
}

class ExampleClientEnsureInitialized {}

class ExampleClientDatabase
    extends GeneralSchemaDatabase<ExampleClientEnsureInitialized> {
  @override
  FutureOr<void> dispose() async {
    return;
  }

  @override
  FutureOr<void> ensureInitialized(
      {required ExampleClientEnsureInitialized generalSchemaRequest}) async {
    return;
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType>
      getDetailStatusDeviceSupportAsync() async {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  FutureOr<void> initialized() async {}

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return true;
  }

  @override
  bool isDeviceSupportSync() {
    return true;
  }
}

class JsonInvokeValueSchema {
  final Map rawData;
  JsonInvokeValueSchema({
    required this.rawData,
  });
}

class ExampleClientInvokeDefaultRequestSchema {}

class ExampleClient extends GeneralSchemaClient<
    ExampleClientEnsureInitialized,
    JsonScheme,
    ExampleClientInvokeDefaultRequestSchema,
    ExampleClientDatabase> {
  ExampleClient({
    required super.database,
    required super.requestDefault,
  });

  @override
  FutureOr<void> dispose() async {
    print("dispose");
    return;
  }

  @override
  FutureOr<void> ensureInitialized({
    required ExampleClientEnsureInitialized generalSchemaRequest,
  }) async {
    await database.ensureInitialized(
      generalSchemaRequest: generalSchemaRequest,
    );
    await database.initialized();
    return;
  }

  @override
  FutureOr<void> initialized() async {
    return;
  }

  @override
  FutureOr<GeneralSchemaDeviceStatusSupportType>
      getDetailStatusDeviceSupportAsync() {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  GeneralSchemaDeviceStatusSupportType getDetailStatusDeviceSupportSync() {
    return GeneralSchemaDeviceStatusSupportType.support;
  }

  @override
  FutureOr<GeneralSchemaLibraryStatusType> getLibraryStatusTypeAsync() async {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  GeneralSchemaLibraryStatusType getLibraryStatusTypeSync() {
    return GeneralSchemaLibraryStatusType.initialized;
  }

  @override
  FutureOr<bool> isDeviceSupportAsync() {
    return true;
  }

  @override
  bool isDeviceSupportSync() {
    return true;
  }

  @override
  FutureOr<JsonScheme> invokeRaw({
    required JsonScheme parameters,
  }) async {
    if (parameters.rawData["@type"] is String == false) {
      parameters.rawData["@type"] = "";
    }
    final String method = (parameters.rawData["@type"] as String).trim();
    if (method == "getVersion") {
      return JsonScheme(
        {
          "@type": "version",
          "version": "1.0.0",
        },
      );
    }
    return JsonScheme({
      "@type": "error",
      "message": "unknown_method",
      "description": "unnknown  ${method}"
    });
  }
}

void main(List<String> args) {
  ExampleClient exampleClient = ExampleClient(
    database: ExampleClientDatabase(),
    requestDefault: ExampleClientInvokeDefaultRequestSchema(),
  );

  exampleClient.invoke(
    parameters: JsonScheme(
      {
        "@type": "eror",
      },
    ),
  );

  print("done");
}
