//Output: https://ufile.io/a0735fxh

import './items.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  final MenuItems item;
  const DescriptionPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(width: 3),
            color: item.colors,
            boxShadow: [
              BoxShadow(color: Colors.pink, offset: Offset(20, 20)),
              BoxShadow(color: Colors.indigo, offset: Offset(10, 10)),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              color: Colors.white,
            ),
            Text(item.description,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
