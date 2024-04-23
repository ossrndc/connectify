import 'package:connectify/Screens/SignUp.dart';
import 'package:flutter/material.dart';

import '../Common_widgets/Button.dart';
import '../Common_widgets/Custom_Box.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool textColorcheck2 = true;
  Color textColor2=Colors.blue;

  TextEditingController Usernamecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  void changecolor(){
    setState(() {
      textColor2 =textColorcheck2?Colors.lightBlueAccent:Colors.purple;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height/4,
    ),
    child: Column(
    children: [
    Text('LOGIN ',style: TextStyle(
    color: Colors.blue,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    ),),
        Custom_Box(
         top:40.0,
          prefixIconColor: Colors.black87,
           controller:Usernamecontroller,
             prefixicon:Icon(Icons.person,size:35),
              hintText:'Username'),

       Custom_Box(
    prefixIconColor: Colors.black87,
    controller:passwordcontroller,
    prefixicon:Icon(Icons.password,size:35),
    hintText:'Password '),
   SizedBox(
     height: 10,
   ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          TextButton(
              onPressed: (){},
              child:Text(
                'Forget Password?',style: TextStyle(
                fontSize: 22,
                color: Colors.black54,

              ),
              ) ),
        ],
      ),
    TextButton(
    onPressed: (){
    textColorcheck2=!textColorcheck2;
    changecolor();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>SignUp()
    ),);
    }, child:Text(
    'No account? Register Here!',style: TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 22,
    color: Colors.deepPurple,

    ),
    ) ),

    SizedBox(
      height: 10,
    ),

    Button(
    onPressed: (){},
    Text: 'LOGIN', color: Colors.white, size: 40.0,
    ),
    ],
    ),
    ),
    ),
    );
    }
}




