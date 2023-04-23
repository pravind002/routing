import 'package:flutter/material.dart';
import 'package:paneltheme/constants/utils/dimensions.dart';
import 'package:paneltheme/widgets/custom_widgets.dart';

import '../../constants/colors.dart';

class LeaveRequestPage extends StatelessWidget {
  const LeaveRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            headerRow(context, 'Leave Summary'),
            sizedHeight(),
            SizedBox(
              height: height * .4,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    // margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: yellowish,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                    ),
                  )),
                  sizedWidth(),
                  Expanded(
                      child: Container(
                    // margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: yellowish,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Container(
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                    ),
                  ))
                ],
              ),
            ),
            sizedHeight(),
            Expanded(
                child: Container(
              // margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: yellowish,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
