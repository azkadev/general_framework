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
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:general_framework/core/api/api.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_schema/general_schema.dart';
import 'package:http/http.dart';
import 'package:server_universe/native.dart';
import 'package:server_universe/native/core/type_handlers/websocket_type_handler.dart';
import 'package:io_universe/io_universe.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class GeneralFrameworkApiServerEnsureInitialized {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String currentPath;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Client httpClient;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  GeneralFrameworkApiServerEnsureInitialized({
    required this.currentPath,
    required this.httpClient,
  });
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
abstract class GeneralFrameworkApiServer<
        AGeneralFrameworkApiServerEnsureInitializedValue extends GeneralFrameworkApiServerEnsureInitialized,
        AGeneralFrameworkApiSchemaApiValue extends GeneralFrameworkApiBase>
    extends GeneralSchemaServer<
        AGeneralFrameworkApiServerEnsureInitializedValue,
        AGeneralFrameworkApiSchemaApiValue> {
  /// UncompleteDocumentation
  final ServerUniverseNative serverUniverse;

  /// UncompleteDocumentation
  final String pathApi;

  /// UncompleteDocumentation
  final String pathWebSocket;

  /// UncompleteDocumentation
  GeneralFrameworkApiServer({
    required this.serverUniverse,
    this.pathApi = "/api",
    this.pathWebSocket = "/ws",
    required super.generalSchemaApi,
  });

  /// UncompleteDocumentation
  String encryptData({
    required Map data,
  });

  /// UncompleteDocumentation

  String decryptData({
    required String data,
  });

  bool _isEnsureInitialized = false;
  @override
  FutureOr<void> ensureInitialized({
    required AGeneralFrameworkApiServerEnsureInitializedValue
        generalSchemaEnsureInitialized,
  }) async {
    await super.ensureInitialized(
      generalSchemaEnsureInitialized: generalSchemaEnsureInitialized,
    );
    if (_isEnsureInitialized) {
      return;
    }
    _isEnsureInitialized = true;
  }

  bool _is_initialized = false;

  @override
  FutureOr<void> initialized() async {
    if (_is_initialized) {
      return;
    }
    _is_initialized = true;
    {
      serverUniverse.all("*", cors());
      serverUniverse.all(pathApi, (req, res) async {
        try {
          final Map parameters = await Future(() async {
            final body = await req.body;
            if (body is Uint8List) {
              return json.decode(decryptData(data: utf8.decode(body)));
            } else if (body is String) {
              return json.decode(decryptData(data: body));
            }
            return {};
          });
          final result = await generalSchemaApi.invoke(
            invokeParameters: JsonScheme(parameters),
            invokeOptions: null,
          );
          return res.send(encryptData(data: result.toJson()));
        } catch (e) {
          return res.send(encryptData(data: {
            "@type": "error",
            "message": "server_error",
            "is_crash_on_server_side": true,
          }));
        }
      });
      serverUniverse.websocket(
        path: pathWebSocket,
        onWebSocket: () async {
          return ServerUniverseWebSocketConnection(
            onOpen: (websocket, httpRequest, httpResponse) {},
            onClose: (websocket, httpRequest, httpResponse) {},
            onError: (error, websocket, httpRequest, httpResponse) {},
            onMessage: (update, websocket, httpRequest, httpResponse) async {
              final Map parameters = () {
                try {
                  if (update is Uint8List) {
                    return json.decode(decryptData(data: utf8.decode(update)));
                  } else if (update is String) {
                    return json.decode(decryptData(data: update));
                  }
                } catch (e) {
                  return {"@type": "error", "message": "decrypt_error"};
                }
                return {};
              }();
              if (parameters["@type"] == "error" &&
                  parameters["message"] == "decrypt_error") {
                await websocket.close();
                return;
              }
              final result = await generalSchemaApi.invoke(
                invokeParameters: JsonScheme(parameters),
                invokeOptions: null,
              );
              return websocket.send(encryptData(data: result.toJson()));
            },
          );
        },
      );
    }
  }

  /// UncompleteDocumentation

  FutureOr<void> listen({
    int port = 3000,
    dynamic bindIp = '0.0.0.0',
  }) async {
    if (Dart.isWeb) {
      return;
    }
    final HttpServer httpServer = await serverUniverse.listen(
      port: port,
      bindIp: bindIp,
    );
    httpServer;
  }
}
