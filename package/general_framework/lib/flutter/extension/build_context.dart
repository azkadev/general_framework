import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/alert/alert.dart';
import 'package:general_lib/general_lib.dart';

extension BuildContextGeneralFrameworkFlutterExtension on BuildContext {
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
            return (data["message"] as String).toLowerCase().split("_").map((e) => e.toUpperCaseFirstData()).join(" ");
          },
        ),
      );
      return true;
    }
    return false;
  }
}
