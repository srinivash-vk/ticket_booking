import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_styles.dart';

fieldDecoration({required String label,suffixIcon, prefixIcon}) =>
     InputDecoration(
      contentPadding:const EdgeInsets.all(20),
      fillColor: Styles.lightgreyColor,
      filled: true,
     hintText: label,
      errorStyle:const TextStyle(color: Colors.red),
      hintStyle: Styles.h4,
      labelStyle: Styles.h4,
      prefixIcon: prefixIcon,
      prefixIconColor: Styles.bgColor,
       focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: Styles.lightgreyColor, width: 0.7),
      ),
      enabledBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: Styles.lightgreyColor, width: 0.7),
      ),
      errorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: Styles.lightgreyColor, width: 0.7),
      ),
      focusedErrorBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:  BorderSide(color: Styles.lightgreyColor, width: 0.7),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:  BorderSide(color: Styles.lightgreyColor, width: 0.7)),
    );
