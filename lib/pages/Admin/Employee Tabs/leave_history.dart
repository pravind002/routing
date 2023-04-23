import 'package:flutter/material.dart';
// import 'package:revoo/Widgets/text.dart';

import '../../../Widgets/colors.dart';
import '../../../Widgets/custom_widgets.dart';
import '../../../Widgets/widgets.dart';
import '../../../constants/utils/dimensions.dart';
// import '../../../constants/constants.dart';
// import '../../Controllers/responsiveness.dart';
// import 'apply_leave_controller.dart';

class LeaveHistory extends StatefulWidget {
  const LeaveHistory({Key? key}) : super(key: key);

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

class _LeaveHistoryState extends State<LeaveHistory> {
  List<String> martialStatus = <String>['20', '30', '40', '50'];
  String dropdownValue1 = '20';
  // ApplyLeaveController applyLeaveController = ApplyLeaveController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Visibility(
          //   visible: !ResponsiveWidget.isSmallScreen(context),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Container(
          //             alignment: Alignment.center,
          //             // margin: const EdgeInsets.symmetric(horizontal: 10),
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
          //                         vertical: 10, horizontal: 25),
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
          //       //     width: width * .4,
          //       //     height: height * .035,
          //       //     alignment: Alignment.center,
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
          //         future: applyLeaveController.getHistoryEmpLeaveRequests(),
          //         builder: (context, snapshot) {
          //           if (snapshot.hasData) {
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
          //                         applyLeaveController
          //                             .empLeaveRequesthistory.length;
          //                     i++) ...[
          //                   Row(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.symmetric(
          //                             horizontal: 10),
          //                         child: Text(
          //                           '${i + 1}.',
          //                           style: const TextStyle(
          //                               fontWeight: FontWeight.w500),
          //                         ),
          //                       ),
          //                       Expanded(
          //                         child: Column(children: [
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.spaceBetween,
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.start,
          //                             children: [
          //                               mobileEmpData('Leave Type'),
          //                               Text(applyLeaveController
          //                                   .empLeaveRequesthistory[i]
          //                                   .leaveType!),
          //                             ],
          //                           ),
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.spaceBetween,
          //                             children: [
          //                               mobileEmpData('Start Date'),
          //                               Text(applyLeaveController
          //                                   .empLeaveRequesthistory[i]
          //                                   .startDate!
          //                                   .substring(0, 10)),
          //                             ],
          //                           ),
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.spaceBetween,
          //                             children: [
          //                               mobileEmpData('End Date'),
          //                               Text(applyLeaveController
          //                                   .empLeaveRequesthistory[i].endDate!
          //                                   .substring(0, 10)),
          //                             ],
          //                           ),
          //                           Row(
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.spaceBetween,
          //                             children: [
          //                               mobileEmpData('Status'),
          //                               Text(applyLeaveController
          //                                   .empLeaveRequesthistory[i].status!),
          //                             ],
          //                           ),
          //                           divider()
          //                         ]),
          //                       ),
          //                     ],
          //                   ),
          //                 ]
          //               ],
          //             );
          //           } else if (snapshot.hasError) {
          //             return Center(
          //               child: Text("${snapshot.hasError}"),
          //             );
          //           }
          //           return const CircularProgressIndicator();
          //         })

          //     // Column(
          //     //     mainAxisAlignment: MainAxisAlignment.start,
          //     //     children: [
          //     //       for (int i = 0;
          //     //           i < applyLeaveController.empLeaveRequestList.length;
          //     //           i++) ...[
          //     //         Container(
          //     //           padding: const EdgeInsets.all(5),
          //     //           margin: const EdgeInsets.all(2),
          //     //           decoration: BoxDecoration(
          //     //               color: white,
          //     //               borderRadius: BorderRadius.circular(4)),
          //     //           child: Row(
          //     //             crossAxisAlignment: CrossAxisAlignment.start,
          //     //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //             children: [
          //     //               Padding(
          //     //                 padding:
          //     //                     const EdgeInsets.symmetric(horizontal: 5),
          //     //                 child: Text(
          //     //                   '${i + 1}.',
          //     //                   style: TextStyle(
          //     //                       color: black, fontWeight: FontWeight.w500),
          //     //                 ),
          //     //               ),
          //     //               Column(
          //     //                 children: [
          //     //                   Row(
          //     //                     mainAxisAlignment:
          //     //                         MainAxisAlignment.spaceBetween,
          //     //                     children: [
          //     //                       const Text(
          //     //                         'Leave Type',
          //     //                         style: TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       ),
          //     //                       Text(
          //     //                         applyLeaveController
          //     //                             .empLeaveRequestList[i].leaveType!,
          //     //                         style: const TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       )
          //     //                     ],
          //     //                   ),
          //     //                   Row(
          //     //                     mainAxisAlignment:
          //     //                         MainAxisAlignment.spaceBetween,
          //     //                     children: [
          //     //                       const Text(
          //     //                         'Start Date',
          //     //                         style: TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       ),
          //     //                       Text(
          //     //                         applyLeaveController
          //     //                             .empLeaveRequestList[i].startDate!
          //     //                             .substring(0, 10),
          //     //                         style: const TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       )
          //     //                     ],
          //     //                   ),
          //     //                   Row(
          //     //                     mainAxisAlignment:
          //     //                         MainAxisAlignment.spaceBetween,
          //     //                     children: [
          //     //                       const Text(
          //     //                         'End Date',
          //     //                         style: TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       ),
          //     //                       Text(
          //     //                         applyLeaveController
          //     //                             .empLeaveRequestList[i].endDate!
          //     //                             .substring(0, 10),
          //     //                         style: const TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       )
          //     //                     ],
          //     //                   ),
          //     //                   Row(
          //     //                     mainAxisAlignment:
          //     //                         MainAxisAlignment.spaceBetween,
          //     //                     children: [
          //     //                       const Text(
          //     //                         'Status',
          //     //                         style: TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       ),
          //     //                       Text(
          //     //                         applyLeaveController
          //     //                             .empLeaveRequestList[i].status!,
          //     //                         style: const TextStyle(
          //     //                             fontWeight: FontWeight.w400),
          //     //                       )
          //     //                     ],
          //     //                   ),
          //     //                 ],
          //     //               )
          //     //             ],
          //     //           ),
          //     //         ),
          //     //       ],
          //     //       divider(),
          //     //     ],
          //     //   )
          // :
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
              //     // future:
              //     //     applyLeaveController.getHistoryEmpLeaveRequests(),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         return

              Table(
                border: TableBorder.symmetric(
                  outside: BorderSide.none,
                  inside: const BorderSide(
                      width: 1, color: Colors.grey, style: BorderStyle.solid),
                ),
                children: [
                  for (int i = 0; i < 5; i++) ...[
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
                        child: const Center(child: Text('Leave Type')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('History')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('Something')),
                      )),
                      TableCell(
                          child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: white),
                        child: const Center(child: Text('Decline')),
                      )),
                    ]),
                  ]
                ],
              )

              //   } else if (snapshot.hasError) {
              //     return Center(
              //       child: Text("${snapshot.hasError}"),
              //     );
              //   }
              //   return const CircularProgressIndicator();
              // })
            ],
          )
        ],
      ),
    );
  }
}
