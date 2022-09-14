// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/entries/home_page/category.dart';
import 'package:pub/ui/entries/home_page/search.dart';
import 'package:pub/ui/entries/home_page/special_offers.dart';
import 'package:pub/ui/entries/top_services/top_services_items.dart';

import 'package:pub/ui/widget/fontText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Widget BuildFontText(String text, fontfam, fam) {
    return FontText(
      text: text,
      fontsize: 25,
      fontFam: fontfam,
      fam: fam,
      space: 2,
    );
  }

  Widget buildIcon(IconData IconName) {
    return Icon(
      IconName,
      color: Colors.black,
      size: 43,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height);
    final String imageName = "lib/ui/assets/image/";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("$imageName/myself.jpg"),
                          radius: 35,
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            BuildFontText(
                                "Good Morning", "openSans", FontWeight.w400),
                            SizedBox(width: 20),
                            BuildFontText(
                                "Andrew Lamar", "montserrat", FontWeight.w700)
                          ],
                        ),
                      ],
                    ),
                    Row(children: [
                      buildIcon(Icons.notifications_none_outlined),
                      buildIcon(Icons.favorite_outline_sharp),
                    ])
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Search();
                  }));
                },
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.kPrimaryGrey),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.kPrimaryGrey),
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: AppColors.kPrimaryGrey,
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_list)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FontText(
                      text: "Special Offers",
                      fontsize: 22,
                      fam: FontWeight.w900,
                      fontFam: "montserrat",
                      // color: AppColors.mainColor2,
                    ),
                    FontText(
                      text: "See All",
                      fontsize: 18,
                      fam: FontWeight.w900,
                      fontFam: "montserrat",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              //here
              SpecialOffers(),
              SizedBox(
                height: 24,
              ),
              //category page here
              Category(),
              SizedBox(
                height: 24,
              ),
              TopServicesItem(),
              SizedBox(
                height: 24,
              ),
            ]),
          ),
        ])));
  }
}
