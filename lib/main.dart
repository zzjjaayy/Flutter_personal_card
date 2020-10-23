import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// One of the most powerful features of flutter is "Hot Reload"
// To use this features, you need to use Stateless and Stateful widgets
// {will be explained later}
// doesn't have to build the whole code again but to just load the
// parent build function where the change is made.
// this many times doesn't even result in data reset which is obvious in rebuild.

// Flutter "Hot Restart" resets the state of the app i.e the data reset
// but it still takes way less time than rebuilding
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(),
      ),
    );
  }
}
