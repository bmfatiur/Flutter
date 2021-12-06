//Output: https://ufile.io/g7y86ugt

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Button(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String outlinedMsg = "Outlined Button";
  String elevatedMsg = "Elevated Button";
  String textMsg = "Texted Button";
  int count = 0;
  double containerWidth = 100, containerHeight = 50;
  Color containerColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              outlinedMsg,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  outlinedMsg = "Button is clicked";
                });
              },
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  primary: Colors.cyan,
                  elevation: 20,
                  textStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              elevatedMsg,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                  if (elevatedMsg == "Elevated Button") {
                    elevatedMsg = "Elevated Button Pressed $count times";
                  } else {
                    elevatedMsg = "Elevated Button";
                  }
                });
              },
              child: Text(
                'Elevated Button',
                style: TextStyle(fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 20,
                shadowColor: Colors.black,
                onSurface: Colors.black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(color: containerColor),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (containerWidth == 100) {
                    containerWidth = 400;
                    containerColor = Colors.greenAccent;
                  } else {
                    containerWidth = 100;
                    containerColor = Colors.yellowAccent;
                  }
                });
              },
              child: Text(
                'Text Button',
                style: TextStyle(fontSize: 25),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  primary: Colors.white,
                  elevation: 20,
                  shadowColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

