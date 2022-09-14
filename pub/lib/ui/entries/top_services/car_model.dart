import 'package:flutter/material.dart';

class CarModel {
  final String title;
  final ImageProvider image;
  final Color color;
  final IconData icon;
  final String id;
  CarModel(
      {required this.color,
      required this.id,
      required this.icon,
      required this.image,
      required this.title});
}
