import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//create a class for stateless widget to override the home page
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //call Robot counter class to start  the count down
    return MaterialApp(home: RobotCounter());
  }
}

//create stateful widget to create the counter
class RobotCounter extends StatefulWidget {
  //call the robot counter function to set the counter
  @override
  RobotCounterState createState() => RobotCounterState();
}

// a class to set the counter
class RobotCounterState extends State<RobotCounter> {
  int count = 0;
  void countDown() {
    setState(() {
      count = count + 1;
    });
  }

  //override the screen with the new counter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My App counter',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of clicks: $count', style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: countDown,
              child: Text(
                '+',
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
