import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/call_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: const Color(0xff128C7E),
          automaticallyImplyLeading: false,
          title: const Text("WhatsApp",style: TextStyle(letterSpacing: 1,color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500)),
          elevation: 1,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),

              ],

          bottom:  const   TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              splashFactory: NoSplash.splashFactory,
              tabs:[
                Text("Chats",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                Text("Status",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                Text("Calls",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
          ] ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),

          ],
        ),
        ),
    );
  }
}
