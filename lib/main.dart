import 'package:connectify/Screens/Login.dart';
import 'package:connectify/Screens/MainPage.dart';
import 'package:connectify/Screens/SignUp.dart';
import 'package:connectify/Screens/splash_screen.dart';
import 'package:connectify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/SignUp": (context) => SignUp(),
        "/MainPage": (context) => Main_Page(),
      },
    );
  }
}
