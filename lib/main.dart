import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

// A Column Widget {Multi Child Layout}
// Aligns all its children vertically
//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            verticalDirection: VerticalDirection.up,
            // the above property changes the direction from the which the
            // children are starting to align. Possible values are "up" and "down"

            mainAxisSize: MainAxisSize.min,
            // this will shrink the main axis {vertical in case of columns} to
            // min unlike previously where the column took all of the
            // horizontal space.

            mainAxisAlignment: MainAxisAlignment.end,
            // this determines the position of the children in the column
            // i.e start, end, center, etc.
            // the other values are spaceAround, spaceBetween and spaceEvenly
            // which are very similar to flexBox in css.
            // NOTE : mainAxis will change when it is column or row.

            crossAxisAlignment: CrossAxisAlignment.stretch,
            // crossAxis is the non-primary axis, horizontal in case of Column
            // "stretch" value makes the children all the available space in
            // the container wrt to this axis
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text("Container1"),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blueGrey,
                child: Text("Container2"),
              ),
              SizedBox(
                height: 20.0,
                // a sized box is used to make space between the column items
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text("Container3"),
              ),
              Container(
                width: double.infinity,
                // this sets the width of the container to "infinity"
                // this container is to increase the width of the column
                // and then the rest of the containers will appear in the
                // center of the screen
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Row :
// All the properties talked about in the above section for columns apply to Rows
// just with the difference of direction
// main axis will become horizontal instead of vertical
// cross axis will be vertical
// width and height will have different implications in elements like SizedBox
