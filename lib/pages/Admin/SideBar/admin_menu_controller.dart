import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class AdminMenuController extends GetxController {
  static AdminMenuController instance = Get.find();
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
      case 'My Branch':
        return _customIcon('asset/super_admin/companies.svg', itemName);
      case 'My Department':
        return _customIcon('asset/common/dashboard.svg', itemName);
      case 'Designation':
        return _customIcon('asset/common/dashboard.svg', itemName);
      case 'Employees':
        return _customIcon('asset/common/dashboard.svg', itemName);

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
