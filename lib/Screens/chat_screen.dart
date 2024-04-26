import 'package:connectify/Common_widgets/chat_box.dart';
import'package:flutter/material.dart';

import '../models/chat.dart';


class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen> {
  List<chatmodel>chats=[
    chatmodel(
    currentMessage: 'Life is good',
    name: 'Picakchu',
      icon: 'Icons.person',
      isGroup: false,
      time: '12:29',
    ),
    chatmodel(
      currentMessage: 'I am Iron Man',
      name: 'IronMan',
      icon: 'Icons.person',
      isGroup: false,
      time: '12:29',
    )
  ];
  @override

  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text('Chat Screen')),
        ),
        body: ListView.builder(
          itemCount: chats.length,
            itemBuilder:(BuildContext context, index)=>
                chat_box(Chatmodel: chats[index]),
        ),
        );

  }
}

