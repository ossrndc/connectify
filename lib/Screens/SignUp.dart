import 'package:connectify/Common_widgets/Button.dart';
import 'package:connectify/Screens/Login.dart';
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
 //key
 final _signuformpkey =GlobalKey<FormState>();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmPasswordController=TextEditingController();

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
          child: Form(
            key:_signuformpkey,
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
                    controller:nameController,
                    prefixicon:Icon(Icons.person,size:35),
                    hintText:'Name'),

                Custom_Box(
                    prefixIconColor: Colors.black87,
                    controller:usernameController,
                    prefixicon:Icon(Icons.account_box_outlined,size:35),
                    hintText:'Username'),
                Custom_Box(
                    prefixIconColor: Colors.black87,
                    controller:emailController,
                    prefixicon:Icon(Icons.email_sharp,size:35),
                    hintText:'Email'),
                Custom_Box(
                    prefixIconColor: Colors.black87,
                    controller:passwordController,
                    prefixicon:Icon(Icons.password,size:35),
                    hintText:'Password'),
                Custom_Box(
                    prefixIconColor: Colors.black87,
                    controller:confirmPasswordController,
                    prefixicon:Icon(Icons.password,size:35),
                    hintText:'Confirm Password'),
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
              'Have account!? Login Here!',style: TextStyle(
                  fontSize: 22,
                 color: Colors.deepPurple,

            ),
            ) ),
            Button(
              onPressed: (){
                    Navigator.pushNamed(context, "/HomePage");
              },
                Text: 'SIGN UP', color: Colors.white, size: 37.0,
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
