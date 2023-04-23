import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paneltheme/widgets/responsiveness.dart';
import '../constants/colors.dart';
import '../constants/navigation_instances.dart';
import '../constants/shared_preferences.dart';
import 'custom_widgets.dart';
import 'responsiveTextSize.dart';

class TopAppBar extends AppBar {
  static TopAppBar instance = Get.find();
  TopAppBar({Key? key}) : super(key: key);
  var barTitle = ''.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  bool isPos = false;
  var disableBack = true.obs;

  // var swap = true.obs;
  var isItemPress = false.obs;

  AppBar build(BuildContext context) {
    //Code in this comment block can be changed after login process
    String? type = prefs?.getString('type');
    bool isSuper = false;
    bool isEmp = false;

    if (type.toString() == 'null') {
      isSuper = true;
    } else {
      isSuper = prefs!.getString('type')!.contains('super');
      isEmp = prefs!.getString('type')!.contains('employee');
    }
    //till here

    // print('In Bar');
    // print(ResponsiveWidget.isSmallScreen(context));

    // !(ResponsiveWidget.isSmallScreen(context) &&
    //                               item.name == 'Payroll')

    return AppBar(
      automaticallyImplyLeading: true,
      leading: ResponsiveWidget.isSmallScreen(context)
          ? !isPos
              ? Obx(
                  () => (navigationController.stateLength.value <= 1)
                      ? IconButton(
                          icon: Icon(Icons.menu, color: white),
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          })
                      : IconButton(
                          icon: Icon(Icons.arrow_back, color: white),
                          onPressed: () {
                            navigationController.goBack();
                          }),
                )
              : IconButton(
                  icon: Icon(Icons.arrow_back, color: white),
                  onPressed: () {
                    navigationController.goBack();
                  })
          : Visibility(
              visible: isSuper ? false : true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2.0),
                    child: IconButton(
                      onPressed: () {
                        // Get.back();
                        navigationController.goBack();
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
      centerTitle: true,
      title: Obx(() {
        return Text(
          barTitle.value,
          // textAlign: TextAlign.center,
          // maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color:
                ResponsiveWidget.isSmallScreen(context) ? white : Colors.black,
            fontSize: ResponsiveWidget.isSmallScreen(context)
                ? 20
                : const AdaptiveTextSize().getadaptiveTextSize(context, 30),
          ),
        );
      }),

      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
                visible: isEmp && !ResponsiveWidget.isSmallScreen(context),
                child: Card(
                  elevation: 10,
                  child: TextButton(
                    onPressed: () async {
                      final String? empId = prefs!.getString('empId');
                      if (empId!.isNotEmpty) {
                        // Get.offAll(() => const EmployeeModules());
                        disableBack.value = false;
                      }
                    },
                    child: Obx(() {
                      return const Row(
                        children: [
                          // Icon(swap.value ? Icons.work_outlined : Icons.home,
                          //     color: const Color(0xff3A3A5A)),
                          // sizedBoxWidth(8),
                          // Text(
                          //   swap.value ? 'Workspace' : 'Dashboard',
                          //   style: TextStyle(color: mainColor),
                          // )
                        ],
                      );
                    }),
                    // })
                  ),
                )),
            Visibility(
              visible: !(isEmp || isSuper),
              child: IconButton(
                onPressed: () {
                  // Get.offAll(() => const AdminModules());
                },
                icon: Icon(
                  Icons.home,
                  color: ResponsiveWidget.isSmallScreen(context)
                      ? white
                      : const Color(0xff3A3A5A),
                ),
              ),
            ),
            Visibility(
              visible: false,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail,
                  color: Color(0xff3A3A5A),
                ),
              ),
            ),

            // const NotificationMsg(),

            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.notification_add_rounded,
            //     color: ResponsiveWidget.isSmallScreen(context)
            //         ? white
            //         : const Color(0xff3A3A5A),
            //   ),
            // ),
            Visibility(
              visible: !ResponsiveWidget.isSmallScreen(context),
              child: isSuper
                  ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: black)),
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage("asset/revoo dashboard.png"),
                      ),
                    )
                  : topAppBarProfile(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      isSuper ? 'Super Admin' : prefs!.getString('firstName')!,
                      style: const TextStyle(
                          color: Color(0xff3A3A5A),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            fiveSizedBox(),
            Visibility(
              visible: !(isEmp ||
                  isSuper ||
                  ResponsiveWidget.isSmallScreen(context)),
              child: IconButton(
                onPressed: () {
                  appBar.barTitle.value = 'ADMIN SETTING';
                  // adminSettingMenuController.changeActiveItemTo('Organization');

                  // Get.to(() => AdminSettingLayout(
                  //     screen: AdminSettingOrganizationRoute));
                  // navigationController
                  //     .removeAndStart(AdminSettingOrganizationRoute);
                },
                icon: Icon(
                  Icons.settings,
                  color: iconColor,
                ),
              ),
            ),
            fiveSizedBox(),
            IconButton(
              onPressed: () {
                // logout();
              },
              icon: Icon(
                Icons.logout,
                color: ResponsiveWidget.isSmallScreen(context)
                    ? white
                    : const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ],
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: ResponsiveWidget.isSmallScreen(context)
          ? Colors.transparent
          : const Color(0xffEFEFF2),
      // centerTitle: true,
    );
    // print(prefs!.getString('type')!);
    // return
    // Container(
    //   decoration: const BoxDecoration(
    //     color: Color(0xffEFEFF2),
    //   ),
    //   height: 60,
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         ResponsiveWidget.isSmallScreen(context)
    //             ? IconButton(
    //                 icon: const Icon(Icons.menu),
    //                 onPressed: () {
    //                   scaffoldKey.currentState!.openDrawer();
    //                 })
    //             : !(isEmp || isSuper)
    //                 ? Expanded(
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.only(bottom: 2.0),
    //                           child: IconButton(
    //                             onPressed: () {
    //                               // Get.back();
    //                               navigationController.goBack();
    //                             },
    //                             icon: const Icon(Icons.arrow_back),
    //                             color: Colors.black,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   )
    //                 : Expanded(child: sizedWidth()),
    //         // Spacer(),

    //         Expanded(
    //           child: Text(
    //             barTitle,
    //             textAlign: TextAlign.center,
    //             maxLines: 1,
    //             style: GoogleFonts.poppins(
    //               textStyle: TextStyle(
    //                 fontWeight: FontWeight.w400,
    //                 color: Colors.black,
    //                 fontSize: const AdaptiveTextSize()
    //                     .getadaptiveTextSize(context, 30),
    //               ),
    //             ),
    //           ),
    //         ),

    //         Expanded(
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             children: [
    //               Visibility(
    //                   visible: isEmp,
    //                   child: TextButton(
    //                     onPressed: () {
    //                       // swap.value = !swap.value;
    //                       // print("swap.value : ${swap.value}");

    //                       if (swap.value == true) {
    //                         // print("swap.value : ${swap.value}");

    //                         posMenuController.changeActiveItemTo('Dashboard');
    //                         Get.to(() => POSSettingLayout(
    //                               screen: 'PosOpeningCashCounter',
    //                             ));
    //                         navigationController.navigateTo(
    //                             "PosOpeningCashCounter", Null);

    //                         // navigationController
    //                         //     .removeAndStart('PosOpeningCashCounter');
    //                       } else {
    //                         // print("swap.value : ${swap.value}");
    //                         // swap.value = !swap.value;
    //                         employeeMenuController
    //                             .changeActiveItemTo('Dashboard');
    //                         Get.to(
    //                             () => EmployeeLayout(screen: 'EmpDashboard'));

    //                         navigationController.removeAndStart('EmpDashboard');
    //                       }
    //                       swap.value = !swap.value;
    //                     },
    //                     child: Obx(() {
    //                       return Text(swap.value ? 'Workspace' : 'Dashboard');
    //                     }),
    //                     // })
    //                   )),
    //               Visibility(
    //                 visible: !(isEmp || isSuper),
    //                 child: IconButton(
    //                   onPressed: () {
    //                     // navigationController.removeAndStart(AdminModuleRoute);
    //                     Get.offAll(() => const AdminModules());
    //                   },
    //                   icon: const Icon(
    //                     Icons.home,
    //                     color: Color(0xff3A3A5A),
    //                   ),
    //                 ),
    //               ),
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: const Icon(
    //                   Icons.mail,
    //                   color: Color(0xff3A3A5A),
    //                 ),
    //               ),
    //               IconButton(
    //                 onPressed: () {},
    //                 icon: const Icon(
    //                   Icons.notification_add_rounded,
    //                   color: Color(0xff3A3A5A),
    //                 ),
    //               ),
    //               isSuper
    //                   ? Container(
    //                       margin: const EdgeInsets.symmetric(horizontal: 5),
    //                       decoration: BoxDecoration(
    //                           shape: BoxShape.circle,
    //                           border: Border.all(color: black)),
    //                       child: const CircleAvatar(
    //                         radius: 15,
    //                         backgroundColor: Colors.white,
    //                         backgroundImage:
    //                             AssetImage("asset/revoo dashboard.png"),
    //                       ),
    //                     )
    //                   : topAppBarProfile(),
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   FittedBox(
    //                     fit: BoxFit.cover,
    //                     child: Text(
    //                       isSuper
    //                           ? 'Super Admin'
    //                           : prefs!.getString('firstName')!,
    //                       style: GoogleFonts.poppins(
    //                         textStyle: const TextStyle(
    //                             color: Color(0xff3A3A5A),
    //                             fontSize: 14,
    //                             fontWeight: FontWeight.w600),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               fiveSizedBox(),
    //               Visibility(
    //                 visible: !(isEmp || isSuper),
    //                 child: IconButton(
    //                   onPressed: () {
    //                     adminSettingMenuController
    //                         .changeActiveItemTo('Organization');

    //                     Get.to(() => AdminSettingLayout(
    //                         screen: AdminSettingOrganizationRoute));
    //                     navigationController
    //                         .removeAndStart(AdminSettingOrganizationRoute);
    //                   },
    //                   icon: Icon(
    //                     Icons.settings,
    //                     color: iconColor,
    //                   ),
    //                 ),
    //               ),
    //               fiveSizedBox(),
    //               IconButton(
    //                 onPressed: () {
    //                   lougout();
    //                 },
    //                 icon: const Icon(
    //                   Icons.logout,
    //                   color: Color.fromARGB(255, 0, 0, 0),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
