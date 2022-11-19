import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_sizeConfig.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppSizeConfig.getSize(context);
    return Container(
      width: size.width*0.90,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // showing the blue part of the card
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.h3.copyWith(color: Styles.whiteColor),
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Styles.whiteColor)),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                                    angle: 1.4,
                                    child: Icon(
                                      Icons.airplanemode_active_rounded,
                                      color: Styles.whiteColor,
                                    ))),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        "LDN ",
                        style: Styles.h3.copyWith(color: Styles.whiteColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: Styles.h4.copyWith(color: Styles.whiteColor),
                        ),
                      ),
                      Text(
                        "10H 30M",
                        style: Styles.h4.copyWith(color: Styles.whiteColor),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: Styles.h4.copyWith(color: Styles.whiteColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // showing the orange part of the card
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              height: 1,
                              width: 3,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Styles.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.whiteColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          
          // show bottom part of the orange card
          Container(
            decoration:  BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.only(left: 16 ,bottom: 16,right: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("19 Nov",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Date",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("08:30 Am",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Departure time",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("678",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Number",style: Styles.h3.copyWith(color: Styles.whiteColor),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
          )
          ],
        ),
      ),
    );
  }
}
