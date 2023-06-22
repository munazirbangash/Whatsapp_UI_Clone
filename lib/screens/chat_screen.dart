import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/chat_class/chat_list.dart';
import '../chat_class/chat_data.dart';
import 'package:whatsapp_ui_clone/screens/call_screen.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ChatList().chat.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context,index){
            Chats chats  = ChatList().chat[index];
        return  ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chats.leading),
            radius: 20,

          ),
          title: Text(chats.name,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 15),
          ),
          subtitle: Text(chats.message,style: const TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only (top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(chats.time,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
        );

      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF008069),
        onPressed: (){},
        child: const Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
