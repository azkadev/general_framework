import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/dialog/core.dart';

import 'loading_controller.dart';
import 'loading_widget.dart'; 
enum LoadingGeneralFrameworkType{
  page,
  floating,
  widget,
}
class LoadingGeneralFramework {
  LoadingGeneralFramework();

  static Future<T?> show<T>({
    required BuildContext context,
    required LoadingGeneralFrameworkController loadingGeneralFrameworkController,
    bool barrierDismissible = false,
  }) async {
    return await context.showDialogFloatingGeneralFramework<T>(
      barrierDismissible: false,
      builder: (context, setState) {
        return LoadingGeneralFrameworkWidget(loadingGeneralFrameworkController: loadingGeneralFrameworkController, loadingGeneralFrameworkType: LoadingGeneralFrameworkType.floating,);
      },
    );
  }
}
