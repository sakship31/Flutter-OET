import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        body: SafeArea(
            child: Column(
          children: [
              SizedBox(
                    height: 30.0,
                  ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/ss.png'),
            ),
            Text(
              ' Sakshi Pandey',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Student',
              style: TextStyle(
                fontFamily: 'Path',
                fontSize: 15.0,
                letterSpacing: 2.5,
                color: Colors.black,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "pandey.sk@somaiya.edu",
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "123456789",

                    style: TextStyle(color: Colors.teal.shade900, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    ),
  );
}
