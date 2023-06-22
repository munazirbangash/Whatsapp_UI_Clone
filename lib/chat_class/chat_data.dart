import 'package:flutter/material.dart';

class Chats{
  String name;
  String message;
  String  time;
  String  leading;

  Chats(this.name,this.message,this.time,this.leading);
}

class Status {
  String name;
  String time;
  String leading;

  Status(this.name,this.time,this.leading);
}

class Calls{
  String name;
  String duration;
  String leading;
  final Icon callType;

  static Icon callRecieved = const Icon(Icons.call_received,size: 15,color: Colors.green,);
  static Icon callMissed = const Icon(Icons.call_missed,size: 15,color: Colors.red,);

  Calls(this.name,this.duration,this.leading,this.callType);
}