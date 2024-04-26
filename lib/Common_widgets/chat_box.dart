import 'package:connectify/Screens/individual_chat.dart';
import 'package:connectify/models/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class chat_box extends StatefulWidget {
  const chat_box({super.key, required this.Chatmodel});
  final chatmodel Chatmodel;
  @override
  State<chat_box> createState() => _chat_boxState();
}

class _chat_boxState extends State<chat_box> {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Individual_chat(Chatmodel:widget.Chatmodel ,)));
      },

      child: ListTile(
         leading: CircleAvatar(),

          trailing: Text(
           widget.Chatmodel.time,
          ),

          title: Text(
            widget.Chatmodel.name
          ),

          subtitle: Text(
            widget.Chatmodel.currentMessage
          ),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black12,width: 1,),

        ),

        textColor: Colors.black,
          splashColor: Colors.blueAccent,
          selectedTileColor: Colors.blue,

      ),
    ) ;
  }
}
