import 'package:flutter/material.dart';
import 'package:connectify/Common_widgets/Custom_Box.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/Utility/Images/cube.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Enter your email to reset password',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Custom_Box(
                prefixIconColor: Colors.blueAccent.shade700,
                controller: TextEditingController(),
                prefixicon: Icon(Icons.email, size: 35),
                hintText: 'Email',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement password reset logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Reset Password',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
