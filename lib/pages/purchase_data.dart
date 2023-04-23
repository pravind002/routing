import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../../Controllers/responsiveness.dart';

// import 'package:revoo/Purchasing/purchasing_Model_Controller/purchasing_controller.dart';
// import '../../colors.dart';
// import '../../custom_widgets.dart';
import '../Widgets/custom_widgets.dart';
import '../constants/colors.dart';
import '../widgets/responsiveness.dart';
import '../widgets/widgets.dart';

class PurchaseData extends StatelessWidget {
  PurchaseData({super.key});

  // PurchasingController purchaseController = Get.put(PurchasingController());

  @override
  Widget build(BuildContext context) {
    // purchaseController.getPurchaseHistoryOrderCount();
    // purchaseController.fetchPurchaseOrderCount();
    // purchaseController.getPurchaseHistory();
  
        return Column(
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        adminDashBoard(
                          voiletColor,
                          'Total Purchase',
                          '30',
                        ),
                        sizedWidth(),
                        adminDashBoard(
                          skyColor,
                          'Total RFQ ',
                          '56',
                        ),
                        sizedWidth(),
                        adminDashBoard(
                          pinkLine,
                          'RFQ Approved',
                          '45',
                        ),
                        sizedWidth(),
                        adminDashBoard(
                          lightGreenLine,
                          'RFQ Pending',
                          '15',
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
                          child: adminDashBoard(
                            voiletColor,
                            'Total Purchase \n',
                            '95',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: adminDashBoard(
                            skyColor,
                            'Total RFQ \n',
                            '8',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: adminDashBoard(
                            pinkLine,
                            'RFQ Approved\n',
                            '54',
                          ),
                        ),
                        sizedWidth(),
                        Expanded(
                          child: adminDashBoard(
                            lightGreenLine,
                            'RFQ Pending\n',
                            '95',
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        );
     
  }
}
