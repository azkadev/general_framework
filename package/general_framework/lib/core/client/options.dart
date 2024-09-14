
import 'package:general_lib/general_lib_core.dart';

class GeneralFrameworkClientInvokeOptions {
  final Duration durationTimeOut;
  final NetworkClientConnectionType networkClientConnectionType;
  final bool isInvokeThrowOnError;
  GeneralFrameworkClientInvokeOptions({
    required this.networkClientConnectionType,
    required this.durationTimeOut,
    required this.isInvokeThrowOnError,
  });

  GeneralFrameworkClientInvokeOptions copyWith({
    NetworkClientConnectionType? networkClientConnectionType,
    Duration? durationTimeOut,
    bool? isInvokeThrowOnError,
  }) {
    return GeneralFrameworkClientInvokeOptions(
      networkClientConnectionType: networkClientConnectionType ?? this.networkClientConnectionType,
      durationTimeOut: durationTimeOut ?? this.durationTimeOut,
      isInvokeThrowOnError: isInvokeThrowOnError ?? this.isInvokeThrowOnError,
    );
  }
}
