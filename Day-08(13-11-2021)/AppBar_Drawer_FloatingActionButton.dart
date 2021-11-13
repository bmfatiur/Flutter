// Screen-short link:
//Part 01:	https://ibb.co/NLzkqC3
//Part 02:	https://ibb.co/4pC1r6H

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Training'),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.more_vert),
          ),
        ], //actions
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Bm Fatiur Rahman'),
              accountEmail: Text('bmfr@bm.mars'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('BM', style: TextStyle(fontSize: 30)),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.account_circle_rounded),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.fmd_bad),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'You\'ve pressed $count times',
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){setState(() {count++;});},
        child: Icon(Icons.add),
        hoverColor: Colors.black,
      ),
    );
  }
}
