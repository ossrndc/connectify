import 'package:connectify/Screens/SignUp.dart';
import 'package:flutter/material.dart';

import '../Common_widgets/Button.dart';
import '../Common_widgets/Custom_Box.dart';

import 'package:connectify/Screens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Common_widgets/Button.dart';
import '../Common_widgets/Custom_Box.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool textColorCheck2 = true;
  Color textColor2 = Colors.blue;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void changeColor() {
    setState(() {
      textColor2 = textColorCheck2 ? Colors.lightBlueAccent : Colors.purple;
    });
  }

  Future<void> signIn(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      if (userCredential.user != null) {
      
        Navigator.pushNamed(context, "/MainPage");
      } else {
        
        print('Error signing in: User not found');
      }
    } catch (e) {
     
      print('Error signing in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 0),
              child: Container(
                width: 900,
                height: 300,
                child: Image.asset('lib/Utility/Images/cube.jpg'),
              ),
            ),
            Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Custom_Box(
              top: 40.0,
              prefixIconColor: Colors.blueAccent.shade700,
              controller: emailController,
              prefixicon: Icon(Icons.person, size: 35),
              hintText: 'Email',
            ),
            Custom_Box(
              top: 20,
              prefixIconColor: Colors.blueAccent.shade700,
              controller: passwordController,
              prefixicon: Icon(Icons.password, size: 35),
              hintText: 'Password',
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                  
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                textColorCheck2 = !textColorCheck2;
                changeColor();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Text(
                'No account? Register Here!',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              onPressed: () => signIn(context), 
              Text: 'LOGIN',
              color: Colors.white,
              size: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}