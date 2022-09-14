import 'package:flutter/material.dart';
import 'package:pub/ui/widget/fontText.dart';

class FontTextDesc extends StatelessWidget {
  final String text;
  final double? size;
  final double? space;
  final Color? color;
  final String? fontFam;
  final int? Maxline;
  final FontWeight;
  const FontTextDesc({
    this.color,
    this.FontWeight,
    this.size,
    this.Maxline,
    required this.text,
    required this.fontFam,
    this.space,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FontText(
      fontFam: fontFam,
      text: text,
      fontsize: size,
      maxLine: Maxline,
      space: space,
      color: color,
      fam: FontWeight
    );
  }
}
