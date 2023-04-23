import 'package:flutter/material.dart';
import 'package:paneltheme/pages/Admin/Employee%20Tabs/upcoming_leave.dart';
// import 'package:revoo/Controllers/responsiveness.dart';
// import 'package:revoo/Employee/LeaveRequest/apply_leave_controller.dart';
// import 'package:revoo/Employee/LeaveRequest/leave_history.dart';
// import 'package:revoo/Employee/LeaveRequest/upcoming_leave.dart';
// import 'package:revoo/Widgets/buttons.dart';
// import 'package:revoo/Widgets/colors.dart';
// import 'package:revoo/Widgets/custom_widgets.dart';
// import 'package:revoo/constants/constants.dart';

import '../../../Widgets/custom_widgets.dart';
import '../../../constants/colors.dart';
import '../../../constants/utils/dimensions.dart';
import '../../../widgets/responsiveness.dart';
import '../../../widgets/widgets.dart';
import 'leave_history.dart';

// import 'apply_leave_controller.dart';
// import 'apply_leave_form.dart';
// import 'leave_history.dart';

class ManageEmployeeLeaves extends StatefulWidget {
  const ManageEmployeeLeaves({
    super.key,
  });

  // String employeeId;

  @override
  State<ManageEmployeeLeaves> createState() => _ManageEmployeeLeavesState();
}

class _ManageEmployeeLeavesState extends State<ManageEmployeeLeaves> {
  List<String> martialStatus = <String>['20', '30', '40', '50'];
  String dropdownValue1 = '20';
  // ApplyLeaveController applyLeaveController = ApplyLeaveController();
  var totalLeaves = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? const EdgeInsets.all(10)
              : const EdgeInsets.all(20),
          child:

              // FutureBuilder(
              //     // future: applyLeaveController.getLeaveTakenByEmp(widget.employeeId),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         for (int i = 0;
              //             i < 10;
              //             i++) {
              //           totalLeaves =
              //              100;
              //         }
              //         return

              Column(
            children: [
              Container(
                padding: ResponsiveWidget.isSmallScreen(context)
                    ? const EdgeInsets.all(0)
                    : const EdgeInsets.symmetric(horizontal: 20),
                height: height * .15,
                width: width,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   flex: 2,
                    //   child: RichText(
                    //       textScaleFactor: 1.5,
                    //       textAlign: TextAlign.start,
                    //       text: TextSpan(
                    //           text: 'Leave Year 2022\n',
                    //           style: TextStyle(
                    //               color: addButtonColor,
                    //               fontWeight: FontWeight.w600),
                    //           children: [
                    //             TextSpan(
                    //                 text: '\nTotal Leaves:$totalLeaves',
                    //                 style: TextStyle(
                    //                     color: addButtonColor,
                    //                     fontWeight: FontWeight.w600)),
                    //           ])),
                    // ),

                    // FutureBuilder(
                    //     // future: applyLeaveController
                    //     //     .getLeaveTakenByEmp(widget.employeeId),
                    //     builder: (context, snapshot) {
                    //       if (snapshot.hasData) {
                    //         return

                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        // height: 85,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return leaveRequestButton(context, mainColor,
                                'Medical Leave\n', '10 / 100');
                          },
                        ),
                      ),
                    )

                    //     ;
                    //   } else if (snapshot.hasError) {
                    //     return Center(
                    //       child: Text("${snapshot.hasError}"),
                    //     );
                    //   }
                    //   return const CircularProgressIndicator();
                    // }),
                    // leaveRequestButton(mainColor.withOpacity(.5),
                    //     'PAID LEAVES\n', '3/10'),
                    // leaveRequestButton(mainColor.withOpacity(.5),
                    //     'PAID LEAVES\n', '2/5'),
                    // leaveRequestButton(mainColor.withOpacity(.5),
                    //     'PAID LEAVES\n', '6/10'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(20),
                  // height: height * .55,
                  width: width,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: ResponsiveWidget.isSmallScreen(context)
                                ? width * .8
                                : width * .25,
                            child: TabBar(
                                isScrollable: true,
                                labelStyle: TextStyle(
                                    color: black,
                                    // fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                labelColor: black,
                                unselectedLabelColor: black.withOpacity(.5),
                                tabs: const [
                                  Tab(text: 'UPCOMING'),
                                  Tab(
                                    text: 'HISTORY',
                                  )
                                ]),
                          ),
                          // InkWell(
                          //   onTap: () {
                          //     customDialog(
                          //         context, ApplyLeaveForm(), width * .75);
                          //   },
                          //   child: Container(
                          //     // width: Get.width*.05,
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(8),
                          //         color: const Color(0xff3A3A5A)),
                          //     child: const Center(
                          //       child: Padding(
                          //         padding: EdgeInsets.symmetric(
                          //             vertical: 12, horizontal: 25),
                          //         child: Text(
                          //           "Apply Leave",
                          //           style: TextStyle(
                          //               fontSize: 16,
                          //               color: Colors.white,
                          //               fontWeight: FontWeight.w700),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      sizedHeight(),
                      const Flexible(
                          child: SizedBox(
                              child: TabBarView(
                                  children: [UpcomingLeave(), LeaveHistory()])))
                    ],
                  ),
                ),
              ),
            ],
          )
          //   } else if (snapshot.hasError) {
          //     return Center(
          //       child: Text("${snapshot.hasError}"),
          //     );
          //   }
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }),
          ),
    );
  }
}
