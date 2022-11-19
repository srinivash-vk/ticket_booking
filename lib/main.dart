import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_Tabbar.dart';
import 'package:ticket_booking/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: primary,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Styles.primaryColor
        ),
          colorScheme: ColorScheme.fromSeed(seedColor: Styles.primaryColor),
        
      ),
      home: const Bottom_TabBar (),
    );
  }
}

