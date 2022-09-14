// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/entries/Active/order_status.dart';

import 'package:pub/ui/widget/fontText.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: AppColors.kPrimaryGrey,
                          ),
                          child: Image.asset("lib/ui/assets/image/benz4.png")),
                    ),
                    SizedBox(width: 14),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FontText(
                            text: "BMW M5 SERIES",
                            color: AppColors.KPrimaryBlack,
                            fontsize: 25,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(Icons.circle, color: Colors.grey),
                              FontText(text: "color"),
                            ],
                          ),
                          FontText(
                            text: "\$3467,56",
                            color: AppColors.KPrimaryBlack,
                            fontsize: 25,
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.card_giftcard_outlined, size: 22),
                SizedBox(height: 13),
                Icon(
                  Icons.check_circle_outline,
                  size: 22,
                ),
              ],
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(Icons.train_outlined),
                const SizedBox(height: 13),
                const Icon(
                  Icons.check_circle_outline,
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.card_giftcard),
                SizedBox(height: 13),
                Icon(Icons.check_circle_outline, color: AppColors.kPrimaryGrey),
              ],
            ),
            Column(
              children: [
                Icon(Icons.card_giftcard),
                SizedBox(height: 13),
                Icon(Icons.check_circle_outline, color: AppColors.kPrimaryGrey),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 27,
        ),
        FontText(
          text: "Car in Delivery service (Train)",
          fontFam: " openSans",
          fontsize: 16,
          fam: FontWeight.bold,
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Align(
            alignment: Alignment.topLeft,
            child: FontText(
              text: "Order Status Details",
              color: AppColors.KPrimaryBlack,
              fontFam: " openSans",
              fontsize: 19,
              fam: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(child: OrderStatus())
      ],
    ));
  }
}
