// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pub/ui/entries/landing_page/font_textDesc.dart';
import 'package:pub/ui/widget/fontText.dart';

class Bi extends StatelessWidget {
  const Bi({Key? key}) : super(key: key);
  Widget builderText(
      {String? text, double? size, int? maxline, Color? color, space}) {
    return FontTextDesc(
        FontWeight: FontWeight.w300,
        text: text!,
        fontFam: "Montserrat",
        space: space,
        size: size,
        Maxline: maxline,
        color: color);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Expanded(
      flex: 7,
      // ignore: duplicate_ignore
      child: SingleChildScrollView(
        child: Container(
          width: width,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/ui/assets/image/auto.png"))),
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: FontTextDesc(
                    text: "BI",
                    fontFam: "RalewayDots",
                    space: 2,
                    color: HexColor("#E9E9E9"),
                    size: 99,
                    Maxline: 119),
              ),
              SizedBox(
                height: 500,
              ),
              // ignore: prefer_const_constructors
              builderText(
                  text: "Revolutionary Technology",
                  size: 30,
                  maxline: 32,
                  color: HexColor("#9B9A9A"),
                  space: 3),
              builderText(
                text: "unmatched performance",
                size: 30,
                maxline: 32,
                color: HexColor("#9B9A9A"),
                space: 0,
              ),
              builderText(
                  text: "Silence Speaks",
                  size: 79,
                  maxline: 94,
                  color: Colors.white,
                  space: 0)
            ],
          ),
        ),
      ),
    );
  }
}
