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
