import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

// Using icons in flutter app :
// Instead of using image resources for icons, a "Icon" widget is used.
// It adds flexibility and it is not displayed but drawn.
// to get different icons go to -> https://www.materialpalette.com/icons
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.png'),
              ),
              Text(
                "Jay Rathod",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone, // the "Icons" class supports Material icons
                      // size: 100.0, // for changing size of the icon
                      color: Colors.teal.shade500,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "+91 112 2334 455",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[900],
                          // the [] brackets are used for defining shade {the higher -> the darker}
                          // It can also be done as "teal.shade900"
                          fontFamily: 'SourceSansPro'),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal.shade500,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
