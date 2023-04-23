import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paneltheme/Widgets/widgets.dart';

import '../../Widgets/custom_widgets.dart';
import '../../constants/navigation_instances.dart';
import '../../widgets/colors.dart';
import '../../widgets/responsiveness.dart';

class AdminEmployee extends StatelessWidget {
  const AdminEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1A58A8),
        body: Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(20),
          child: Column(
            children: [
              Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  // replacement: hrmsHeaders2('All Employees'),
                  child: headerRow(context, "Manage Employee")),
              Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  child: sizedHeight()),
              Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // FutureBuilder(
                            //     future:
                            //         branchPostController.getBranch(companyId),
                            //     builder: (context, snapshot) {
                            //       if (snapshot.connectionState ==
                            //           ConnectionState.done) {
                            //         transactionModeList = [];
                            //         if (!isSelected) {
                            //           transactionModeList.addAll(
                            //               snapshot.data! as List<BranchModel>);
                            //         }
                            //         if (isUpdate) {
                            //           if (selected.value.runtimeType == Null) {
                            //             print('yes');
                            //             selected.value = transactionModeList
                            //                 .where((element) =>
                            //                     element.branchCode ==
                            //                     selectedDropDownValue
                            //                         .branchCode)
                            //                 .first;
                            //             print(selected.value!.branchCode);
                            //           }
                            //         }

                            //         return Column(
                            //           children: [
                            //             SizedBox(
                            //               width: Get.width * 0.1,
                            //               child: Container(
                            //                 color: Colors.white,
                            //                 padding: const EdgeInsets.symmetric(
                            //                     horizontal: 5),
                            //                 child: DropdownButtonHideUnderline(
                            //                   child: Obx(() =>
                            //                       DropdownButton<BranchModel>(
                            //                         isExpanded: true,
                            //                         hint: Text(
                            //                           'Branch',
                            //                           style:
                            //                               GoogleFonts.poppins(
                            //                                   textStyle:
                            //                                       TextStyle(
                            //                             fontSize:
                            //                                 const AdaptiveTextSize()
                            //                                     .getadaptiveTextSize(
                            //                                         context,
                            //                                         16),
                            //                             fontWeight:
                            //                                 FontWeight.w500,
                            //                             color: Colors.black,
                            //                           )),
                            //                         ),
                            //                         value: selected.value,
                            //                         icon: const Icon(
                            //                             Icons.arrow_drop_down,
                            //                             color: Colors.black),
                            //                         elevation: 16,
                            //                         style: const TextStyle(
                            //                             color: Colors.black),
                            //                         underline: Container(
                            //                           height: 2,
                            //                           color: Colors.black,
                            //                         ),
                            //                         onChanged: (BranchModel?
                            //                             newValue) {
                            //                           selected.value =
                            //                               newValue!;
                            //                           isSelected = true;
                            //                           selectedBranchCode =
                            //                               selected.value!
                            //                                   .branchCode;
                            //                           print(selected
                            //                               .value!.branchCode);
                            //                           print(selectedBranchCode);
                            //                           departmentController
                            //                               .getBranchWiseDepartment(
                            //                                   companyId,
                            //                                   selectedBranchCode);
                            //                           // print(selected.value!.transactionMode);
                            //                           // print(selected.value!.transactionModeId);
                            //                         },
                            //                         items: transactionModeList
                            //                             .map((value) {
                            //                           return DropdownMenuItem<
                            //                               BranchModel>(
                            //                             value: value,
                            //                             child: Padding(
                            //                               padding:
                            //                                   const EdgeInsets
                            //                                       .all(8.0),
                            //                               child: Text(
                            //                                   value.branchName),
                            //                             ),
                            //                           );
                            //                         }).toList(),
                            //                       )),
                            //                 ),
                            //               ),
                            //             ),
                            //             // tenSizedBox(),
                            //             // tenSizedBox()
                            //           ],
                            //         );
                            //       } else {
                            //         return const CircularProgressIndicator();
                            //       }
                            //     }),
                            // FutureBuilder(
                            //     // future: departmentController
                            //     //     .getBranchWiseDepartment(
                            //     //         companyId, selectedBranchCode),
                            //     builder: (context, snapshot) {
                            //       if (snapshot.connectionState ==
                            //           ConnectionState.done) {
                            //         // List<DepartmentModel> list =
                            //         //     departmentController.branchDepartments;
                            //         // print(list);
                            //         transactionModeListDepartment = [];
                            //         if (!isSelected) {
                            //           transactionModeListDepartment.addAll(
                            //               snapshot.data!
                            //                   as List<DepartmentModel>);
                            //         }
                            //         if (isUpdate) {
                            //           if (selected.value.runtimeType == Null) {
                            //             print('yes');
                            //             selectedDepartment.value =
                            //                 transactionModeListDepartment
                            //                     .where((element) =>
                            //                         element.branch ==
                            //                         selectedDropDownValueDepartment
                            //                             .branch)
                            //                     .first;
                            //             print(selectedDepartment.value!.branch);
                            //           }
                            //         }

                            //         return Column(
                            //           children: [
                            //             SizedBox(
                            //               width: Get.width * 0.1,
                            //               child: Container(
                            //                 color: Colors.white,
                            //                 padding: const EdgeInsets.symmetric(
                            //                     horizontal: 5),
                            //                 // child: DropdownButtonHideUnderline(
                            //                 //   child: Obx(() => DropdownButton<
                            //                 //           DepartmentModel>(
                            //                 //         isExpanded: true,
                            //                 //         hint: Text(
                            //                 //           'Department',
                            //                 //           style:
                            //                 //               GoogleFonts.poppins(
                            //                 //                   textStyle:
                            //                 //                       TextStyle(
                            //                 //             fontSize:
                            //                 //                 const AdaptiveTextSize()
                            //                 //                     .getadaptiveTextSize(
                            //                 //                         context,
                            //                 //                         16),
                            //                 //             fontWeight:
                            //                 //                 FontWeight.w500,
                            //                 //             color: Colors.black,
                            //                 //           )),
                            //                 //         ),
                            //                 //         value: selectedDepartment
                            //                 //             .value,
                            //                 //         icon: const Icon(
                            //                 //             Icons.arrow_drop_down,
                            //                 //             color: Colors.black),
                            //                 //         elevation: 16,
                            //                 //         style: const TextStyle(
                            //                 //             color: Colors.black),
                            //                 //         underline: Container(
                            //                 //           height: 2,
                            //                 //           color: Colors.black,
                            //                 //         ),
                            //                 //         onChanged: (DepartmentModel?
                            //                 //             newValue) async {
                            //                 //           selectedDepartment.value =
                            //                 //               newValue!;
                            //                 //           isSelected = true;
                            //                 //           selectedDepartmentCode =
                            //                 //               selectedDepartment
                            //                 //                   .value!.deptCode;
                            //                 //           print(
                            //                 //               selectedDepartmentCode);
                            //                 //           // var res = await designationController.getDepartmentWiseDesignation(companyId!, selectedDepartmentCode);
                            //                 //           // print("Res:$res");
                            //                 //           // print(selected.value!.transactionMode);
                            //                 //           // print(selected.value!.transactionModeId);
                            //                 //         },
                            //                 //         items: list.map((value) {
                            //                 //           return DropdownMenuItem<
                            //                 //               DepartmentModel>(
                            //                 //             value: value,
                            //                 //             child: Padding(
                            //                 //               padding:
                            //                 //                   const EdgeInsets
                            //                 //                       .all(8.0),
                            //                 //               child: Text(
                            //                 //                   value.deptName),
                            //                 //             ),
                            //                 //           );
                            //                 //         }).toList(),
                            //                 //       )),
                            //                 // ),
                            //               ),
                            //             ),
                            //             // tenSizedBox(),
                            //             // tenSizedBox()
                            //           ],
                            //         );
                            //       } else {
                            //         return const CircularProgressIndicator();
                            //       }
                            //     }),
                            Container(
                              width: Get.width * .2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff3A3A5A)),
                              child: Center(
                                  child: SizedBox(
                                height: 45,
                                // padding: const EdgeInsets.symmetric(horizontal: 40),
                                child: Center(
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                    // controller: empNameController,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white.withOpacity(.4),
                                          fontWeight: FontWeight.w300),
                                      hintText: "Employee Name",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              )),
                            ),
                            Row(
                              children: [
                                // containerRowData("Start Date", context),
                                IconButton(
                                    onPressed: () async {
                                      // DateTime? pickedDate =
                                      //     await showDatePicker(
                                      //         context: context,
                                      //         initialDate: DateTime.now(),
                                      //         firstDate: DateTime(1900),
                                      //         lastDate: DateTime(2101));

                                      // if (pickedDate != null) {
                                      //   print(
                                      //       pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      //   String formattedDate =
                                      //       DateFormat('yyyy-MM-dd')
                                      //           .format(pickedDate);
                                      //   print(formattedDate);

                                      //   DOBController.value.text =
                                      //       formattedDate;

                                      //   // dateinput.text = formattedDate;
                                      // } else {
                                      //   print("Date is not selected");
                                      // }
                                    },
                                    icon:
                                        const Icon(Icons.calendar_month_sharp))
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                // await addEmployeeController.searchEmployee(
                                //     companyId,
                                //     selectedBranchCode,
                                //     selectedDepartmentCode,
                                //     empNameController.text,
                                //     DOBController.value.text);
                                // // check = true;
                                // // await addEmployeeController.searchEmployee(
                                // //     companyId,
                                // //     selectedBranchCode,
                                // //     selectedDepartmentCode,
                                // //     empNameController.text,
                                // //     DOBController.value.text);
                                // check.value = true;
                                // // print("DATA RECEIVED : $status");
                              },
                              child: Container(
                                width: Get.width * .08,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xff3A3A5A)),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text(
                                      "Go",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                    )),
              ),
              sizedHeight(),
              Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // hrmsHeaders2("See All"),
                    sizedWidth(),
                    InkWell(
                        onTap: () {
                          // customDialog(
                          //     context,
                          //     AddEmployees(
                          //       type: false,
                          //       greeting: '',
                          //       firstName: "",
                          //       lastName: "lastName",
                          //       email: "email",
                          //       phoneNo: "phoneNo",
                          //       civilId: "civilId",
                          //       passportNo: 'passportNo',
                          //       nationalexp: 'civilIdDate',
                          //       passportexp: 'passportDate',
                          //       address: "address",
                          //       city: "city",
                          //       zipCode: "zipCode",
                          //       empId: "empId",
                          //       wage: 'wage',
                          //       bankName: "bankName",
                          //       bankBranchName: "bankBranchName",
                          //       accountNo: "accountNo",
                          //       bbanNo: "bbanNo",
                          //       emergePhoneNo: "emergePhoneNo",
                          //       emergeContactName: 'emergeContactName',
                          //       emergeContactRel: 'emergeContactRel',
                          //       officialEmail: "officialEmail",
                          //       password: "password",
                          //       dob: "dob",
                          //       hiringDate: "hiringDate",
                          //       joiningDate: "joiningDate",
                          //       gender: '',
                          //       maritalStatus: '',
                          //       country: '',
                          //       branch: '',
                          //       department: '',
                          //       designation: '',
                          //       duty: '',
                          //       shiftSlot: '',
                          //       salaryFreq: '',
                          //       model: AddEmployeeModel(
                          //         firstName: "",
                          //         lastName: "lastName",
                          //         email: "email",
                          //         phoneNo: "phoneNo",
                          //         civilId: "civilId",
                          //         passportNo: 'passportNo',
                          //         address: "address",
                          //         city: "city",
                          //         zipCode: "zipCode",
                          //         empId: "empId",
                          //         wage: 'wage',
                          //         bankName: "bankName",
                          //         bankBranchName: "bankBranchName",
                          //         accountNo: "accountNo",
                          //         bbanNo: "bbanNo",
                          //         emergePhoneNo: "emergePhoneNo",
                          //         emergeContactName: 'emergeContactName',
                          //         emergeContactRel: 'emergeContactRel',
                          //         officialEmail: "officialEmail",
                          //         password: "password",
                          //         dob: "dob",
                          //         hiringDate: "hiringDate",
                          //         joiningDate: "joiningDate",
                          //         gender: '',
                          //         maritalStatus: '',
                          //         country: '',
                          //         branch: '',
                          //         department: '',
                          //         designation: '',
                          //         companyId: "null",
                          //         dutyType: "null",
                          //         greet: "null",
                          //         nationalExp: "null",
                          //         passportExp: "null",
                          //         profilePic: "null",
                          //         salaryFrequency: "null",
                          //         shift: "null",
                          //       ),
                          //       addEmployeeController: addEmployeeController,
                          //     ),
                          //     width * .75);
                        },
                        child: formattedButtons('Add New', dividerColor)),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              ResponsiveWidget.isSmallScreen(context)
                  ? FutureBuilder(
                      // future: addEmployeeController.searchEmployee(
                      //     companyId,
                      //     selectedBranchCode,
                      //     selectedDepartmentCode,
                      //     empNameController.text,
                      //     DOBController.value.text),
                      // : addEmployeeController.getEmpDetails(companyId!),
                      builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // addEmployeeController.empDetailsList;
                        // print(
                        //     "EMPLOYEE RECEIVED DETAILS : ${addEmployeeController.empDetailsList}");
                        return Obx(() {
                          return Flexible(
                            child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(19),
                                      color: const Color(0xffFFC145),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(19),
                                              color: const Color(0xffEFEFF2)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      child: CircleAvatar(
                                                        radius: 35,
                                                        backgroundColor:
                                                            Colors.white,
                                                        // backgroundImage: NetworkImage(imgURL +
                                                        //     addEmployeeController
                                                        //         .empDetailsList[
                                                        //             index]
                                                        //         .profilePic!),
                                                      )),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'First Name',
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: const Color(
                                                                0xff3A3A5A)),
                                                      ),
                                                      Text(
                                                        'EMPID 002',
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: const Color(
                                                                0xff3A3A5A)),
                                                      ),
                                                      Text(
                                                        'Designation',
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: const Color(
                                                                0xff3A3A5A)),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        // navigationController.pushDetailsRoute(
                                                        //     "HrmsMangeEmployeeDetails",
                                                        //     addEmployeeController
                                                        //             .empDetailsList[
                                                        //         index]);
                                                      },
                                                      icon: const Icon(
                                                          Icons.arrow_right))
                                                ],
                                              )
                                            ],
                                          )),
                                    ),
                                  );
                                }),
                          );
                        });
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    })
                  : Flexible(
                      child: GridView.builder(
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              // maxCrossAxisExtent: 370,
                              childAspectRatio: 6 / 2.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 0),
                      // gridDelegate:
                      //     const SliverGridDelegateWithFixedCrossAxisCount(
                      //   crossAxisCount: 3,
                      //   crossAxisSpacing: 10,
                      //   mainAxisSpacing: 10,
                      //   childAspectRatio: 3 / 1.12,
                      // ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: const Color(0xffFFC145),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        color: const Color(0xffEFEFF2)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Padding(
                                                padding: EdgeInsets.all(20),
                                                child: CircleAvatar(
                                                  radius: 35,
                                                  backgroundColor: Colors.white,
                                                  // backgroundImage: NetworkImage(imgURL +
                                                  //     addEmployeeController
                                                  //         .empDetailsList[index]
                                                  //         .profilePic),
                                                )),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // constraints:
                                                  //     BoxConstraints(
                                                  //         maxWidth: width * .075),
                                                  child: Text(
                                                    'First Name',
                                                    maxLines: 2,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: const Color(
                                                            0xff3A3A5A)),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Text(
                                                  'EMPID002',
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff3A3A5A)),
                                                ),
                                                Text(
                                                  "Designation",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff3A3A5A)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  navigationController
                                                      .pushDetailsRoute(
                                                          "HrmsMangeEmployeeDetails",
                                                          context);
                                                },
                                                icon: const Icon(
                                                    Icons.arrow_right))
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      },
                    )),
            ],
          ),
        ));
  }
}
