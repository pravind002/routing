import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
String? action;
getSharedPref() async{
  prefs = await SharedPreferences.getInstance();
  // String? pref = await prefs!.getString(key);
}