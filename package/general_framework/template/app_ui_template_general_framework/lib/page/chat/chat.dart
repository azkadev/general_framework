import 'package:flutter/material.dart';
import 'package:general_framework/flutter/ui/ui.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
