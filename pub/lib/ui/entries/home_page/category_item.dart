import 'package:flutter/material.dart';

class CategoryItem {
  final String title;
  final Color color;
  final ImageProvider image;
  final String id;
  CategoryItem(
      {required this.title, required this.color, required this.id, required this.image});
}
