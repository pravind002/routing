import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paneltheme/widgets/responsiveness.dart';

import '../constants/colors.dart';
import 'custom_texts.dart';

Container topAppBarProfile() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    // padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        // image: DecorationImage(
        //   image: NetworkImage(imgURL + prefs!.getString('logo')!),
        // ),
        border: Border.all(color: black)),
    child: CircleAvatar(
      radius: 15,
      backgroundColor: white,
      // backgroundImage: NetworkImage(imgURL + prefs!.getString('logo')!),
    ),
  );
}

SizedBox fiveSizedBox() => const SizedBox(
      height: 5,
      width: 5,
    );

Widget headerRow(context, title) {
  return ResponsiveWidget.isSmallScreen(context)
      ? SizedBox(
          height: 120,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: headerRowContent(title),
          ),
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [headerRowContent(title)],
        );
}

headerRowContent(title) {
  return hrmsHeaders(title);
}

Container companyCount(Color color, String title, String name, IconData icon) {
  return Container(
    margin: const EdgeInsets.all(10),
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
                style: GoogleFonts.rubik(
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
        Icon(icon)
      ],
    ),
  );
}

SizedBox sizedHeight() {
  return const SizedBox(
    height: 20,
  );
}

SizedBox sizedWidth() {
  return const SizedBox(
    width: 20,
  );
}

Padding logoImg(img) {
  return const Padding(
      padding: EdgeInsets.all(5),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        // child: ClipOval(
        //   child: getNetworkImage(img),
        // ),
      ));
}

SizedBox sizedBoxHeight(double height) {
  if (height is int) {
    height = height.toDouble();
  }
  return SizedBox(
    height: height,
  );
}

SizedBox sizedBoxWidth(double width) {
  return SizedBox(
    width: width,
  );
}

Text customText(title, double size, fontWeight, color) {
  return Text(
    title,
    style: GoogleFonts.poppins(
        fontSize: size, fontWeight: fontWeight, color: color),
  );
}

Padding divider() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Divider(
      thickness: 1,
      color: const Color(0xff000000).withOpacity(.4),
    ),
  );
}

Text tableRowData(title) {
  return Text(
    title,
    style: GoogleFonts.poppins(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
  );
}

Card card(Text company, Text owner, msg) {
  return Card(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(7.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 25,
            // backgroundColor: Colors.white,
            // backgroundImage: NetworkImage(imgURL + logo),
          ),
          // const CircleAvatar(
          //   radius: 25,
          // ),
          sizedBoxWidth(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [company, owner, msg],
          )
        ],
      ),
    ),
  );
}
