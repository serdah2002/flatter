import 'package:flutter/material.dart';



class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Ahmed Serdah',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Software engineer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(leading:Icon(Icons.email), title: Text('Email'), subtitle: Text('202010868@students.asu.edu.jo')),
            ListTile(leading:Icon(Icons.phone), title: Text('phone number'), subtitle: Text('+96683355898')),
            ListTile(leading:Icon(Icons.location_on), title: Text('Jordan'), subtitle: Text('Amman')),

          ],
        ),
      ),
    );
  }

}