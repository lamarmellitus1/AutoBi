import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/entries/category_screen/category_screen.dart';
import 'package:pub/ui/widget/fontText.dart';

class CategoryItemData extends StatelessWidget {
  const CategoryItemData(
      {Key? key,
      required this.color,
      required this.image,
      required this.title,
      required this.id})
      : super(key: key);
  final String title;
  final String id;
  final ImageProvider image;
  final Color color;
  void selectedPage(context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Services(
        CategoryTitle: title,
        categoryId: id,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectedPage(context);
      },
      child: Column(
        children: [
          Container(
            height: 71,
            width: 71,
            padding: EdgeInsets.all(100),
            decoration: BoxDecoration(
                image: DecorationImage(image: image),
                borderRadius: BorderRadius.circular(50),
                // shape: BoxShape.circle,
                color: AppColors.kPrimaryGrey),
          ),
          SizedBox(
            height: 10,
          ),
          FontText(
              text: title,
              color: color,
              // fontFam: "monteserrat",
              fontsize: 16,
              fam: FontWeight.bold)
        ],
      ),
    );
  }
}
