import 'package:flutter/material.dart';

class FontText extends StatelessWidget {
  final String text;
  final double? scaleFactor;
  final Color? color;
  final FontWeight? fam;
  final double? weight;
  final int? maxLine;
  final TextOverflow? overflow;
  final double? fontsize;
  final String? fontFam;
  final double? space;
  final TextAlign? textAlign;
  const FontText(
      {Key? key,
      this.textAlign,
      this.space,
      this.fontFam,
      this.fontsize,
      this.color,
      this.overflow,
      this.maxLine,
      this.fam,
      required this.text,
      this.scaleFactor,
      this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        maxLines: maxLine,
        overflow: overflow,
        textScaleFactor: scaleFactor,
        style: TextStyle(
            color: color,
            fontWeight: fam,
            fontSize: fontsize,
            fontFamily: fontFam,
            letterSpacing: space));
  }
}
