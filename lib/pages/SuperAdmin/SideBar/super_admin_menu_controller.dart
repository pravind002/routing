import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class SuperAdminMenuController extends GetxController {
  static SuperAdminMenuController instance = Get.find();
  var activeItem = 'Dashboard'.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case 'Dashboard':
        return _customIcon('asset/common/dashboard.svg', itemName);
      case 'Companies':
        return _customIcon('asset/super_admin/companies.svg', itemName);
      // case clientsPageDisplayName:
      //   return _customIcon(Icons.people_alt_outlined, itemName);
      // case authenticationPageDisplayName:
      //   return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon('/common/logout_white.png', itemName);
    }
  }

  Widget _customIcon(String iconPath, String itemName) {
    if (isActive(itemName)) {
      return SizedBox(
        width: 20,
        height: 20,
        child: SvgPicture.asset(iconPath, color: Colors.white),
      );
    }

    return SizedBox(
      height: 18,
      width: 18,
      child: SvgPicture.asset(iconPath,
          color: isHovering(itemName) ? dark : Colors.black),
    );
  }
}
