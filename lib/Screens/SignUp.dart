import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:connectify/Common_widgets/Button.dart';
import 'package:connectify/Screens/Login.dart';
import '../Common_widgets/Custom_Box.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool textColorcheck = true;
  Color textColor = Colors.blue;
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _signupformKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void changecolor() {
    setState(() {
      textColor = textColorcheck ? Colors.lightBlueAccent : Colors.purple;
    });
  }

  void signUpWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print('User signed up: ${userCredential.user!.email}');
      // Navigate to the next screen after successful signup
           
         Navigator.pushNamed(context, "/MainPage");
            
    } catch (e) {
      print('Failed to sign up: $e');
      // Handle signup errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Form(
          key: _signupformKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Container(
                  width: 900,
                  height: 200,
                  child: Image.asset('lib/Utility/Images/cube.jpg'),
                ),
              ),
              Text(
                'REGISTER ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Custom_Box(
                top: 40.0,
                prefixIconColor: Colors.blueAccent.shade700,
                controller: nameController,
                prefixicon: Icon(Icons.person, size: 35),
                hintText: 'Name',
              ),
              Custom_Box(
                prefixIconColor: Colors.blueAccent.shade700,
                controller: usernameController,
                prefixicon: Icon(Icons.account_box_outlined, size: 35),
                hintText: 'Username',
              ),
              Custom_Box(
                prefixIconColor: Colors.blueAccent.shade700,
                controller: emailController,
                prefixicon: Icon(Icons.email_sharp, size: 35),
                hintText: 'Email',
              ),
              Custom_Box(
                prefixIconColor: Colors.blueAccent.shade700,
                controller: passwordController,
                prefixicon: Icon(Icons.password, size: 35),
                hintText: 'Password',
              ),
              Custom_Box(
                prefixIconColor: Colors.blueAccent.shade700,
                controller: confirmPasswordController,
                prefixicon: Icon(Icons.password, size: 35),
                hintText: 'Confirm Password',
              ),
              SizedBox(
                height: 9,
              ),
              TextButton(
                onPressed: () {
                  textColorcheck = !textColorcheck;
                  changecolor();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Have an account? Login Here!',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Button(
                onPressed: () => signUpWithEmailAndPassword(context),
                Text: 'SIGN UP',
                color: Colors.white,
                size: 37.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
