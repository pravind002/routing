import 'package:flutter/material.dart';
// import 'package:revoo/HRMS_admin_Screen/hrmsDashboard/Employee%20ID/show_emp_id.dart';
// import 'package:revoo/Models/add_employee_model.dart';
// import 'package:revoo/Widgets/buttons.dart';
// import 'package:revoo/Widgets/colors.dart';
// import 'package:revoo/Widgets/custom_widgets.dart';

import '../../../Controllers/helpers.dart';
// import '../../../Controllers/responsiveness.dart';
import '../../../Widgets/custom_dailog.dart';
import '../../../Widgets/custom_widgets.dart';
import '../../../constants/colors.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/responsiveness.dart';
import '../../../widgets/widgets.dart';
// import '../../../Widgets/text.dart';
// import '../../../constants/constants.dart';

class ManageEmployeeGeneral extends StatefulWidget {
  ManageEmployeeGeneral({super.key, });

  // late AddEmployeeModel employeeModel;

  @override
  State<ManageEmployeeGeneral> createState() => _ManageEmployeeGeneralState();
}

class _ManageEmployeeGeneralState extends State<ManageEmployeeGeneral> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          empDivider(),

          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    empDashboardHeading('Personal Details :'),
                    InkWell(
                        onTap: () {
                          // customDialogEmpList(
                          //     context,
                          //     ShowEmpID(
                          //       employeeModel: widget.employeeModel,
                          //     ),
                          //     width * .25,
                          //     height * .70);
                        },
                        child: formattedButtons('Print ID', mainColor))
                  ],
                ),
              ],
            ),
          ),
          // mEmployeeDetails('Personal Details :'),

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
                              "Civil ID ", 18, FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                              '643673784377')),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText("Passport Number ", 18,
                              FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                              '547768545')),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText("Date Of Birth ", 18,
                              FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                              '02/01/2000')),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText(
                              "Age ", 18, FontWeight.w600, Colors.black)),
                      Expanded(
                        child: tableRowData(
                            '22'),
                      ),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText(
                              "Gender", 18, FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                              'Male')),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText("Marital Status ", 18,
                              FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                             'Mingle')),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                          child: customText(
                              "Address", 18, FontWeight.w600, Colors.black)),
                      Expanded(
                          child: tableRowData(
                              'Kalva East')),
                    ],
                  ),
                ],
              )),

          empDivider(),

          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                empDashboardHeading('Emergency Contact :'),
              ],
            ),
          ),

          empDivider(),

          Container(
              padding: ResponsiveWidget.isSmallScreen(context)
                  ? const EdgeInsets.all(10)
                  : const EdgeInsets.only(
                      top: 20, bottom: 40, right: 50, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Expanded(
                      child: customText(
                          "Contact Number ", 18, FontWeight.w600, Colors.black),
                    ),
                    Expanded(
                      child: tableRowData(
                         '8104248383'),
                    ),
                  ]),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Person Name ", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData(
                            'Pravind'),
                      ),
                    ],
                  ),
                  divider(),
                  Row(
                    children: [
                      Expanded(
                        child: customText(
                            "Relation", 18, FontWeight.w600, Colors.black),
                      ),
                      Expanded(
                        child: tableRowData(
                            'Self'),
                      ),
                    ],
                  ),
                ],
              )),

          empDivider(),
        ],
      ),
    );
  }
}
