import 'package:connectify/Screens/Login.dart';
import 'package:connectify/Screens/SignUp.dart';
import 'package:connectify/Screens/chat_screen.dart';
import 'package:connectify/Screens/user_profile.dart';
import 'package:flutter/material.dart';


class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  int Selected_index=0;
   List<Widget>pages=<Widget>[
    //enter widgets for bottom navigation bar
    chat_screen(),
     Icon(
       Icons.contacts,
       size: 150,
     ),
     Icon(
       Icons.chat,
       size: 150,
     ),
  ];

  void onItemTapped(int index){
    setState(() {
      Selected_index = index;
    });  }


  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages.elementAt(Selected_index)),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
       backgroundColor: Colors.black,title: Center(
         child: Text('CONNECTIFY',style: TextStyle(
          color: Colors.white,
          fontSize: 29
               ),),
       ),
      ),
  
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
        currentIndex:Selected_index ,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outlined,color: Colors.white,),
            label: 'HOME',




              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts,color: Colors.white,),
            label: 'CONTACTS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            label: 'SETTINGS',
          )
        ],
      ),
    );
  }
}
