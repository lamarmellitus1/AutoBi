import 'package:flutter/material.dart';

import 'package:pub/ui/widget/fontText.dart';

class TopServices extends StatelessWidget {
  TopServices({Key? key, required this.title, required this.onpressed})
      : super(key: key);
  final String title;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 2)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          child: FontText(
            text: title,
            fontsize: 18,
            fam: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
