import 'dart:ffi';

import 'package:connectify/Common_widgets/Button.dart';
import 'package:connectify/Screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Common_widgets/Custom_Box.dart';

class SignUp extends StatefulWidget {

 const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}

class _SignUpState extends State<SignUp> {
 bool textColorcheck = true;
 Color textColor=Colors.blue;
  TextEditingController namecontroller=TextEditingController();
  TextEditingController Usernamecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmpasswordcontroller=TextEditingController();

  void changecolor(){
    setState(() {
     textColor =textColorcheck?Colors.lightBlueAccent:Colors.purple;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height/7,
          ),
          child: Column(
            children: [
              Text('REGISTER ',style: TextStyle(
                color: Colors.blue,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              Custom_Box(
                top:40.0,
                prefixIconColor: Colors.black87,
                  controller:namecontroller,
                  prefixicon:Icon(Icons.person,size:35),
                  hintText:'Enter Name'),
              Custom_Box(
                  prefixIconColor: Colors.black87,
                  controller:namecontroller,
                  prefixicon:Icon(Icons.account_box_outlined,size:35),
                  hintText:'Enter Username'),
              Custom_Box(
                  prefixIconColor: Colors.black87,
                  controller:emailcontroller,
                  prefixicon:Icon(Icons.email_sharp,size:35),
                  hintText:'Enter Email'),
              Custom_Box(
                  prefixIconColor: Colors.black87,
                  controller:passwordcontroller,
                  prefixicon:Icon(Icons.password,size:35),
                  hintText:'Enter Password'),
              Custom_Box(
                  prefixIconColor: Colors.black87,
                  controller:confirmpasswordcontroller,
                  prefixicon:Icon(Icons.password,size:35),
                  hintText:'Enter ConfirmP Password'),
              SizedBox(
                height:9,
              ),
          TextButton(
              onPressed: (){
                textColorcheck=!textColorcheck;
                changecolor();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Login()
                  ),);

              }, child:Text(
            'Have an account!Login Here!',style: TextStyle(
                fontSize: 22,
               color: textColor,

          ),
          ) ),
          Button(
            onPressed: (){},
              Text: 'SIGN UP', color: Colors.white, size: 40.0,
          ),
            ],
          ),
        ),
      ),
    );
  }
}
