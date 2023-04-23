import 'package:get/get.dart';
import 'package:pdf/pdf.dart';





class CustomValidator {



  static String? emailValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isEmail(value)) {
      return "invalid $text";
    } else {
      return null;
    }
  }

  static String? dateValidation({required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isDateTime(value)) {
      return "invalid $text";
    } else {
      return null;
    }
  }

  static String? aadharValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isLengthEqualTo(value, 12)) {
      return " $text length must be 12 digit";
    } else {
      return null;
    }
  }

  static String? basicTextValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else {
      return null;
    }
  }

  static String? nameValidation({required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isLengthGreaterThan(value, 2)) {
      return "$text min length is 3";
    } else {
      return null;
    }
  }

  static String? addressValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isLengthGreaterThan(value, 9)) {
      return "min length is 10";
    } else {
      return null;
    }
  }

  static String? webLinkValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isURL(value)) {
      return "invalid url";
    } else {
      return null;
    }
  }

  static String? pinCodeValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isLengthBetween(value, 4, 6)) {
      return "invalid $text";
    } else {
      return null;
    }
  }

  static String? zipCodeValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    } else if (!GetUtils.isLengthBetween(value, 4, 12)) {
      return "invalid $text";
    } else {
      return null;
    }
  }

  static String? phoneNumberValidation(
      {required String value, required String text}) {
    if (value.isEmpty || value == "") {
      return "$text is required";
    }
    // else if(value.length<4){
    //   return "invalid $text";
    // }
    else {
      return null;
    }
  }
}
