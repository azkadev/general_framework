// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class AppUiTemplateGeneralFramework extends StatefulWidget {
  const AppUiTemplateGeneralFramework({super.key});

  @override
  State<AppUiTemplateGeneralFramework> createState() =>
      _AppUiTemplateGeneralFrameworkState();
}

class _AppUiTemplateGeneralFrameworkState
    extends State<AppUiTemplateGeneralFramework> {
  bool is_loading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      load();
    });
  }

  void load() async {
    if (is_loading) {
      return;
    }
    setState(() {
      is_loading = true;
    });
    Future(() async {
      await Future.delayed(Durations.extralong4);

      // context.routerGeneralLibFlutter().pushReplacementNamed(routeName: "/landing");
      // return;
      if (Dart.isWeb) {
        context
            .routerGeneralLibFlutter()
            .pushReplacementNamed(routeName: "/landing");
      } else {
        context
            .routerGeneralLibFlutter()
            .pushReplacementNamed(routeName: "/sign");
      }
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: context.theme.indicatorColor,
        ),
      ),
    );
  }
}
