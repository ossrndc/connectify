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
        backgroundColor:Colors.black12,
        body:SingleChildScrollView(
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:0,bottom:0),
            child: Container(
              width:900,
              height:300,
              child: Image.asset('lib/Utility/Images/cube.jpg'
              ),
            ),
          ),
        Text('LOGIN ',style: TextStyle(
        color: Colors.blue,
        fontSize: 50,
        fontWeight: FontWeight.bold,
        ),),
            Custom_Box(
             top:40.0,
              prefixIconColor: Colors.blueAccent.shade700,
               controller:Usernamecontroller,
                 prefixicon:Icon(Icons.person,size:35),
                  hintText:'Username',
                  style: TextStyle(color:Colors.red)
            ),

           Custom_Box(
             top: 20,
        prefixIconColor: Colors.blueAccent.shade700,
        controller:passwordcontroller,
        prefixicon:Icon(Icons.password,size:35),
        hintText:'Password ',
        style: TextStyle(color:Colors.red)
        ),
           SizedBox(
         height: 40,
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              TextButton(
                  onPressed: (){},
                  child:Text(
                    'Forget Password?',style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,

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
        onPressed: (){
            Navigator.pushNamed(context,"/SignUp");
        },
        Text: 'LOGIN', color: Colors.white, size: 40.0,
        ),
        ],
        ),
    ),
    );
    }
}




