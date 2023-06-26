import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/chat_class/chat_list.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import '../chat_class/chat_data.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: CallList().calls.length,
            itemBuilder: (BuildContext context, index) {
              Calls call = CallList().calls[index];

              return Column(
                children: [

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(call.leading),
                      radius: 18,
                    ),
                    title: Text(
                      call.name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(
              children: [
                Container(
                  child:call.callType,
              ),
                Text(
                  call.duration,
                  style:  const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
              ),
                    trailing: const Icon(
                      Icons.call,
                      size: 25,
                      color: Color(0xFF008069),
                    ),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF008069),
        onPressed: (){},child: const Icon(Icons.add_ic_call_rounded,color: Colors.white,),),
    );
  }
}
