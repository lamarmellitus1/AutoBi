// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/entries/Active/active_screen.dart';
import 'package:pub/ui/entries/completed/completed_screen.dart';

class CompletedWidget extends StatelessWidget {
  final List<Map<String, dynamic>> __completedCar = [
    {
      "image": "lib/ui/assets/image/benz4.png",
      "color": Colors.red,
      "title": "Porshe Sports",
      "price": "\$172, 500",
      "carColorText": "red"
    },
    {
      "image": "lib/ui/assets/image/auto.png",
      "color": Colors.black,
      "title": "Toyota Sports",
      "price": "\$168, 200",
      "carColorText": "Black"
    },
    {
      "image": "lib/ui/assets/image/benz.jpg",
      "color": Colors.yellow,
      "title": "Camaro Sports",
      "price": "\$186, 500",
      "carColorText": "yellow"
    },
    {
      "image": "lib/ui/assets/image/benz4.png",
      "color": Colors.white,
      "title": "Opel Series",
      "price": "\$172, 500",
      "carColorText": "white"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: __completedCar.length,
          itemBuilder: (context, int index) {
            SizedBox(height: 20);
            return Completedcreen(
              title: __completedCar[index]["title"],
              color: __completedCar[index]["color"],
              price: __completedCar[index]["price"],
              image: __completedCar[index]["image"],
              carColorText: __completedCar[index]["carColorText"],
            );
          }),
    );
  }
}
