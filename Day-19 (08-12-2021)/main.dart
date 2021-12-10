//Output: https://ufile.io/a0735fxh

import './description.dart';
import './items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PopupMenuButtonExp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PopupMenuButtonExp extends StatefulWidget {
  const PopupMenuButtonExp({Key? key}) : super(key: key);

  @override
  _PopupMenuButtonExpState createState() => _PopupMenuButtonExpState();
}

class _PopupMenuButtonExpState extends State<PopupMenuButtonExp> {
  MenuItems item = items[0];
  void slectedItems(MenuItems itm) {
    setState(() {
      item = itm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Button'),
        backgroundColor: item.colors,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => items
                .map((MenuItems item) => PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(
                            item.icon,
                            color: item.colors,
                          ),
                          Text(item.name)
                        ],
                      ),
                      value: item,
                    ))
                .toList(),
            onSelected: slectedItems,
          ),
        ],
      ),
      body: DescriptionPage(item: item),
    );
  }
}
