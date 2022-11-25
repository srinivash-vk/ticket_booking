import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double longside;
  static late double shortside;
  static late bool portrait = false;
  static late bool landscape = false;
  static late double sidePadding;
  static late double cardInnerPadding;
  static late double iconSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    longside = MediaQuery.of(context).size.longestSide;
    shortside = MediaQuery.of(context).size.shortestSide;
    MediaQuery.of(context).orientation == Orientation.portrait
        ? portrait = true
        : portrait = false;
    MediaQuery.of(context).orientation == Orientation.landscape
        ? landscape = true
        : landscape = false;
    sidePadding = SizeConfig.shortside * 0.04;
    cardInnerPadding = SizeConfig.shortside * 0.020;
    iconSize = longside / 30;
  }
}