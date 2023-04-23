import 'package:flutter/material.dart';
// import 'package:revoo/Widgets/text.dart';

import '../../../Widgets/colors.dart';
import '../../../Widgets/custom_widgets.dart';
import '../../../Widgets/widgets.dart';
import '../../../constants/utils/dimensions.dart';
// import '../../../constants/constants.dart';
// import '../../Controllers/responsiveness.dart';
// import 'apply_leave_controller.dart';

class UpcomingLeave extends StatefulWidget {
  const UpcomingLeave({
    Key? key,
  }) : super(key: key);

  // ApplyLeaveController applyLeaveController;
  @override
  State<UpcomingLeave> createState() => _UpcomingLeaveState();
}

class _UpcomingLeaveState extends State<UpcomingLeave> {
  List<String> martialStatus = <String>['20', '30', '40', '50'];
  String dropdownValue1 = '20';
  // ApplyLeaveController applyLeaveController = ApplyLeaveController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Visibility(
          //   visible: false, // !ResponsiveWidget.isSmallScreen(context),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Container(
          //             alignment: Alignment.center,
          //             // padding: EdgeInsets.all(5),
          //             height: 40,
          //             width: width * .05,

          //             child: Center(
          //               child: DropdownButtonFormField<String>(
          //                 // menuMaxHeight: height * .035,
          //                 dropdownColor: dividerColor,

          //                 isExpanded: false,
          //                 alignment: Alignment.center,
          //                 decoration: InputDecoration(
          //                     contentPadding: const EdgeInsets.symmetric(
          //                         horizontal: 25, vertical: 10),
          //                     filled: true,
          //                     fillColor: dividerColor,
          //                     border: OutlineInputBorder(
          //                         borderRadius: BorderRadius.circular(6),
          //                         borderSide: BorderSide.none)),
          //                 value: dropdownValue1,
          //                 icon: Icon(
          //                   Icons.arrow_drop_down,
          //                   color: white,
          //                   // size: 30,
          //                 ),
          //                 style: const TextStyle(
          //                     color: Color(0xff605D5D), fontSize: 18),
          //                 onChanged: (String? value) {
          //                   // This is called when the user selects an item.
          //                   setState(() {
          //                     dropdownValue1 = value!;
          //                   });
          //                 },
          //                 items: martialStatus
          //                     .map<DropdownMenuItem<String>>((String value) {
          //                   return DropdownMenuItem<String>(
          //                     value: value,
          //                     child: Text(
          //                       value,
          //                       textAlign: TextAlign.center,
          //                       textScaleFactor: 1,
          //                       style: TextStyle(color: white),
          //                     ),
          //                   );
          //                 }).toList(),
          //               ),
          //             ),
          //           ),
          //           sizedWidth(),
          //           ownerName('Records Per Page'),
          //         ],
          //       ),
          //       sizedWidth()
          //       // Card(
          //       //   shape: const RoundedRectangleBorder(
          //       //       borderRadius: BorderRadius.all(Radius.circular(20))),
          //       //   child: Container(
          //       //     margin: const EdgeInsets.symmetric(horizontal: 10),
          //       //     width: width * .35,
          //       //     height: height * .035,
          //       //     decoration: const BoxDecoration(
          //       //         borderRadius: BorderRadius.all(Radius.circular(20))),
          //       //     child: Row(
          //       //       children: const [
          //       //         Flexible(
          //       //           child: TextField(
          //       //             decoration: InputDecoration(
          //       //                 border: InputBorder.none,
          //       //                 hintText: 'Search.......',
          //       //                 suffixIcon: Icon(Icons.search)),
          //       //           ),
          //       //         )
          //       //       ],
          //       //     ),
          //       //   ),
          //       // )
          //     ],
          //   ),
          // ),
          // Visibility(
          //   visible: !ResponsiveWidget.isSmallScreen(context),
          //   child: const SizedBox(
          //     height: 20,
          //   ),
          // ),
          // ResponsiveWidget.isSmallScreen(context)
          //     ? FutureBuilder(
          //         // future:
          //         //     widget.applyLeaveController.getUpcomingEmpLeaveRequests(),
          //         builder: (context, snapshot) {
          //           if (snapshot.connectionState == ConnectionState.done) {
          //             // print(
          //             //     "Received data : ${widget.applyLeaveController.empLeaveRequestList}");
          //             return Column(
          //               // border: TableBorder.symmetric(
          //               //   outside: BorderSide.none,
          //               //   inside: const BorderSide(
          //               //       width: 1,
          //               //       color: Colors.grey,
          //               //       style: BorderStyle.solid),
          //               // ),
          //               children: [
          //                 for (int i = 0;
          //                     i <
          //                         5;
          //                     i++) ...[
          //                   Row(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Padding(
          //                           padding: const EdgeInsets.symmetric(
          //                               horizontal: 10),
          //                           child: Text(
          //                             '${i + 1}.',
          //                             style: const TextStyle(
          //                                 fontWeight: FontWeight.w500),
          //                           ),
          //                         ),
          //                         Expanded(
          //                           child: Column(
          //                             children: [
          //                               Row(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.spaceBetween,
          //                                 children: [
          //                                   mobileEmpData('Leave Type'),
          //                                   Text(widget
          //                                       .applyLeaveController
          //                                       .empLeaveRequestList[i]
          //                                       .leaveType!),
          //                                 ],
          //                               ),
          //                               Row(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.spaceBetween,
          //                                 children: [
          //                                   mobileEmpData('Start Date'),
          //                                   Text(widget.applyLeaveController
          //                                       .empLeaveRequestList[i].startDate!
          //                                       .substring(0, 10)),
          //                                 ],
          //                               ),
          //                               Row(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.spaceBetween,
          //                                 children: [
          //                                   mobileEmpData('End Date'),
          //                                   Text(widget.applyLeaveController
          //                                       .empLeaveRequestList[i].endDate!
          //                                       .substring(0, 10)),
          //                                 ],
          //                               ),
          //                               Row(
          //                                 mainAxisAlignment:
          //                                     MainAxisAlignment.spaceBetween,
          //                                 children: [
          //                                   mobileEmpData('Status'),
          //                                   Text(widget.applyLeaveController
          //                                       .empLeaveRequestList[i].status!),
          //                                 ],
          //                               ),
          //                               divider()
          //                             ],
          //                           ),
          //                         )
          //                       ]),
          //                 ]
          //               ],
          //             );
          //           } else {
          //             return const CircularProgressIndicator();
          //           }
          //           // else if (snapshot.hasError) {
          //           //   return Center(
          //           //     child: Text("${snapshot.hasError}"),
          //           //   );
          //           // }
          //           // return const Center(
          //           //   child: CircularProgressIndicator(),
          //           // );
          //         },
          //       )
          //     :

          Column(
            children: [
              Container(
                // height: height * .05,
                width: width,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: tableHeaderContainer([
                  'SR. No',
                  'Leave-Type',
                  'Start-Date',
                  'End-Date',
                  'Status'
                ]),
              ),
              sizedHeight(),

              // FutureBuilder(
              //   // future: widget.applyLeaveController
              //   //     .getUpcomingEmpLeaveRequests(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.done) {
              //       // print(
              //       //     "Received data : ${widget.applyLeaveController.empLeaveRequestList}");
              //       return Obx(() {
              //         return

              Table(
                border: TableBorder.symmetric(
                  outside: BorderSide.none,
                  inside: const BorderSide(
                      width: 1, color: Colors.grey, style: BorderStyle.solid),
                ),
                children: [
                  for (int i = 0; i < 10; i++) ...[
                    TableRow(children: [
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: Center(child: Text('${i + 1}')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('Medical')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('Start Date')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('End Date')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('Status')),
                      )),
                    ]),
                  ]
                ],
              )

              // })
              //     } else {
              //       return const CircularProgressIndicator();
              //     }
              //     // else if (snapshot.hasError) {
              //     //   return Center(
              //     //     child: Text("${snapshot.hasError}"),
              //     //   );
              //     // }
              //     // return const Center(
              //     //   child: CircularProgressIndicator(),
              //     // );
              //   },
              // ),
            ],
          )
        ],
      ),
    );
  }
}
