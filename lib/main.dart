import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

// Using padding in Widgets which don't support it
// The unsupported widget can be enclosed in a "Padding" widget
// The padding widget does not actually work like padding but like margin.
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
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
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
                            fontFamily: 'SourceSansPro'),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
