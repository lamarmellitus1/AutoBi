// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pub/ui/widget/fontText.dart';

import '../../design/color_palattee.dart';

class Mercedes extends StatelessWidget {
  Mercedes({Key? key}) : super(key: key);
  // ignore: prefer_final_fields
  List<Color> _colors = [
    Colors.black,
    Colors.cyan,
    Colors.purple,
    Colors.pink,
    Colors.orange,
  ];

  List<String> _imagesGallery = [
    "lib/ui/assets/image/benz4.png",
    "lib/ui/assets/image/benz4.png",
    "lib/ui/assets/image/auto.png",
    "lib/ui/assets/image/benz.jpg",
    "lib/ui/assets/image/bi.png",
    "lib/ui/assets/image/auto.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 250,
              width: 250,
              child: Image(
                image: AssetImage("lib/ui/assets/image/benz4.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.check_circle_outline_outlined,
                        color: _colors[index],
                        size: 36,
                      ))),
          SizedBox(
            height: 20,
          ),
          FontText(
            text: "Merceds Sport series",
            fontsize: 22,
            fam: FontWeight.bold,
          ),
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.kPrimaryGrey,
                  borderRadius: BorderRadius.circular(5)),
              height: 30,
              width: 43,
              child: Center(child: FontText(text: "New")),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 6,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 17,
            ),
            Icon(Icons.star),
            FontText(text: "4.8 million views"),
            SizedBox(
              height: 27,
            ),
          ]),
          FontText(
            text: "Description",
            fontsize: 19,
            fam: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
          ),
          FontText(
              text:
                  "we are here to  make your choice the best and our company aim at keeping to their promises, we hope to provide a better working and friendly employer-clients environmrnt"),
          SizedBox(
            height: 20,
          ),
          FontText(
            text: "Gallery Photos",
            fontsize: 19,
            fam: FontWeight.bold,
          ),
          SizedBox(height: 13),
          Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _imagesGallery.length,
                  itemBuilder: (context, int index) {
                    return ClipRRect(
                      child: Image(
                        image: AssetImage(_imagesGallery[index]),
                        fit: BoxFit.fill,
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
