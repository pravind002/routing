import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../../Controllers/responsiveness.dart';
// import '../../../Inventory/inventoryModalController/InventoryController.dart';
// import '../../../constants/sharedpreference.dart';
// import '../../colors.dart';
// import '../../custom_widgets.dart';
import '../Widgets/custom_widgets.dart';
import '../constants/colors.dart';
import '../widgets/responsiveness.dart';
import '../widgets/widgets.dart';

class InventoryDashboardData extends StatefulWidget {
  const InventoryDashboardData({super.key});

  @override
  State<InventoryDashboardData> createState() => _InventoryDashboardDataState();
}

class _InventoryDashboardDataState extends State<InventoryDashboardData> {
  // InventoryController inventoryController = Get.put(InventoryController());

  // final String? companyId = prefs!.getString('adminID');
  // final String branchId = prefs!.getString('branchId')!;

  // @override
  // void initState() {
  //   super.initState();
  //   inventoryController.getInventorySummarycount();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        inventoryDashboard(
                          voiletColor,
                         '20',
                          'Total Product',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          lightGreenLine,
                          '10',
                          'Today Inward',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          yellow1.withOpacity(.95),
                          '200',
                          'Total Outward',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          skyColor,
                          '50',
                          'Today Inward',
                        ),
                        sizedWidth(),
                        inventoryDashboard(
                          skygreenColor,
                          '60',
                          'Today Outward',
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
                            '30',
                            'Total Product',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            lightGreenLine,
                            '5',
                            'Total Inward',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            yellow1.withOpacity(.95),
                            '60',
                            'Total Outward',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            skyColor,
                            '30',
                            'Today Inward',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: inventoryDashboard(
                            skygreenColor,
                            '12',
                            'Today Outward',
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        );
    
  }
}
