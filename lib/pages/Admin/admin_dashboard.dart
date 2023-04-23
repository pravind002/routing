import 'package:flutter/material.dart';
import 'package:paneltheme/Widgets/custom_widgets.dart';
import 'package:paneltheme/constants/colors.dart';
import 'package:paneltheme/constants/utils/dimensions.dart';
import 'package:paneltheme/pages/Admin/sales_dashboard_data.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/responsiveness.dart';
import '../../widgets/widgets.dart';
import '../inventory_dashboard_data.dart';
import '../purchase_data.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  visible: !ResponsiveWidget.isSmallScreen(context),
                  child: headerRow(context, 'ADMIN Dashboard')),
              Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: const SizedBox(
                  height: 20,
                ),
              ),
              // FutureBuilder(
              //     // future: adminController.getCounts(),
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.done) {
              //         AdminDashbordCount count = snapshot.data!;
              //         return

              //         ;
              //       } else {
              //         return const LinearProgressIndicator();
              //       }
              //     }),

              Container(
                padding: const EdgeInsets.all(10),
                height: ResponsiveWidget.isSmallScreen(context)
                    ? height * .1
                    : height * .15,
                width: width,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: ResponsiveWidget.isSmallScreen(context)
                        ? BorderRadius.circular(10)
                        : const BorderRadius.all(Radius.circular(20))),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          adminDashBoard(
                            voiletColor,
                            'Number of Branches',
                            '8',
                          ),
                          sizedWidth(),
                          adminDashBoard(
                            skygreenColor,
                            'Number of Departments',
                            '1',
                          ),
                          sizedWidth(),
                          adminDashBoard(
                            pinkLine,
                            'Number of Employees',
                            '30',
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: adminDashBoard(
                              voiletColor,
                              'Number of Branches',
                              '8',
                            ),
                          ),
                          sizedWidth(),
                          Expanded(
                            child: adminDashBoard(
                              skygreenColor,
                              'Number of Departments',
                              '1',
                            ),
                          ),
                          sizedWidth(),
                          Expanded(
                            child: adminDashBoard(
                              pinkLine,
                              'Number of Employees',
                              '30',
                            ),
                          )
                        ],
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tableHeaderText2('Sales'),
                        Container(
                            padding: const EdgeInsets.all(10),
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? height * .1
                                : height * .15,
                            width: width,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const SalesDashboardData()),
                      ],
                    ),
                    sizedHeight(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tableHeaderText2('Purchase and Operation'),
                        Container(
                            padding: const EdgeInsets.all(10),
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? height * .1
                                : height * .15,
                            width: width,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: PurchaseData()),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tableHeaderText2('Inventory'),
                        Container(
                            padding: const EdgeInsets.all(10),
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? height * .1
                                : height * .15,
                            width: width,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const InventoryDashboardData()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _SalesData {
//   _SalesData(this.year, this.sales);

//   final String year;
//   final double sales;
// }
