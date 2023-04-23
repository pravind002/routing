import 'package:flutter/material.dart';
// import 'package:revoo/Models/add_employee_model.dart';
// import 'package:revoo/Widgets/custom_widgets.dart';
// import 'package:revoo/Controllers/helpers.dart';

// import '../../../Controllers/responsiveness.dart';
// import '../../../Widgets/text.dart';
import '../../../Widgets/custom_widgets.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/responsiveness.dart';
import '../../../widgets/widgets.dart';

class ManageEmployeeJob extends StatefulWidget {
  const ManageEmployeeJob({
    super.key,
  });

  // late AddEmployeeModel employeeModel;

  @override
  State<ManageEmployeeJob> createState() => _ManageEmployeeJobState();
}

class _ManageEmployeeJobState extends State<ManageEmployeeJob> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          empDivider(),
          empDashboardHeading('Employee Details :'),
          empDivider(),
          Container(
              padding: ResponsiveWidget.isSmallScreen(context)
                  ? const EdgeInsets.all(10)
                  : const EdgeInsets.only(
                      top: 20, bottom: 40, right: 50, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Branch ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('Wagle State'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Department ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('IT'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Location ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('Thane'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Duty Type ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('Full Time'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Shift Slot ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('Morning'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Hiring Date ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('20/06/2022'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Joining Date ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('20/07/2022'),
                      ),
                    ],
                  ),
                  divider(),

                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Gross Salary ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData('5k'),
                      ),
                    ],
                  ),
                  divider(),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),
                  //         ],
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),

                  //           divider(),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              )),
          empDivider(),
        ],
      ),
    );
  }
}
