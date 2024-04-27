

import 'package:connectify/models/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Individual_chat extends StatefulWidget {
  const Individual_chat({super.key, required this.Chatmodel});
  final chatmodel Chatmodel;

  @override
  State<Individual_chat> createState() => _Individual_chatState();
}

class _Individual_chatState extends State<Individual_chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar:AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,

              )
            ],

          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.Chatmodel.name,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Text('Last seen on 12:55',style: TextStyle(
              fontSize: 13.5,
            ),),
          ],
        ),
          actions: [
             IconButton(
               icon: Icon(Icons.call),
               onPressed: (){},),
            PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext context){
                return[
                  PopupMenuItem(
                    value: 'View Contacts',
                      child: Text('View Contacts',)
                  ),
                  PopupMenuItem(
                      value: 'View Contacts',
                      child: Text('Hide Contacts',)
                  ),
                  PopupMenuItem(
                      value: 'View Contacts',
                      child: Text('Settings',)
                  ),

                ];
              },

            )

        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                     width: MediaQuery.of(context).size.width-55,
                      child: Card
                        (shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25)
                      ),
                          child: TextFormField(
                            maxLines: 5,
                              minLines: 1,
                            keyboardType: TextInputType.multiline,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                               suffixIcon: Row(
                                 mainAxisSize: MainAxisSize.min,//kya jadu
                                 children: [
                                   IconButton(onPressed: (){}, icon: Icon(Icons.attach_file))
                                 ],
                               ),
                              hintText: 'Type a message',
                              prefixIcon: IconButton(
                                icon:Icon(Icons.emoji_emotions_outlined), onPressed: () {  },
                              ),
                              contentPadding: EdgeInsets.all(5),
                            ),
                          ))),
                  CircleAvatar(),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
