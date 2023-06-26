import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/chat_class/chat_data.dart';

class ChatList{
  List <Chats> chat = [
    Chats("Hammad", "Hi, I am using WhatsApp", "12:00 pm", "assets/abc.jpg"),
    Chats("Abubakar", "Hello, How are you.", "9:30 pm", "assets/c.png"),
    Chats("Kamran", "Hi, Welcome to WhatsApp", "1:40 am", "assets/d.jpg"),
    Chats("Ali Khan", " Standard abbreviations for  text.", "2:30 pm", "assets/c.png"),
    Chats("Ahmad", "Hi, Welcome to WhatsApp", "4:00 am", "assets/d.jpg"),
    Chats("03331234567", "Hi, I am using WhatsApp", "09:00 am", "assets/b.webp"),
    Chats("Hashim", "Hi, Welcome to WhatsApp", "10:45 pm", "assets/c.png"),
    Chats("03312345678", "Hi, Welcome to WhatsApp", "1:55 am", "assets/d.jpg"),
    Chats("Ahmad", "Hi, Welcome to WhatsApp", "8:30 pm", "assets/d.jpg"),
    Chats("Ali", " Standard abbreviations for  text.", "11:45 pm", "assets/c.png"),
    Chats("Farman", "Hi, I am using WhatsApp", "07:15 am", "assets/abc.jpg"),
    Chats("Ikram", "Hi, Welcome to WhatsApp", "12:45 pm", "assets/c.png"),

  ];
}

class StatusList{
  List <Status> status = [
    Status("Hammad",  "58 minutes ago", "assets/s1.jpeg"),
    Status("Abubakar", "12 minutes ago", "assets/s2.webp"),
    Status("Kamran",  "Today, 2:05 pm", "assets/s3.jpeg"),
    Status("Ali Khan",  "Yesterday, 8:30 am", "assets/s4.jpg"),
    Status("03331234567",  "Today, 4:45 pm", "assets/s5.jpg"),
    Status("Kamran",  "Today, 2:05 pm", "assets/s3.jpeg"),
    Status("Asfand",  "58 minutes ago", "assets/s1.jpeg"),
    Status("Ashraf", "Yesterday 9:00 am", "assets/s2.webp"),
    Status("03330000000",  "Today, 4:45 pm", "assets/s5.jpg"),




  ];
}

class CallList {
  List <Calls> calls = [
    Calls("Hammad", "19 June, 1:20 pm ", "assets/abc.jpg",Calls.callRecieved),
    Calls("Abubakar", "11 May, 4:30 am", "assets/d.jpg",Calls.callMissed),
    Calls("Kamran", "Today, 2:05 pm", "assets/c.png",Calls.callRecieved),
    Calls("Ali Khan", "Yesterday, 8:30 am", "assets/b.webp",Calls.callMissed),
    Calls("03331234567", "22 April, 9:20 pm", "assets/abc.jpg",Calls.callRecieved),
    Calls("Hamdan", "11 May, 4:30 am", "assets/d.jpg",Calls.callRecieved),
    Calls("03331234567", "22 April, 9:20 pm", "assets/abc.jpg",Calls.callMissed),

  ];
}