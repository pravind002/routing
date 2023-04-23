import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/navigation_instances.dart';
import '../../controllers/local_navigator.dart';
import 'SideBar/side_menu.dart';

class AdminDashboardLayout extends StatelessWidget {
  String screen;
  SideMenu sideMenu = Get.put(SideMenu());
  AdminDashboardLayout({super.key, required this.screen});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    appBar.barTitle.value = 'ADMIN';
    appBar.scaffoldKey = scaffoldKey;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: false,
      backgroundColor: mainColor,
      appBar: appBar.build(context), // topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: sideMenu,
      ),
      body: Column(
        children: [
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       child: appBar, //TopAppBar(title: 'SUPER ADMIN'),
          //       decoration: const BoxDecoration(
          //           boxShadow: [BoxShadow(color: Colors.black)]),
          //     )),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  flex: 1,
                  child: sideMenu,
                ),
                Obx(() {
                  return Flexible(
                    fit: FlexFit.tight,
                    flex: sideMenu.isOpen.value ? 6 : 18,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0, color: mainColor),
                        color: mainColor,
                      ),
                      width: double.infinity,
                      child: Center(child: localNavigator(screen)),
                    ),
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
