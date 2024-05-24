import 'package:general_framework/flutter/widgets/basic.dart';
import 'package:general_framework/flutter/widgets/framework.dart';
import 'package:general_framework/flutter/widgets/renderings.dart';
import 'package:general_framework/general_framework/general_framework.dart';

void main(List<String> args) {
  runApp(const MyApp(
    dapsa: "",
  ));
}

class MyApp extends GeneralFramework {
  final String dapsa;
  const MyApp({
    super.key,
    required this.dapsa,
  });
  @override
  GeneralFrameworkState<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends GeneralFrameworkState<MyApp> {
  String sapl = "";

  @override
  Widget build(context) {
    
    return const SizedBox();
  }
}
