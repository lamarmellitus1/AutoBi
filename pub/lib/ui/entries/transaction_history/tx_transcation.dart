// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/widget/fontText.dart';

class TransactionHistory extends StatelessWidget {
  TransactionHistory(
      {required this.title,
      required this.date,
      required this.price,
      required this.dateMonth, required this.imagePath});
  final String title;
  final String date;
  final String price;
  final String dateMonth;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.26,
                height: MediaQuery.of(context).size.width * 0.26,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                       imagePath
                      ),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(17),
                  color: AppColors.kPrimaryGrey,
                ),
              ),
            ),
            SizedBox(width: 14),
            Column(
              children: [
                FontText(
                  text: title,
                  color: AppColors.KPrimaryBlack,
                  fontsize: 19,
                  fontFam: "opensans",
                  fam: FontWeight.bold,
                ),
                FontText(
                  text: date,
                  color: AppColors.KPrimaryBlack,
                  fontsize: 13,
                  fontFam: "opensans",
                  fam: FontWeight.normal,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FontText(
                  text: price,
                  color: AppColors.KPrimaryBlack,
                  fontsize: 16,
                  fontFam: "opensans",
                ),
                Row(
                  children: [
                    FontText(
                      text: dateMonth,
                      color: AppColors.KPrimaryBlack,
                      fontsize: 16,
                      fontFam: "opensans",
                    ),
                    Icon(
                      Icons.rectangle,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
