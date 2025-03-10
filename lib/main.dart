import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RobotCounter());
  }
}

//class to create a stateful widget
class RobotCounter extends StatefulWidget {
  @override
  RobotCounterState createState() => RobotCounterState();
}

//class to set the widget counter
class RobotCounterState extends State<RobotCounter> {
  int count = 0;
  void setCounter() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Robot dance moved: $count", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
