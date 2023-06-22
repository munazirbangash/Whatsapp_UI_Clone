import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/chat_class/chat_list.dart';
import 'package:whatsapp_ui_clone/chat_class/chat_data.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
           const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/prof.jpg"),
              radius: 20,
            ),
            title: Text(
              "My Status",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Tap to add status update",
              style: TextStyle(
                  color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w700),
            ),
          ),
         const  Divider(),
          const  Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Recent updates",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: StatusList().status.length,
                itemBuilder: (context, index) {
                  Status stats = StatusList().status[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(stats.leading,),
                          radius: 18,
                        ),
                        title: Text(
                          stats.name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          stats.time,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
      floatingActionButton:Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 80,
            right: 10,

            child: FloatingActionButton(
            backgroundColor: Colors.white60,
            onPressed: (){},shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)), child:  const Icon(Icons.edit,color: Colors.black,),),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton(
                backgroundColor: const Color(0xFF008069),
                onPressed: (){},shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),child: const Icon(Icons.camera_alt_outlined,color: Colors.white,),))
        ],
      )

    );
  }
}
