
// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/entries/top_services/Lexus.dart';
import 'package:pub/ui/entries/top_services/ford.dart';
import 'package:pub/ui/entries/top_services/mercedes.dart';
import 'package:pub/ui/entries/top_services/toyota.dart';
import 'carVariety_model.dart';

class CarVariety extends StatelessWidget {
  CarVariety({Key? key, this.carVaityTitle, this.carVaityId}) : super(key: key);

  final  carVaityTitle;
  final carVaityId;
  final carVariety = [
    CarVarityModel(
      title: Mercedes(),
      id: "m1",
    ),
    CarVarityModel(title: Toyota(), id: "m2"),
    CarVarityModel(title: Ford(), id: "m3"),
    CarVarityModel(
      title: Lexus(),
      id: "m4",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final varityCar =
        carVariety.where((cars) => cars.id.contains(carVaityId)).toList();
    return Scaffold(body: varityCar[0].title);
  }
}
