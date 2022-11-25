import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/widgets/award_banner.dart';
import 'package:ticket_booking/widgets/profile_header.dart';
import '../utils/app_styles.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Profile_Header(),
            const SizedBox(
              height: 30,
            ),
            const Award_Banner(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Accmulated miles",
              style: Styles.h2,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "192802",
                style: Styles.h1.copyWith(fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Miles Accrued",
                  style: Styles.h3,
                ),
                Text(
                  "23 Nov 2022",
                  style: Styles.h3,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "23 435",
                      style: Styles.h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Miles",
                      style:
                          Styles.h3.copyWith(color: Styles.lightdarkgreyColor),
                    ),
                  ],
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Airline CO",
                      style: Styles.h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Received From",
                      style:
                          Styles.h3.copyWith(color: Styles.lightdarkgreyColor),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "145",
                      style: Styles.h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Miles",
                      style:
                          Styles.h3.copyWith(color: Styles.lightdarkgreyColor),
                    ),
                  ],
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MCDonali's",
                      style: Styles.h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Received From",
                      style:
                          Styles.h3.copyWith(color: Styles.lightdarkgreyColor),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text("How to get more miles", style: Styles.h3),
            )
          ],
        ),
      ),
    );
  }
}
