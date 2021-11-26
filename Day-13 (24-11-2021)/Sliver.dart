/*
Video Link 01: https://ufile.io/2ydwycf4
Video Link 02: https://ufile.io/rd2nh3lb
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sliver(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sliver extends StatelessWidget {
  const Sliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver AppBar'),
            leading: Icon(Icons.menu),
            expandedHeight: 200,
            pinned: true,
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_circle_down),
                      Text('  Item No. 01'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      Text('  Item No. 02'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.battery_alert),
                      Text('  Item No. 03'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_iphone),
                      Text('  Item No. 04'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_alarm),
                      Text('  Item No. 05'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bed),
                      Text('  Item No. 06'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cached),
                      Text('  Item No. 07'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call),
                      Text('  Item No. 08'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call_merge),
                      Text('  Item No. 09'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera),
                      Text('  Item No. 10'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dangerous),
                      Text('  Item No. 11'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dark_mode),
                      Text('  Item No. 12'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard),
                      Text('  Item No. 13'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.data_saver_off),
                      Text('  Item No. 14'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete),
                      Text('  Item No. 15'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_sweep),
                      Text('  Item No. 16'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.description_outlined),
                      Text('  Item No. 17'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.deck),
                      Text('  Item No. 18'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.departure_board),
                      Text('  Item No. 19'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.earbuds),
                      Text('  Item No. 20'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ]),
              itemExtent: 50)
        ],
      ),
    );
  }
}

