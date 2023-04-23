import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paneltheme/widgets/responsiveness.dart';

import '../constants/colors.dart';
import '../constants/utils/dimensions.dart';
import 'custom_texts.dart';
import 'custom_widgets.dart';

Container recordsPerPageContainer() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xffD7F5E7).withOpacity(.2)),
    child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            customText("20", 16, FontWeight.w600, Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.white,
                ))
          ],
        )),
  );
}

Container tableHeaderContainer(List headerList, {double? radius}) {
  return Container(
    width: width * width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius ?? 10),
      color: Colors.white,
      // border: Border.all(color: black)
    ),
    child: Table(
      // border: TableBorder.symmetric(),
      children: [
        TableRow(children: [
          for (int i = 0; i < headerList.length; i++) ...[
            TableCell(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: tableHeaderText(headerList[i]),
            )),
          ]
        ])
      ],
    ),
  );
}

Container formattedButtons(title, bgColor) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(8), color: bgColor),
    child: Center(child: customText(title, 16, FontWeight.w600, Colors.white)),
  );
}

Container dialogueHeader(title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    color: mainColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customText(title, 20, FontWeight.w600, Colors.white),
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            )),
      ],
    ),
  );
}

Container adminDashBoard(Color color, String title, String name) {
  return Container(
    width: ResponsiveWidget.isSmallScreenWithoutContext() ? width * .5 : null,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                // textScaleFactor: 1.1,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w400,
                    // fontSize: 20
                  ),
                )),
            Text(name,
                textScaleFactor: 1.4,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w500,
                    // fontSize: 30
                  ),
                )),
          ],
        ),
      ],
    ),
  );
}

Container inventoryDashboard(
  Color color,
  String title,
  String name,
) {
  return Container(
    width: ResponsiveWidget.isSmallScreenWithoutContext() ? width * .5 : null,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                textScaleFactor: 1.5,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w500,
                    // fontSize: 30
                  ),
                )),
            Text(name,
                textScaleFactor: 1.3,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: black,
                    fontWeight: FontWeight.w400,
                    // fontSize: 20
                  ),
                ))
          ],
        ),
      ],
    ),
  );
}

Divider empDivider() {
  return Divider(
    thickness: 1,
    color: black.withOpacity(.2),
  );
}

Container leaveRequestButton(
    context, Color color, String leaveName, String total) {
  return Container(
    padding: ResponsiveWidget.isSmallScreen(context)
        ? const EdgeInsets.all(5)
        : const EdgeInsets.all(0),
    height: ResponsiveWidget.isSmallScreen(context) ? null : height * .1,
    width: ResponsiveWidget.isSmallScreen(context) ? null : width * .1,
    margin: ResponsiveWidget.isSmallScreen(context)
        ? const EdgeInsets.all(5)
        : const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
        color: color, borderRadius: const BorderRadius.all(Radius.circular(6))),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        onPressed: () {},
        child: RichText(
            textScaleFactor: 1.1,
            textAlign: TextAlign.center,
            text: TextSpan(
                text: leaveName,
                style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(color: white, fontWeight: FontWeight.w600),
                ),
                children: [
                  TextSpan(
                    text: total,
                    style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ])),
      ),
    ),
  );
}
