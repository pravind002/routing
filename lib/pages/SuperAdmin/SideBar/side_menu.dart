import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/helpers.dart';
import '../../../constants/colors.dart';
import '../../../constants/navigation_instances.dart';
import '../../../constants/routes.dart';
import '../../../widgets/responsiveness.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  var isOpen = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        color: light,
        child: ListView(
          children: [
            Column(
              children: [
                Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  child: Row(
                    mainAxisAlignment: isOpen.value
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            isOpen.value = !isOpen.value;
                          },
                          icon: isOpen.value
                              ? const Icon(Icons.arrow_back_ios_outlined)
                              : const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                Visibility(
                  visible: isOpen.value,
                  child: SizedBox(
                    child: Image.asset("asset/revoo dashboard.png"),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: superAdminSideMenuItems
                      .map(
                        (item) => SideMenuItem(
                            isOpen: isOpen.value,
                            itemName: item.name,
                            onTap: () {
                            if (ResponsiveWidget.isSmallScreen(context)) {
                              appBar.barTitle.value = item.name;
                              appBar.isItemPress.value = true;
                            }
                              if (!superAdminMenuController
                                  .isActive(item.name)) {
                                superAdminMenuController
                                    .changeActiveItemTo(item.name);
                                // if(ResponsiveWidget.isSmallScreen(context))
                                // Get.back();
                                if (ResponsiveWidget.isSmallScreen(context)) {
                                  toggleDrawer();
                                }
                                navigationController.navigateTo(
                                    item.route, Null);
                              }
                            }),
                      )
                      .toList(),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
