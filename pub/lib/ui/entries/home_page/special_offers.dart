// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/widget/fontText.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppColors.kPrimaryGrey),
        width: double.infinity,
        child: Row(children: [
          Expanded(
            child: Container(
              height: 280,
              padding: EdgeInsets.only(left: 20, top: 40),
              width: 147,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  FontText(
                    textAlign: TextAlign.start,
                    text: " 20%",
                    fontsize: 40,
                    maxLine: 30,
                    // fam: FontWeight.w900,
                    fontFam: "poppinss",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FontText(
                    text: "week discount",
                    fontsize: 25,
                    fam: FontWeight.w700,
                    fontFam: "montserrat",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FontText(
                    text: "Get a new car discount,",
                    fontsize: 16,
                    space: 1.5,
                    fam: FontWeight.w300,
                    fontFam: "montserrat",
                  ),
                  FontText(
                    text: " only valid for this week",
                    fontsize: 16,
                    fam: FontWeight.w300,
                    fontFam: "montserrat",
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("lib/ui/assets/image/benz4.png"))),
            ),
          )
        ]));
  }
}
