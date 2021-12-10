//Output: https://ufile.io/a0735fxh

import 'package:flutter/material.dart';

class MenuItems {
  String name, description;
  IconData icon;
  Color colors;

  MenuItems(
      {required this.name,
      required this.description,
      required this.icon,
      required this.colors});
}

List<MenuItems> items = [
  MenuItems(
      name: 'About',
      description: 'About Description',
      icon: Icons.warning_amber,
      colors: Colors.amberAccent),
  MenuItems(
      name: 'Privacy Policy',
      description: 'Privacy Policy Description',
      colors: Colors.indigoAccent,
      icon: Icons.privacy_tip_outlined),
  MenuItems(
    name: 'Settings',
    description: 'Settings Description',
    colors: Colors.pinkAccent,
    icon: Icons.settings_outlined,
  )
];
