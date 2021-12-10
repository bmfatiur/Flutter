//Output: https://ufile.io/j0hjnuez

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
  Color colors = Colors.amberAccent;
  String elevatedText = 'Elevated Button';
  int count = 0, inkCount = 0;
  double contWidth = 200, contHeight = 100;
  IconData icon = Icons.wifi;
  void changeColor() {
    setState(() {
      if (colors == Colors.amberAccent) {
        colors = Colors.greenAccent;
      } else {
        colors = Colors.amberAccent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        leading: Icon(Icons.menu),
        backgroundColor: colors,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('WiFi'),
                value: 'WiFi',
              ),
              PopupMenuItem(
                child: Text('Bluetooth'),
                value: 'Bluetooth',
              ),
              PopupMenuItem(
                child: Text('Mobile Data'),
                value: 'MobileData',
              )
            ],
            onSelected: (String value) {
              setState(() {
                if (value == 'WiFi') {
                  icon = Icons.wifi;
                } else if (value == 'Bluetooth') {
                  icon = Icons.bluetooth;
                } else {
                  icon = Icons.network_cell;
                }
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Outlined Button Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                changeColor();
              },
              child: Text('Outlined Button',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              style: OutlinedButton.styleFrom(
                backgroundColor: colors,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Elevated Button Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Text(elevatedText),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                  if (elevatedText == 'Elevated Button') {
                    elevatedText = 'Elevated button pressed $count times';
                  } else {
                    elevatedText = 'Elevated Button';
                  }
                });
              },
              child: Text('Elevated Button',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(primary: colors),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Text Button Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: contWidth,
              height: contHeight,
              color: colors,
              child: Icon(
                icon,
                size: 45,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (contWidth == 200) {
                    contWidth = 400;
                  } else {
                    contWidth = 200;
                  }
                });
              },
              child: Text('Text Button',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              style: TextButton.styleFrom(backgroundColor: colors),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'IconButton Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
                onPressed: () {
                  changeColor();
                },
                splashColor: Colors.black,
                highlightColor: Colors.grey,
                icon: Icon(
                  Icons.thumb_up,
                  size: 45,
                  //color: colors,
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'InkWell Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    inkCount++;
                  });
                },
                highlightColor: Colors.blue,
                splashColor: Colors.redAccent,
                hoverColor: Colors.blueAccent,
                child: Ink(
                  width: 100,
                  height: 100,
                  color: colors,
                )),
            Text(
              inkCount.toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Ink Response',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            InkResponse(
              highlightShape: BoxShape.rectangle,
              hoverColor: Colors.redAccent,
              highlightColor: Colors.blueGrey,
              splashColor: Colors.tealAccent,
              child: Container(
                width: 50,
                height: 50,
                color: colors,
                child: Icon(
                  icon,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Button Bar Example',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Button 1')),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.text_format_outlined),
                    label: Text('Button 2')),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.access_alarm),
                    label: Text('Button 3'))
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}

