import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_sizeConfig.dart';
import '../utils/app_styles.dart';

class Award_Banner extends StatelessWidget {
  const Award_Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppSizeConfig.getSize(context);
    return Container(
      width: size.width,
      height: size.height / 8,
      decoration: BoxDecoration(
          color: Styles.lightPrimaryColor,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Styles.whiteColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.lightbulb,
              color: Styles.primaryColor,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You've got a new award",
                  style: Styles.h3Bold.copyWith(color: Styles.whiteColor),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "You have 150 flights in a year",
                  style: Styles.h3Bold.copyWith(color: Styles.whiteColor),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
