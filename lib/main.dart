import 'package:connectify/Screens/Login.dart';
import 'package:connectify/Screens/MainPage.dart';
import 'package:connectify/Screens/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


         routes: {

             "/" :(context) =>   Login(),
             "/SignUp":(context)=>SignUp(),
            "/HomePage":(context)=>Home_Page(),



         },
    );
  }
}



