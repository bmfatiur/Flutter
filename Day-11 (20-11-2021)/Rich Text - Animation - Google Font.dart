// img Link: https://imgur.com/xbMrQfc

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text('Animation & Font'),
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Rich Text',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              RichText(
                  text: TextSpan(
                      text: 'First Line. ',
                      style: TextStyle(color: Colors.blue),
                      children: [
                    TextSpan(
                        text: 'Second Line',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.green,
                            fontSize: 18))
                  ])),
              SizedBox(
                height: 25,
              ),
              Text(
                'Animation Text',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedTextKit(animatedTexts: [
                ColorizeAnimatedText('Colorized Text',
                    textStyle: TextStyle(fontSize: 20),
                    colors: [
                      Colors.red,
                      Colors.black,
                      Colors.orange,
                      Colors.blue
                    ])
              ]),
              SizedBox(
                height: 25,
              ),
              Text(
                'Google: QuickSand Font',
                style: GoogleFonts.quicksand(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: Poppins Font',
                style: GoogleFonts.poppins(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: robotoSlab Font',
                style: GoogleFonts.robotoSlab(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: roboto Font',
                style: GoogleFonts.roboto(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: robotoMono Font',
                style: GoogleFonts.robotoMono(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: ubuntu Font',
                style: GoogleFonts.ubuntu(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: mavenPro Font',
                style: GoogleFonts.mavenPro(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Google: esteban Font',
                style: GoogleFonts.esteban(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
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
                icon: Icon(Icons.circle_outlined),
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

