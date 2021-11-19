/*
part 1: https://imgur.com/efjnNfG
part 2: https://imgur.com/h3IF8iE
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text & Bottom Nav Bar'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
          child: Column(
        children: [
          RichText(
            text: TextSpan(
                text: 'Text Widget Example',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.red, offset: Offset(10, 10)),
                      Shadow(
                          color: Colors.blue,
                          offset: Offset(15, 25),
                          blurRadius: 1)
                    ])),
          ),
          SizedBox(
            height: 40,
          ),
          Text('Rich Text Example',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          RichText(
            text: TextSpan(
                text: 'This is 1st line. ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: 'This is second line.\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                          fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'This is the last line',
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              backgroundColor: Colors.blueAccent),
                        )
                      ],
                      recognizer: TapGestureRecognizer())
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          Text('Animated Text Example',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          AnimatedTextKit(animatedTexts: [
            WavyAnimatedText('This is wavy animated text'),
            FadeAnimatedText('Fade Animated Text'),
            TypewriterAnimatedText('TypeWriter Animated Text'),
            TyperAnimatedText('Type Animated Text')
          ], repeatForever: true)
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
        hoverColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.cyan,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back_ios_outlined),
                label: 'Back',
                tooltip: 'BACK'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                tooltip: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.crop_square_outlined),
                label: 'Apps',
                tooltip: 'APPS')
          ]),
    );
  }
}
