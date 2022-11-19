import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/hotel_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/utils/sample_data.dart';

import '../utils/FiledDecoration.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good morning",
                      style: Styles.h3,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Book Tickets", style: Styles.h1),
                  ],
                ),
                Container(
                    height: MediaQuery.of(context).size.longestSide / 12,
                    width: MediaQuery.of(context).size.shortestSide / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Styles.whiteColor,
                    ),
                    child: const Icon(Icons.airplanemode_active_outlined))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: fieldDecoration(
                  label: "Search", prefixIcon: const Icon(Icons.search)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Flights",
                  style: Styles.h2,
                ),
                GestureDetector(
                  onTap: () {
                    print("Tapped View All");
                  },
                  child: Text(
                    "View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                TicketView(),
                TicketView(),
                TicketView(),
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.h2,
                ),
                GestureDetector(
                  onTap: () {
                    print("Tappe d View All");
                  },
                  child: Text(
                    "View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: hotelList.map((hotel) =>Hotel_Screen(hotel: hotel)).toList(),
            ),
          ),
           const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
