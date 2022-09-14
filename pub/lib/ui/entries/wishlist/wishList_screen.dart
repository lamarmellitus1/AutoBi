import 'package:flutter/material.dart';
import 'package:pub/ui/widget/Main_screens/wishlist.dart';

// ignore: use_key_in_widget_constructors
class WishListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _wishList = [
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/benz.jpg",
      "carMake": " Mercedes Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/bi.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
    {
      "imagePath": "lib/ui/assets/image/benz4.png",
      "carMake": " Toyota Sports",
      "carPrice": "\$124,678"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 10,
            // childAspectRatio: 450 / 450,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: List.generate(
                _wishList.length,
                (index) => WishList(
                    imagePath: _wishList[index]["imagePath"],
                    carMAke: _wishList[index]["carMake"],
                    carPrice: _wishList[index]["carPrice"]))));
  }
}
