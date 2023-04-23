import 'package:flutter/material.dart';

customDialog(BuildContext context, Widget childWidget, double width) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SizedBox(width: width, child: childWidget),
        );
      });
}

customDialogForFilter(BuildContext context, Widget childWidget, double width) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: SizedBox(width:width,child: childWidget),
      
        );
      });
}

customDialogPrint(BuildContext context, Widget childWidget, double width) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SizedBox(width: width, child: childWidget),
        );
      });
}

customDialogEmpList(
    BuildContext context, Widget childWidget, double width, double height) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SizedBox(height: height, width: width, child: childWidget),
        );
      });
}

idCardDialog(BuildContext context, Widget childWidget) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SizedBox(width: 700, height: 700, child: childWidget),
        );
      });
}
