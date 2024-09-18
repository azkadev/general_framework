import 'package:flutter/material.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            color: context.theme.primaryColor,
            icon: const RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.more_horiz_outlined),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    context.routerGeneralLibFlutter().pushNamedAndRemoveUntil(
                        routeName: "/sign",
                        arguments: null,
                        removeRouteName: "/");
                  },
                  child: Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
