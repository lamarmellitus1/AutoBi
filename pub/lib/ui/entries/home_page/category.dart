// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/entries/home_page/Category_item_data.dart';
import 'package:pub/ui/entries/home_page/category_dummy_data.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 50 / 50,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        shrinkWrap: true,
        children: Category_Dummy_Data.map((CateData) => CategoryItemData(
              color: CateData.color,
              image: CateData.image,
              title: CateData.title,
              id: CateData.id,
            )).toList());
  }
}
