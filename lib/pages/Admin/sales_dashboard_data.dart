import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/custom_widgets.dart';
import '../../constants/colors.dart';
import '../../widgets/responsiveness.dart';
import '../../widgets/widgets.dart';
// import 'package:revoo/Controllers/responsiveness.dart';

// import '../../../Sales/Sales_Model_&_Controller/customerController.dart';
// import '../../colors.dart';
// import '../../custom_widgets.dart';

class SalesDashboardData extends StatefulWidget {
  const SalesDashboardData({super.key});

  @override
  State<SalesDashboardData> createState() => _SalesDashboardDataState();
}

class _SalesDashboardDataState extends State<SalesDashboardData> {
  // final CustomerController customerController = Get.put(CustomerController());

  // @override
  // void initState() {
  //   super.initState();
  //   customerController.getsalesReport();
  //   customerController.getMonthlysalesReport();
  //   customerController.getRecentProductOrder();
  //   customerController.getRecentOrder();
  // }

  @override
  Widget build(BuildContext context) {
    
        return Column(
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        inventoryDashboard(
                          voiletColor,
                         '100',
                          'Total Customers',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          skyColor,
                          '54',
                          'Total Order',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          skygreenColor,
                          '84',
                          'Returned Orders',
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: inventoryDashboard(
                            voiletColor,
                           '100',
                            'Total Customers',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            skyColor,
                            '54',
                            'Total Order',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            skygreenColor,
                            '89',
                            'Returned Orders',
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        );
     
  }
}
