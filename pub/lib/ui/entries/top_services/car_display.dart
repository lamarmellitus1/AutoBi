// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/entries/top_services/car_items.dart';
import 'package:pub/ui/entries/top_services/car_screen.dart';

class CarDisplay extends StatelessWidget {
  const CarDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Car screen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      body: GridView.count(
          shrinkWrap: true,
          childAspectRatio: 50 / 50,
          mainAxisSpacing: 10,
          crossAxisSpacing: 60,
          crossAxisCount: 2,
          children: categoryItem
              .map((car) => CarScreen(
                  id: car.id,
                  color: car.color,
                  icon: car.icon,
                  image: car.image,
                  title: car.title))
              .toList()),
    );
  }
}
