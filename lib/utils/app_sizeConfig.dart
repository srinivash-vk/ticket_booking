import 'package:flutter/material.dart';

class AppSizeConfig {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
