  import 'package:flutter/material.dart';


class userProfile extends StatefulWidget {
    const userProfile({super.key});

    @override
    State<userProfile> createState() => _userProfileState();
  }

  class _userProfileState extends State<userProfile> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'username',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {},
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 16.0),
              ListTile(
                title: Text('Bio'),
                subtitle: Text('Hakuna Matata is my naam. Colgate is my kaam.'),
              ),
              ListTile(
                title: Text('Posts'),
                subtitle: Text('100'),
              ),
              ListTile(
                title: Text('Followers'),
                subtitle: Text('5000 M'),
              ),
              ListTile(
                title: Text('Following'),
                subtitle: Text('300'),
              ),
            ],
          ),
        ),
      );
    }
  }
