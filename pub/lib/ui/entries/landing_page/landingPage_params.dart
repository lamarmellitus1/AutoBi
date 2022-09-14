import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  const SizeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
    );
  }
}

class Size {
  static int size = height = 23;

  static set height(int height) {
    size = height;
  }
}
