import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text hrmsHeaders(String title) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
    ),
  );
}

Text tableHeaderText(title, {align}) {
  return Text(
    title.toString(),
    textAlign: align ?? TextAlign.center,
    style: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
  );
}