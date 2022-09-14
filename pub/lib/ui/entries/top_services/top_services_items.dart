// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/entries/top_services/car_display.dart';
import 'package:pub/ui/entries/top_services/car_screen.dart';
import 'package:pub/ui/entries/top_services/top_services.dart';

import '../../widget/fontText.dart';

class TopServicesItem extends StatelessWidget {
  const TopServicesItem({Key? key}) : super(key: key);

  void SelectedServices(BuildContext context, page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopServices(
              title: "Cars",
              onpressed: () {
                SelectedServices(context, CarDisplay());
              },
            ),
            TopServices(title: "Lubrication", onpressed: () {}),
            TopServices(title: "Scanning", onpressed: () {}),
            TopServices(title: "Brake pad ", onpressed: () {}),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopServices(title: "Injector cleaning", onpressed: () {}),
            TopServices(title: "Over heating", onpressed: () {}),
            TopServices(title: "car wash", onpressed: () {}),
          ],
        )
      ],
    );
  }
}
