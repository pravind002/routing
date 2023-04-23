import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/shared_preferences.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navKey = GlobalKey();

  var stateLength = 0.obs;
  List<String> routeList = [
    'PosCashInOut',
    'PosOpeningCashCounter',
    'PosPaymentMethod',
    'PosSaleCounter',
    'PosReportsDetails',
    'PosReports',
    'PosDiscount',
    'PosBilling',
    'PosCustomers',
    'PosProduct',
    'PosDashboard'
  ];
  Future<dynamic> navigateTo(String routeName, Object object) async {
    final String? empId = prefs!.getString('empId');
    log('Route in: $routeName');
    setLength();
    return navKey.currentState!.popAndPushNamed(routeName, arguments: object);
  }

  removeAndStart(String routeName) {
    stateLength.value = 1;
    navKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  replace(String routeName, Object object) {
    // stateLength.value = 1;
    // setLength();
    navKey.currentState!.popAndPushNamed(routeName, arguments: object);
  }

  pushDetailsRoute(String routeName, Object object) {
    setLength();
    navKey.currentState!.pushNamed(routeName, arguments: object);
  }

  goBack() {
    if (navKey.currentState!.canPop()) {
      navKey.currentState!.pop();
      stateLength.value -= 1;
    } else {
      final String who = prefs!.getString('who') ?? '';

      stateLength.value = 0;
      // who == 'employee'
      //     ? Get.offAll(const EmployeeModules())
      //     : Get.offAll(const AdminModules());
      // appBar.isItemPress.value = false;
    }
  }

  void setLength() {
    stateLength.value += 1;
  }
}
