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

import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/socket_connection.dart';
import 'package:http/http.dart';

enum GeneralFrameworkConnectionType {
  http,
  websocket,
  tcpsocket,
}

class GeneralFrameworkClientInvokeParameters {
  Duration duration_timeout;
  GeneralFrameworkConnectionType generalFrameworkConnectionType;
  bool is_invoke_throw_on_error;
  GeneralFrameworkClientInvokeParameters({
    required this.generalFrameworkConnectionType,
    required this.duration_timeout,
    required this.is_invoke_throw_on_error,
  }) {
    if (duration_timeout < const Duration(minutes: 1)) {
      duration_timeout = const Duration(minutes: 1);
    }
  }
}

class GeneralFrameworkClient {
  EventEmitter event_emitter = EventEmitter();
  GeneralFrameworkConnectionType general_framework_connection_type;
  Client http_client = Client();
  Crypto secret_crypto;
  WebSocketClient webSocketClient = WebSocketClient("");
  TcpSocketClient tcpSocketClient = TcpSocketClient(host: "0.0.0.0", port: 8080);
  GeneralFrameworkClientInvokeParameters generalFrameworkClientInvokeParameters_default = GeneralFrameworkClientInvokeParameters(
    generalFrameworkConnectionType: GeneralFrameworkConnectionType.http,
    duration_timeout: const Duration(minutes: 1),
    is_invoke_throw_on_error: true,
  );
  String event_update;
  String event_invoke;
  GeneralFrameworkClient({
    this.event_invoke = "update",
    this.event_update = "invoke",
    EventEmitter? eventEmitter,
    required this.secret_crypto,
    required this.general_framework_connection_type,
    Client? httpClient,
    Duration? duration_timeout,
    bool is_invoke_throw_on_error = false,
  }) {
    if (duration_timeout != null) {
      generalFrameworkClientInvokeParameters_default.duration_timeout = duration_timeout;
    }
    generalFrameworkClientInvokeParameters_default.is_invoke_throw_on_error = is_invoke_throw_on_error;

    if (eventEmitter != null) {
      event_emitter = eventEmitter;
    }
    if (httpClient != null) {
      http_client = httpClient;
    }
  }

  FutureOr<void> ensureInitialized() async {
    if (general_framework_connection_type == GeneralFrameworkConnectionType.websocket) {
      await webSocketClient.connect(onSocketData: onSocketData, onSocketConnection: onSocketConnection);
    }
    if (general_framework_connection_type == GeneralFrameworkConnectionType.tcpsocket) {
      await tcpSocketClient.connect(onSocketData: onSocketData, onSocketConnection: onSocketConnection);
    }
  }

  Future<void> onSocketData(dynamic data) async {
    Map result = await Future(() async {
      try {
        if (data is String) {
          return json.decode(decryptData(data: data));
        }
        if (data is Map) {
          return data;
        }
        if (data is List<int> || data is Uint8List) {
          return json.decode(decryptData(data: utf8.decode(data, allowMalformed: true)));
        }
      } catch (e) {}
      return {};
    });
    if (result.isNotEmpty) {
      emit(event_name: event_update, data: result);
    }
  }

  FutureOr<void> onSocketConnection(SocketConnection socketConnection) {
    emit(event_name: event_update, data: socketConnection.toJson());
  }

  String encryptData({
    required Map data,
  }) {
    return secret_crypto.encrypt(data: json.encode(data));
  }

  String decryptData({
    required String data,
  }) {
    return secret_crypto.decrypt(data_base64: data);
  }

  String? encryptDataOrNull({
    required Map data,
  }) {
    try {
      return encryptData(data: data);
    } catch (e) {
      return null;
    }
  }

  String? decryptDataOrNull({
    required String data,
  }) {
    try {
      return decryptData(data: data);
    } catch (e) {
      return null;
    }
  }

  EventEmitterListener on({
    required String event_name,
    Object? context,
    required FutureOr<dynamic> Function(Map update) callback,
    required FutureOr<dynamic> Function(Object e, StackTrace stackTrace) onError,
  }) {
    return event_emitter.on(event_name, context, (ev, context) async {
      try {
        Object? data = ev.eventData;
        if (data is Map) {
          await callback(data);
        }
      } catch (e, stack) {
        await onError(e, stack);
      }
    });
  }

  void emit({
    required String event_name,
    Object? sender,
    required Object data,
  }) {
    return event_emitter.emit(
      event_name,
      sender,
      data,
    );
  }

  GeneralFrameworkClientInvokeParameters _getPArams({
    required GeneralFrameworkClientInvokeParameters? generalFrameworkClientInvokeParameters,
    required GeneralFrameworkClientInvokeParameters generalFrameworkClientInvokeParametersDefault,
  }) {
    return generalFrameworkClientInvokeParameters ?? generalFrameworkClientInvokeParametersDefault;
  }

  Future<Map> invokeRaw({
    required Map parameters,
    required String? extra,
    required GeneralFrameworkClientInvokeParameters? generalFrameworkClientInvokeParameters,
  }) async {
    GeneralFrameworkClientInvokeParameters invoke_parameters = _getPArams(
      generalFrameworkClientInvokeParameters: generalFrameworkClientInvokeParameters,
      generalFrameworkClientInvokeParametersDefault: generalFrameworkClientInvokeParameters_default,
    );
    if (parameters["@type"] is String == false) {
      parameters["@type"] = "";
    }

    String method_name = (parameters["@type"] as String).trim();
    if (method_name.isEmpty) {
      return {"@type": "error", "message": "method_must_be_not_empty"};
    }
    extra ??= generateUuid(10);
    parameters["@extra"] = extra;
    String parameter_encrypt = (encryptDataOrNull(data: parameters) ?? "").trim();
    if (parameter_encrypt.isEmpty) {
      return {
        "@type": "error",
        "message": "crypto_error",
      };
    }

    Map? result = await Future<Map>(() async {
      // online_request
      if ((invoke_parameters).generalFrameworkConnectionType == GeneralFrameworkConnectionType.http) {
        Uri url = Uri.parse("");
        Map<String, String> headers = <String, String>{
          "Accept": "*/*",
          "Content-Type": "text/plain",
        };
        if (Dart.isWeb) {
          headers["from-platform"] = "web";
        } else {
          headers["from-platform"] = Dart.operatingSystem.trim().toLowerCase();
        }
        headers["from-client-type"] = Dart.executable_type.name;
        Response response = await Future(() async {
          return await http_client.post(url, headers: headers, body: parameter_encrypt);
        });

        Map result = () {
          try {
            return json.decode(decryptData(data: response.body));
          } catch (e) {}
          return {};
        }();
        result.removeByKeys(["@extra"]);
        if (result.isEmpty) {
          return {
            "@type": "error",
            "message": "time_out",
            "location_error": "client_side",
          };
        }
        return result;
      }

      if ([GeneralFrameworkConnectionType.tcpsocket, GeneralFrameworkConnectionType.websocket].contains(invoke_parameters.generalFrameworkConnectionType)) {
        bool is_send = await Future(() async {
          if (invoke_parameters.generalFrameworkConnectionType == GeneralFrameworkConnectionType.websocket) {
            await webSocketClient.send(value: utf8.encode(parameter_encrypt));
          } else {
            await tcpSocketClient.send(value: utf8.encode(parameter_encrypt));
          }
          return true;
        }).general_lib_execute(
          timeLimit: invoke_parameters.duration_timeout,
          onNullData: () {
            return false;
          },
          onTimeout: () {
            return false;
          },
        );

        if (is_send != true) {
          return {
            "@type": "error",
            "message": "time_out",
            "location_error": "client_side",
          };
        }

        Completer<Map> completer = Completer<Map>();
        EventEmitterListener emitterListener = on(
          event_name: event_invoke,
          callback: (update) {
            if (update["@extra"] == extra) {
              completer.complete(update);
            }
          },
          onError: (e, stackTrace) {},
        );

        Map result = await completer.future.general_lib_execute(
          timeLimit: invoke_parameters.duration_timeout,
          onTimeout: () {
            return {
              "@type": "error",
              "message": "time_out",
              "location_error": "client_side",
            };
          },
          onNullData: () {
            return {
              "@type": "error",
              "message": "time_out",
              "location_error": "client_side",
            };
          },
        );
        event_emitter.off(emitterListener);
        result.removeByKeys(["@extra"]);
        if (result.isEmpty) {
          return {
            "@type": "error",
            "message": "time_out",
            "location_error": "client_side",
          };
        }
        return result;
      }

      return {
        "@type": "error",
        "message": "unimplemented",
        "location_error": "client_side",
      };
    }).general_lib_execute(
      timeLimit: (invoke_parameters.generalFrameworkConnectionType == GeneralFrameworkConnectionType.http) ? invoke_parameters.duration_timeout : null,
      isThrowOnError: invoke_parameters.is_invoke_throw_on_error,
      onNullData: () {
        return {
          "@type": "error",
          "message": "time_out",
          "location_error": "client_side",
        };
      },
      onError: (error, stackTrace) {
        return {
          "@type": "error",
          "message": "crash",
          "location_error": "client_side",
        };
      },
      onTimeout: () {
        return {
          "@type": "error",
          "message": "time_out",
          "location_error": "client_side",
        };
      },
    );
    if (invoke_parameters.is_invoke_throw_on_error) {
      if (result["@type"] == "error") {
        throw result;
      }
    }
    return result;
  }

  Future<Map<dynamic, dynamic>> invoke({
    required Map<dynamic, dynamic> parameters,
    GeneralFrameworkClientInvokeParameters? generalFrameworkClientInvokeParameters,
    String? extra,
  }) async {
    return await invokeRaw(
      parameters: parameters,
      generalFrameworkClientInvokeParameters: generalFrameworkClientInvokeParameters,
      extra: extra,
    );
  }
}
