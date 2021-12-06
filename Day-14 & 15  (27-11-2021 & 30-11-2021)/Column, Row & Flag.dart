//Output: https://ufile.io/pvgl1ein

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Flag(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flag'),
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 370,
                height: 70,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.red, width: 5),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Bangladesh National Flag',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 300,
                color: Colors.green,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(25),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 6; i++)
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.local_pizza),
                            Text(
                              'Pizza',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueAccent,
                        ),
                      )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 6; i++)
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.usb),
                            Text(
                              'USB',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown,
                        ),
                      )
                  ],
                ),
              ),
              for (var i = 0; i < 5; i++)
                Container(
                  width: 450,
                  height: 100,
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.yard,
                        size: 50,
                      ),
                      Text(
                        '  Yard',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey),
                )
            ],
          ),
        ));
  }
}

