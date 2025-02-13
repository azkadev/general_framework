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
import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/ui.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

GeneralLibFlutterApp generalLibFlutterApp = GeneralLibFlutterApp();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: generalLibFlutterApp,
      builder: (themeMode, lightTheme, darkTheme, widget) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBarGeneralFrameworkWidget(
        key: globalKey,
        size: const Size.fromHeight(450),
        margin: const EdgeInsets.all(10),
        isAddPaddingTop: true,
        decorationBuilder: (context, decoration) {
          return decoration.copyWith(
            borderRadius: BorderRadius.circular(15),
            border: context.extensionGeneralLibFlutterBorderAll(),
            boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
          );
        },
        builder: (context) {
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("helo world"),
              Text("helo world"),
              Text("helo world"),
              Text("helo world"),
            ],
          );
        },
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: context.height, minWidth: context.width),
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              10,
              (index) {
                return Container(
                  height: globalKey.sizeRenderBox().height,
                  width: globalKey.sizeRenderBox().width,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBarGeneralFrameworkWidget(
        // margin: EdgeInsets.all(10),
        // isAddBottomBarPadding: true,
        decorationBuilder: (context, decoration) {
          return decoration.copyWith(
            color: context.theme.appBarTheme.backgroundColor?.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: context.extensionGeneralLibFlutterBoxShadows(),
          );
        },
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("helo world"),
              const Text("helo world"),
              const Text("helo world"),
              const Text("helo world"),
              SizedBox(
                height: context.mediaQueryData.padding.bottom,
              ),
            ],
          );
        },
      ),
    );
  }
}
