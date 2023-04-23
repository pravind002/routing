import 'package:flutter/material.dart';
import 'package:paneltheme/pages/Admin/SideBar/horizontal_menu_items.dart';
import 'package:paneltheme/pages/Admin/SideBar/vertical_menu_items.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  bool isOpen;

  SideMenuItem(
      {Key? key,
      required this.itemName,
      required this.onTap,
      required this.isOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return HorizontalMenuItem(
    //   itemName: itemName,
    //   onTap: onTap,
    // );
    if (!isOpen) {
      return VertticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
