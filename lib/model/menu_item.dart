import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String titleMenu;
  final IconData icon;

  const MenuItem({required this.titleMenu, required this.icon});
}

class MenuItems {
  static const List<MenuItem> itemList = [ItemShare];
  static const ItemShare = MenuItem(
    titleMenu: "Share",
    icon: Icons.share,
  );
}
