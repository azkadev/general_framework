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
// ignore_for_file: non_constant_identifier_names, unused_local_variable, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:general/core/core.dart';
import 'package:general_framework/core/client/options.dart';
import 'package:general_framework/core/database/database_core.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/socket_connection.dart';
import 'package:http/http.dart';

typedef GeneralFrameworkClientFunction<T extends GeneralFrameworkClient> = T
    Function();

typedef InvokeClientValidationFunction<T> = FutureOr<T> Function(
  Map parameters,
  GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions,
);

typedef InvokeClientFunction<T> = FutureOr<T> Function(
  Map result,
  Map parameters,
  GeneralFrameworkClientInvokeOptions generalFrameworkClientInvokeOptions,
);

abstract class GeneralFrameworkClientBaseCore {
  String encryptData({
    required Map data,
  }) {
    return json.encode(data);
  }

  String decryptData({
    required String data,
  }) {
    return data;
  }
}

/// GeneralFrameworkClient
/// is universal client for help you connection to rest api server super easy friendly
abstract class GeneralFrameworkClient<D extends GeneralFrameworkDatabase>
    implements GeneralFrameworkClientBaseCore {
  final WebSocketClient web_socket_client = WebSocketClient("");
  final TcpSocketClient tcp_socket_client = TcpSocketClient(host: "", port: 0);
  final EventEmitter event_emitter;
  final String eventUpdate;
  final String eventInvoke;
  final Client http_client;
  final NetworkClientConnectionType networkClientConnectionType;
  late final GeneralFrameworkClientInvokeOptions
      generalFrameworkClientInvokeOptions;
  final String apiUrl;
  final GeneralLibrary generalLibrary;
  final D generalFrameworkDatabase;
  late final InvokeClientValidationFunction<Map?> onInvokeValidation;
  // late final InvokeClientFunction<dynamic> onInvokeRequest;
  late final InvokeClientFunction<dynamic> onInvokeResult;

  late final String currentPath;
  final String pathApi;
  final String pathWebSocket;
  GeneralFrameworkClient({
    required this.pathApi,
    required this.pathWebSocket,
    required this.generalFrameworkDatabase,
    required this.generalLibrary,
    required this.apiUrl,
    required this.networkClientConnectionType,
    required this.generalFrameworkClientInvokeOptions,
    EventEmitter? eventEmitter,
    this.eventUpdate = "update",
    this.eventInvoke = "invoke",
    Client? httpClient,
  })  : event_emitter = eventEmitter ?? EventEmitter(),
        http_client = httpClient ?? Client();

  Uri get api_uri {
    return Uri.parse(apiUrl).replace(
      path: pathApi,
    );
  }

  Language language({
    String? languageCodeId,
  }) {
    return Language(
      languageCode: languageCodeId ?? "",
      regexpReplaces: [],
    );
  }

  bool is_initialized = false;

  /// call this method
  FutureOr<void> ensureInitialized({
    required InvokeClientFunction<dynamic> onInvokeResult,
    required InvokeClientValidationFunction<Map?> onInvokeValidation,
    required String currentPath,
  }) async {
    if (is_initialized) {
      return;
    }
    tcp_socket_client.host = api_uri.host;
    tcp_socket_client.port = api_uri.port;
    web_socket_client.url = api_uri
        .replace(
            scheme: (api_uri.scheme == "https") ? "wss" : "ws",
            path: pathWebSocket)
        .toString();

    this.onInvokeResult = onInvokeResult;
    this.onInvokeValidation = onInvokeValidation;
    this.currentPath = currentPath;
    await generalFrameworkDatabase.ensureInitialized(
      currentPath: currentPath,
      httpClient: http_client,
    );
    is_initialized = true;
    if (Dart.isWeb) {
      return;
    }
    if (networkClientConnectionType == NetworkClientConnectionType.tcpsocket) {
      await tcp_socket_client.connect(
        onSocketData: onSocketData,
        onSocketConnection: onSocketConnection,
      );
    } else if (networkClientConnectionType ==
        NetworkClientConnectionType.websocket) {
      await web_socket_client.connect(
          onSocketData: onSocketData, onSocketConnection: onSocketConnection);
    }
  }

  Future<void> onSocketData(dynamic data) async {
    final Map result = await Future(() async {
      try {
        if (data is String) {
          return json.decode(decryptData(data: data));
        }
        if (data is Map) {
          return data;
        }
        if (data is List<int> || data is Uint8List) {
          return json.decode(
              decryptData(data: utf8.decode(data, allowMalformed: true)));
        }
      } catch (e) {}
      return {};
    });
    if (result.isNotEmpty) {
      if (result.containsKey("@extra")) {
        emit(event_name: eventInvoke, data: result);
      } else {
        emit(event_name: eventUpdate, data: result);
      }
      result.clear();
    }
  }

  FutureOr<void> onSocketConnection(SocketConnection socketConnection) {
    emit(event_name: eventInvoke, data: socketConnection.toJson());
  }

  EventEmitterListener on({
    required String event_name,
    required FutureOr<dynamic> Function(Map update) callback,
    required FutureOr<dynamic> Function(Object e, StackTrace stackTrace)
        onError,
  }) {
    return event_emitter.on(
      eventName: event_name,
      onCallback: (listener, data) async {
        try {
          if (data is Map) {
            await callback(data);
          }
        } catch (e, stack) {
          await onError(e, stack);
        }
      },
    );
  }

  void emit({
    required String event_name,
    required Object data,
  }) {
    return event_emitter.emit(
      eventName: event_name,
      value: data,
    );
  }

  String utils_generateExtra({
    required int length,
    String schema = "0123456789abcdefghijklmnopqrstuvwxyz-_",
  }) {
    return generateUuid(length, text: schema);
  }

  String utils_getExtra({
    required Map parameters,
  }) {
    if (parameters["@extra"] is String == false) {
      parameters["@extra"] = utils_generateExtra(length: 10);
    }
    final String extra_procces = (parameters["@extra"] as String).trim();
    if (extra_procces.isEmpty) {
      parameters["@extra"] = utils_generateExtra(length: 10);
    } else {
      if (parameters["@extra"] != extra_procces) {
        parameters["@extra"] = extra_procces;
      }
    }
    return parameters["@extra"];
  }

  void utils_checkResult({
    required Map result,
  }) {
    if (result["@type"] is String == false) {
      result["@type"] = "";
    }
    final String method_name = (result["@type"] as String).trim();
    if (method_name.isEmpty) {
      result["@type"] = "error";
    }
    if (result["@type"] == "error") {
      if (result["message"] is String == false) {
        result["message"] = "";
      }
      final String error_message = (result["message"] as String).trim();
      if (error_message.isEmpty) {
        result["message"] = "unknown";
      }
    }
  }

  Future<Map> invokeRaw({
    required Map parameters,
    required GeneralFrameworkClientInvokeOptions?
        generalFrameworkClientInvokeOptions,
  }) async {
    if (parameters["@type"] is String == false) {
      parameters["@type"] = "";
    }
    final String method_name = (parameters["@type"] as String).trim();
    final String extra_parameters = utils_getExtra(
      parameters: parameters,
    );
    final GeneralFrameworkClientInvokeOptions invoke_parameters =
        generalFrameworkClientInvokeOptions ??
            this.generalFrameworkClientInvokeOptions;

    final Completer<Map> completer = Completer<Map>();
    late final EventEmitterListener listener;

    final Map result = await Future<Map>(() async {
      final NetworkClientConnectionType networkClientConnectionType =
          invoke_parameters.networkClientConnectionType;
      try {
        final Map invoke_validation =
            await onInvokeValidation(parameters, invoke_parameters) ?? {};
        if (invoke_validation.isNotEmpty) {
          return invoke_validation;
        }
        if (method_name.isEmpty) {
          return {"@type": "error", "message": "method_must_be_not_empty"};
        }

        final String parameter_encrypt = (encryptData(data: parameters)).trim();
        if (networkClientConnectionType == NetworkClientConnectionType.http) {
          final Map<String, String> headers = <String, String>{
            "Accept": "*/*",
            "Content-Type": "text/plain",
          };
          if (Dart.isWeb) {
            headers["from-platform"] = "web";
          } else {
            headers["from-platform"] =
                Dart.operatingSystem.trim().toLowerCase();
          }
          headers["from-client-type"] = Dart.executable_type.name;
          final Response response = await http_client.post(api_uri,
              headers: headers, body: parameter_encrypt);
          completer.complete(json.decode(decryptData(data: response.body)));
        } else if ([
          NetworkClientConnectionType.tcpsocket,
          NetworkClientConnectionType.websocket
        ].contains(networkClientConnectionType)) {
          if (networkClientConnectionType ==
              NetworkClientConnectionType.websocket) {
            await web_socket_client.send(value: utf8.encode(parameter_encrypt));
          } else {
            await tcp_socket_client.send(value: utf8.encode(parameter_encrypt));
          }
          listener = on(
            event_name: eventInvoke,
            callback: (update) async {
              if (update["@extra"] == extra_parameters) {
                completer.complete(update.clone());
              }
            },
            onError: (e, stackTrace) {},
          );
        } else {
          completer.complete({
            "@type": "error",
            "message": "unimplemented",
          });
        }
        final Map result_invoke = await completer.future;
        try {
          event_emitter.off(listener: listener);
        } catch (e) {}
        return result_invoke;
      } catch (e) {
        if (e is Map) {
          if (e["@type"] is String == false) {
            e["@type"] = "error";
          }
          if (e["message"] is String == false) {
            e["message"] = "crash_client_side";
          }
          return e;
        }
        if (e is ClientException) {
          return {
            "@type": "error",
            "message": "network_connection_bad",
          };
        }
        return {"@type": "error", "message": "crash_client_side"};
      }
    }).timeout(
      invoke_parameters.durationTimeOut,
      onTimeout: () {
        return {
          "@type": "error",
          "message": "timeout",
        };
      },
    );
    try {
      event_emitter.off(listener: listener);
    } catch (e) {}
    try {
      if (completer.isCompleted == false) {
        completer.complete({
          "@type": "error",
        });
      }
    } catch (e) {}
    utils_checkResult(result: result);
    await onInvokeResult(result, parameters, invoke_parameters);
    if (result["@type"] == "error") {
      if (invoke_parameters.isInvokeThrowOnError) {
        throw result;
      }
    }
    return result;
  }

  Future<Map> invoke({
    required Map parameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
  }) async {
    return await invokeRaw(
      parameters: parameters,
      generalFrameworkClientInvokeOptions: generalFrameworkClientInvokeOptions,
    );
  }

  FutureOr<T> invokeBuilder<T>({
    required Map parameters,
    GeneralFrameworkClientInvokeOptions? generalFrameworkClientInvokeOptions,
    required FutureOr<T> Function(Map result) onResult,
  }) async {
    return await onResult(await invoke(
        parameters: parameters,
        generalFrameworkClientInvokeOptions:
            generalFrameworkClientInvokeOptions));
  }
}
