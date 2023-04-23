import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const CustomText({Key? key, required this.text, required this.size, required this.color, required this.weight}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(fontSize: size, color: color , fontWeight: weight),
    );
  }
}

Text comName(
  String company,
) {
  return Text(company,
      textScaleFactor: 1.2,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: black, fontWeight: FontWeight.w600,
          //  fontSize: 22
        ),
      ));
}

Text ownerName(
  String owner,
) {
  return Text(owner,
      textScaleFactor: 1,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: black, fontWeight: FontWeight.w500,
          //  fontSize: 20
        ),
      ));
}


Text formTitle(String title, {Color? color}) {
  return Text(
    title,
    style: GoogleFonts.inter(
        textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.2,
            color: color ?? const Color(0xff878787))),
  );
}

Text tableHeaderText2(title, {align}) {
  return Text(
    title.toString(),
    textAlign: align ?? TextAlign.center,
    style: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
  );
}

Text empDashboardSubHeading(
  String title,
) {
  return Text(title,
      style: GoogleFonts.poppins(
        textStyle:
            TextStyle(color: black, fontWeight: FontWeight.w500, fontSize: 18),
      ));
}

Text empDashboardHeading(String title, {color, fontSize}) {
  return Text(title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color ?? black,
            fontWeight: FontWeight.w600,
            fontSize: fontSize ?? 18),
      ));
}
