// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/entries/Active/track_order.dart';
import 'package:pub/ui/entries/completed/review_screen.dart';
import 'package:pub/ui/widget/fontText.dart';

class ActiveScreen extends StatelessWidget {
  const ActiveScreen({
    Key? key,
    required this.image,
    required this.color,
    required this.title,
    required this.carColorText,
    required this.price,
  }) : super(key: key);
  final String image;
  final Color color;
  final String title;
  final String carColorText;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.31,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.kPrimaryGrey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                //==============RHS column==========================>
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FontText(
                      text: title,
                      fam: FontWeight.bold,
                      fontsize: 27,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //===============first Row in the RHS================>
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: color,
                          size: 22,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        FontText(
                          text: carColorText,
                          fontsize: 20,
                          fam: FontWeight.w300,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.kPrimaryGrey,
                              borderRadius: BorderRadius.circular(7)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FontText(
                              text: "In Delivery",
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    //===============second Row in the RHS================>

                    Row(
                      children: [
                        FontText(
                          text: price,
                          fam: FontWeight.bold,
                          fontsize: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.KPrimaryBlack,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: TextButton(
                                child: FontText(
                                  text: "Track Order",
                                  color: AppColors.kprimaryWhite,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return TrackOrder();
                                  }));
                                },
                              )),
                        )
                      ],
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
