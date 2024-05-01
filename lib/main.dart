import 'package:connectify/Screens/Login.dart';
import 'package:connectify/Screens/MainPage.dart';
import 'package:connectify/Screens/SignUp.dart';
import 'package:connectify/Screens/splash_screen.dart';
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
            initialRoute: "Splash",

         routes: {
             "Splash":(context) =>  Splash(),
             "/" :(context) =>   Login(),
             "/SignUp":(context)=>SignUp(),
            "/MainPage":(context)=>Main_Page(),



         },
    );
  }
}



