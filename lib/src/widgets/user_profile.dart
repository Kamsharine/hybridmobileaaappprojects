import 'package:flutter/material.dart';
import 'package:assignment/main.dart';

class UserProfile extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  UserProfile({
    Key? key,
    @required this.data = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment Hybrid Mobile App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'User  Profile Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
