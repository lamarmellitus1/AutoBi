// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pub/ui/widget/fontText.dart';

class WishList extends StatelessWidget {
  WishList(
      {required this.imagePath, required this.carMAke, required this.carPrice});
  final String imagePath;
  final String carMAke;
  final String carPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Stack(
                children: [
                  Container(
                    // height: 200,
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.grey,
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        imagePath,
                      ),
                    ),
                  ),
                  Positioned(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyLight.heart,
                          size: 33,
                        ),
                      ),
                      top: 0,
                      right: 10)
                ],
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FontText(
                    text: carMAke,
                    fontsize: 23,
                    fam: FontWeight.bold,
                  ),
                  // SizedBox(height: 10),
                  Flexible(
                    child: Row(
                      children: [
                        Icon(Icons.star_half_outlined),
                        SizedBox(height: 10),
                        FontText(text: "_234"),
                        SizedBox(height: 10),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(6)),
                          child: FontText(
                            text: "color",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  FontText(
                    text: carPrice,
                    fontsize: 17,
                    fam: FontWeight.bold,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
