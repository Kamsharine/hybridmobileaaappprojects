import 'package:assignment/src/widgets/Users.dart';
import 'package:assignment/src/widgets/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:assignment/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment Hybrid Mobile'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Welcome to the Home Page of Hybrid Mobile Application Assignment',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text('Go to Users'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        Users(data: 'Welcome to the User Page!'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Go to User_Profile'),
              onPressed: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        UserProfile(data: 'Welcome to the user_profile page!'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
