import 'package:flutter/material.dart';
import 'package:whatsapp_series/Screens/Home/Calls/callsscreen.dart';
import 'package:whatsapp_series/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_series/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_series/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
              text: "WhatsApp", height: 20, color: Colors.white,fontweight: FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Search.png")),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(children: [
          const CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}
