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

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: context.theme.primaryColor,
      ),
      drawer: Drawer(
        width: () {
          if (context.orientation.isLandscape) {
            return context.width / 4;
          }
          return context.width / 2;
        }(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.mediaQueryData.padding.top,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  context
                      .routerGeneralLibFlutter()
                      .pushNamed(routeName: "/settings");
                },
              ),
              SizedBox(
                height: context.mediaQueryData.padding.bottom,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height,
            minWidth: context.width,
          ),
          child: Column(
            children: [
              ChatMessageGeneralFrameworkWidget(
                isLoading: false,
                title: "",
                message: "",
                unreadCount: 0,
                date: DateTime.now(),
                contentPadding: EdgeInsets.all(5),
                onTap: () {},
              ),
              ChatMessageGeneralFrameworkWidget(
                isLoading: false,
                title: "",
                message: "",
                unreadCount: 0,
                date: DateTime.now(),
                contentPadding: EdgeInsets.all(5),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
