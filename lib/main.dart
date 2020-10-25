import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

// Containers
// They are very similar to "div" in web development
// Containers with no children try to take all the space available,
// once children are added, the container sizes itself to its children
// REMEMBER : "Container" is a single-child widget {can only have one child}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            height: 100.0, // height and width just like html and css
            width: 100.0, // the value is pixels by default
            margin: EdgeInsets.all(20.0),
            // EdgeInsets.all gives equal margin on all sides

            // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            // the above line gives different margin for top/bottom and right/left

            // margin: EdgeInsets.fromLTRB(left, top, right, bottom),
            // the above lines gives different margins on all sides

            // margin: EdgeInsets.only(left: 30.0),
            // this gives margin at only one side that is specified

            padding: EdgeInsets.all(20.0),
            // all the rules of EdgeInsets works same with padding and margin
            // NOTE : padding and margin are just like as in web development
            color: Colors.white,
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}

// SafeArea
// This widget keeps all its content inside the bounds of the device so
// it is fully visible to the use. Earlier the widgets would overflow
// through components like notch, curved edges, etc.
