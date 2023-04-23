import 'package:flutter/material.dart';
import 'package:paneltheme/Widgets/custom_widgets.dart';
import 'package:paneltheme/constants/colors.dart';
import 'package:paneltheme/constants/utils/dimensions.dart';

import '../../Widgets/custom_text.dart';

class SuperAdminDashboard extends StatelessWidget {
  const SuperAdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          headerRow(context, 'Welcome Name'),
          sizedHeight(),
          Container(
            height: height * .15,
            width: width,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                  child: companyCount(voiletColor, '200', 'Total Company',
                      Icons.arrow_drop_down),
                ),
                Expanded(
                  child: companyCount(Colors.orangeAccent, '200',
                      'Total Company', Icons.arrow_drop_down),
                ),
                Expanded(
                  child: companyCount(Colors.greenAccent, '200',
                      'Total Company', Icons.arrow_drop_down),
                ),
                Expanded(
                  child: companyCount(voiletColor.withOpacity(.5), '200',
                      'Total Company', Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
          sizedHeight(),
          Expanded(
            // flex: 10,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                sizedWidth(),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedWidth(),
                        Text(
                          'Recent Registration',
                          textScaleFactor: 1.4,
                          style: TextStyle(
                              color: dividerColor,
                              // fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Flexible(
                          child: SingleChildScrollView(
                            child: Column(children: [
                              for (int i = 0; i < 10; i++) ...[
                                card(
                                  comName('Test Company'),
                                  ownerName('Owner'),
                                  Text(
                                    '2 min ago',
                                    style:
                                        TextStyle(color: black.withOpacity(.3)),
                                  ),
                                ),
                              ],
                            ]),
                          ),
                        ),
                        // ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

// class _SalesData {
//   _SalesData(this.year, this.sales);

//   final String year;
//   final double sales;
// }
