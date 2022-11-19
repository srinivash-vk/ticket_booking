import 'package:flutter/cupertino.dart';
import 'package:ticket_booking/utils/app_styles.dart';

import '../utils/app_sizeConfig.dart';

class Hotel_Screen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel_Screen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppSizeConfig.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.only(right: 15, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Styles.lightgreyColor,
              blurRadius: 2,
              spreadRadius: 3,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel['place'],
            style: Styles.h2.copyWith(color: Styles.lightgreyColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
             hotel['destination'],
            style: Styles.h3.copyWith(color: Styles.whiteColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              "\$${hotel['price']}/night",
              style: Styles.h1.copyWith(color: Styles.lightgreyColor),
            ),
          ),
        ],
      ),
    );
  }
}
