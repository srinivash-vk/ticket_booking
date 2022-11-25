import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
Color lightPrimary = Color.fromARGB(255, 104, 141, 226);

class Styles {
  static Color primaryColor = primary;
  static Color lightPrimaryColor = lightPrimary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color lightgreyColor = Color.fromARGB(255, 221, 221, 221);
  static Color lightdarkgreyColor = Color.fromARGB(255, 164, 164, 164);
  static TextStyle textStyle = TextStyle(fontSize: 16,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle h1 = TextStyle(fontSize: 26,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle h2 = TextStyle(fontSize: 21,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle h3 = TextStyle(fontSize: 17,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle h3Bold = TextStyle(fontSize: 17,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle h4 = TextStyle(fontSize: 14,color: Colors.grey.shade500,fontWeight: FontWeight.w500);
  static TextStyle h4Bold = TextStyle(fontSize: 14,color: Colors.grey.shade500,fontWeight: FontWeight.bold);
}
