import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/custom_dailog.dart';
import '../../Widgets/custom_texts.dart';
import '../../Widgets/widgets.dart';
import '../../constants/colors.dart';
import '../../constants/language.dart';
import '../../constants/utils/dimensions.dart';
import '../../widgets/custom_widgets.dart';
import 'admin_profile_form.dart';

class SuperAdminCompanies extends StatelessWidget {
  const SuperAdminCompanies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              headerRow(context, 'Manage Companies'),
              sizedHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      customText("$langRegisterCompanies : 20", 22,
                          FontWeight.w600, Colors.white)
                    ],
                  ),
                ],
              ),
              sizedHeight(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      recordsPerPageContainer(),
                      sizedBoxWidth(5),
                      customText(langRecordsPerPage, 16, FontWeight.w600,
                          Colors.white),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    width: Get.width * .3,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: white.withOpacity(.6)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      // controller: searchController,
                      style: TextStyle(color: white),

                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(top: 5, left: 10),
                          hintText: 'Search.......',
                          hintStyle: TextStyle(color: white.withOpacity(.6)),
                          suffixIcon: IconButton(
                              padding: const EdgeInsets.all(0),
                              alignment: Alignment.center,
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: white.withOpacity(.6),
                              ))),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      customDialog(
                          context, const AdminProfileForm(), width * .75);
                    },
                    child: formattedButtons(langAddNew, addButtonColor),
                  ),
                ],
              ),
              sizedBoxHeight(15),
              tableHeaderContainer([
                langLogo,
                langCompanyName,
                langPhone,
                langEmailAddress,
                langCountry,
                langStatus,
                langAction
              ]),
              sizedBoxHeight(15),

              Column(
                children: [
                  for (int i = 0; i < 10; i++) ...[
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //     //     SuperAdminCompanyDetails(
                        //     //   admin: superAdminController.demo[i],
                        //     // ),
                        //   ),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white,
                        ),
                        child: Table(
                          border: TableBorder.all(
                              width: .5, color: Colors.black.withOpacity(.5)),
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Container(
                                height: 60,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: const CircleAvatar(),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText('Future X'),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText('9876543212'),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText('abc1234@gmail.com'),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText('India'),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText(""),
                              )),
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: tableHeaderText(""),
                              )),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ]
                ],
              )
              // FutureBuilder(
              //     future: superAdminController.getAdminList(),
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.done) {
              //         // List<Admin> list = snapshot.data as List<Admin>;
              //         // print("Incoming Data : $list");

              //         //superAdminController.totalCompanies.value = list.length;
              //         return

              //       } else {
              //         return const CircularProgressIndicator();
              //       }
              //     })
            ],
          ),
        ),
      ),
    );
  }
}
