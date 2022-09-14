import 'package:flutter/material.dart';
import 'package:pub/ui/entries/category_screen/Parts_screen.dart';
import 'package:pub/ui/entries/category_screen/RepairsScreen.dart';
import 'package:pub/ui/entries/category_screen/booking_screen.dart';
import 'package:pub/ui/entries/category_screen/cat.dart';
import 'package:pub/ui/entries/category_screen/emergency_screen.dart';
import 'package:pub/ui/entries/category_screen/gallery_screen.dart';
import 'package:pub/ui/entries/category_screen/infogram_screen.dart';
import 'package:pub/ui/entries/category_screen/schedule_screen.dart';
import 'package:pub/ui/entries/category_screen/servicesScreen.dart';

class Services extends StatelessWidget {
  Services({Key? key, required this.CategoryTitle, required this.categoryId})
      : super(key: key);
  final String CategoryTitle;
  final String categoryId;

  final pages = [
    const Cat(title: Reppairs(), catItem: ["c4"]),
    const Cat(title: Schedule(), catItem: ["c3"]),
    const Cat(title: Booking(), catItem: ["c1"]),
    const Cat(title: PartsScreen(), catItem: ["c5"]),
    const Cat(title: Infogram(), catItem: ["c6"]),
    const Cat(title: EmergencyScreen(), catItem: ["c8"]),
    const Cat(title: Gallery(), catItem: ["c7"]),
    const Cat(title: ServiceScreen(), catItem: ["c2"]),
  ];

  @override
  Widget build(BuildContext context) {
    final cateData = pages.where((item) {
      return item.catItem.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(CategoryTitle),
        ),
        body: cateData[0].title);
  }
}
