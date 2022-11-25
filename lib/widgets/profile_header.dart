import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class Profile_Header extends StatelessWidget {
  const Profile_Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.longestSide / 12,
              width: MediaQuery.of(context).size.shortestSide / 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.lightgreyColor,
              ),
              child: Icon(Icons.airplanemode_active_outlined),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book Tickets", style: Styles.h1),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "New-York",
                  style: Styles.h3.copyWith(color: Styles.textColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.security_sharp,
                        color: Styles.whiteColor,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Premium status",
                        style: Styles.h3Bold
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "Edit",
            style: Styles.h3.copyWith(color: Styles.textColor),
          ),
        ],
      ),
    );
  }
}
