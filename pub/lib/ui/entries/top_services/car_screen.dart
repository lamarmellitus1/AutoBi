import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/widget/fontText.dart';

import 'car_variety_model.dart';

class CarScreen extends StatelessWidget {
  CarScreen(
      {Key? key,
      required this.id,
      required this.color,
      required this.icon,
      required this.image,
      required this.title})
      : super(key: key);

  final String title;
  final String id;
  final Color color;
  final IconData icon;
  final ImageProvider image;

  void carVariirtyScreen(context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => CarVariety(
              carVaityId: id,
              carVaityTitle: title,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => carVariirtyScreen(context),
                child: Container(
                  // height: 200,
                  // width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.kPrimaryGrey,
                      image:
                          DecorationImage(image: image, fit: BoxFit.contain)),
                ),
              ),
            ),
            SizedBox(height: 9),
            FontText(
              text: title,
              fontsize: 18,
              fam: FontWeight.bold,
            ),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Icon(icon),
                Icon(icon), 
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 6,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.kPrimaryGrey,
                      borderRadius: BorderRadius.circular(12)),
                  height: 30,
                  width: 43,
                  child: Center(child: FontText(text: "New")),
                )
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 6,
            ),
            // ignore: prefer_const_constructors
            FontText(
              text: "\$12,4466",
              fontsize: 18,
              fam: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
