import 'package:flutter/material.dart';
// import 'package:revoo/Models/add_employee_model.dart';
// import 'package:revoo/Widgets/branch_search_drop_down.dart';
// import 'package:revoo/Widgets/buttons.dart';
// import 'package:revoo/Widgets/colors.dart';
// import 'package:revoo/Widgets/custom_widgets.dart';
// import 'package:revoo/constants/constants.dart';
// import '../../Controllers/responsiveness.dart';
import '../../Widgets/custom_widgets.dart';
import '../../Widgets/widgets.dart';
import '../../constants/colors.dart';
import '../../constants/utils/dimensions.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/responsiveness.dart';
import 'Employee Tabs/manage_employee_general.dart';
import 'Employee Tabs/manage_employee_job.dart';
import 'Employee Tabs/manage_employee_leaves.dart';
// import '../../Widgets/text.dart';
// import 'package:revoo/constants/Api.dart';
// import '../../constants/sharedpreference.dart';
// import 'Manage Employee Tab/manage_employee_general.dart';
// import 'Manage Employee Tab/manage_employee_job.dart';
// import 'Manage Employee Tab/manage_employee_leaves.dart';
// import 'add_employee.dart';

class ManageEmployeeDeails extends StatefulWidget {
  const ManageEmployeeDeails({
    Key? key,
  }) : super(key: key);

  // late AddEmployeeModel employeeModel;

  @override
  State<ManageEmployeeDeails> createState() => _ManageEmployeeDeailsState();
}

class _ManageEmployeeDeailsState extends State<ManageEmployeeDeails> {
  // @override
  // void initState() {
  //   setEmpId();
  //   // TODO: implement initState
  //   super.initState();
  // }

  // setEmpId() async {
  //   await prefs!.setString("empId", widget.employeeModel.empId);
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: height * .025,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: height * .15,
                width: width,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(20),
                            child: CircleAvatar(
                              radius: 35,
                              // backgroundColor: Colors.white,
                              // backgroundImage: NetworkImage(
                              //     imgURL + widget.employeeModel.profilePic),
                            )),
                        sizedWidth(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            empDashboardHeading("Name Surname"),
                            empDashboardSubHeading("EMPID 002"),
                            empDashboardSubHeading("Designation")
                          ],
                        )
                      ],
                    ),
                    Visibility(
                      visible: !ResponsiveWidget.isSmallScreen(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          empDashboardSubHeading("abc@gmail.com"),
                          empDashboardSubHeading("9876543245"),
                          empDashboardSubHeading("Thane")
                        ],
                      ),
                    ),
                    Visibility(
                      visible: !ResponsiveWidget.isSmallScreen(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          empDashboardSubHeading(
                            'DEPARTMENT',
                          ),
                          empDashboardSubHeading("Developer"),
                          const Text(''),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: !ResponsiveWidget.isSmallScreen(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          empDashboardSubHeading(
                            'OFFICE',
                          ),
                          empDashboardSubHeading("Branches"),
                          const Text('')
                        ],
                      ),
                    ),
                    Visibility(
                      visible: !ResponsiveWidget.isSmallScreen(context),
                      child: Row(
                        children: [
                          // activeButton('ONBOARD', mainColor),
                          sizedWidth(),
                          InkWell(
                              onTap: () {
                                // customDialog(
                                //     context,
                                //     AddEmployees(
                                //       type: true,
                                //       greeting:
                                //           widget.employeeModel.greet ?? "",
                                //       gender: widget.employeeModel.gender ?? "",
                                //       firstName: widget.employeeModel.firstName
                                //           .toString(),
                                //       lastName: widget.employeeModel.lastName
                                //           .toString(),
                                //       email:
                                //           widget.employeeModel.email.toString(),
                                //       phoneNo: widget.employeeModel.phoneNo
                                //           .toString(),
                                //       civilId: widget.employeeModel.civilId
                                //           .toString(),
                                //       passportNo: widget
                                //           .employeeModel.passportNo
                                //           .toString(),
                                //       address: widget.employeeModel.address
                                //           .toString(),
                                //       city:
                                //           widget.employeeModel.city.toString(),
                                //       zipCode: widget.employeeModel.zipCode
                                //           .toString(),
                                //       empId:
                                //           widget.employeeModel.empId.toString(),
                                //       wage:
                                //           widget.employeeModel.wage.toString(),
                                //       bankName: widget.employeeModel.bankName
                                //           .toString(),
                                //       bankBranchName: widget
                                //           .employeeModel.bankBranchName
                                //           .toString(),
                                //       accountNo: widget.employeeModel.accountNo
                                //           .toString(),
                                //       bbanNo: widget.employeeModel.bbanNo
                                //           .toString(),
                                //       emergePhoneNo: widget
                                //           .employeeModel.emergePhoneNo
                                //           .toString(),
                                //       emergeContactName: widget
                                //           .employeeModel.emergeContactName
                                //           .toString(),
                                //       emergeContactRel: widget
                                //           .employeeModel.emergeContactRel
                                //           .toString(),
                                //       officialEmail: widget
                                //           .employeeModel.officialEmail
                                //           .toString(),
                                //       password: widget.employeeModel.password
                                //           .toString(),
                                //       dob: widget.employeeModel.dob.toString(),
                                //       hiringDate: widget
                                //           .employeeModel.hiringDate
                                //           .toString(),
                                //       joiningDate: widget
                                //           .employeeModel.joiningDate
                                //           .toString(),
                                //       maritalStatus: widget
                                //           .employeeModel.maritalStatus
                                //           .toString(),
                                //       country: widget.employeeModel.country
                                //           .toString(),
                                //       branch: widget.employeeModel.branch
                                //           .toString(),
                                //       department: widget
                                //           .employeeModel.department
                                //           .toString(),
                                //       designation: widget
                                //           .employeeModel.designation
                                //           .toString(),
                                //       duty: widget.employeeModel.dutyType
                                //           .toString(),
                                //       shiftSlot:
                                //           widget.employeeModel.shift.toString(),
                                //       salaryFreq:
                                //           widget.employeeModel.salaryFrequency,
                                //       nationalexp: widget
                                //           .employeeModel.nationalExp
                                //           .toString(),
                                //       passportexp: widget
                                //           .employeeModel.passportExp
                                //           .toString(),
                                //       model: widget.employeeModel,
                                //       addEmployeeController:
                                //           addEmployeeController,
                                //     ),
                                //     width * .75);
                              },
                              child: formattedButtons('Edit', mainColor)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: height * .55,
                  width: width,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TabBar(
                            indicatorColor: black,
                            unselectedLabelColor: black.withOpacity(.5),
                            labelColor: black,
                            isScrollable: true,
                            labelStyle: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            tabs: const [
                              // empDashboardHeading('Enquery'),
                              Tab(
                                text: 'GENERAL',
                              ),
                              Tab(
                                text: 'JOB',
                              ),
                              Tab(
                                text: 'LEAVES',
                              ),
                              // Visibility(
                              //   replacement: Container(),
                              //   visible:
                              //       !ResponsiveWidget.isSmallScreen(context),
                              //   child: const Tab(
                              //     text: 'PAYROLL',
                              //   ),
                              // ),
                              // Visibility(
                              //   visible:
                              //       !ResponsiveWidget.isSmallScreen(context),
                              //   child: const Tab(
                              //     text: 'DOCUMENTS',
                              //   ),
                              // ),
                            ]),
                      ),
                      sizedHeight(),
                      Flexible(
                        child: SizedBox(
                          child: TabBarView(children: [
                            ManageEmployeeGeneral(),
                            const ManageEmployeeJob(),
                            const ManageEmployeeLeaves(),
                            // Visibility(
                            //     visible:
                            //         !ResponsiveWidget.isSmallScreen(context),
                            //     child: const ManageEmployeePayroll()),
                            // Visibility(
                            //     visible:
                            //         !ResponsiveWidget.isSmallScreen(context),
                            //     child: const ManageEmployeeDocuments()),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
