// import "package:flutter/material.dart";
// import "package:general_framework/flutter/material_ui.dart";
import "package:general_framework/flutter/material.dart";
// import "package:general_lib/general_lib.dart";

// import "package:path/path.dart";
void main(List<String> args) {
  print("oke");
  WidgetsFlutterBinding.ensureInitialized();
  // Dart.executable_type.printPretty();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
