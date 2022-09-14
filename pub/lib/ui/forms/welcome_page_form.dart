// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/widget/fontText.dart';

class WelcomePageForm extends StatelessWidget {
  const WelcomePageForm({Key? key}) : super(key: key);

  Widget buildWelcomeButton(
    String textTitle,
    double numm,
  ) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
      child: FontText(
          text: textTitle, fontsize: 26, maxLine: 39, color: Colors.white),
      color: Colors.blue[400],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(numm)),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors
          CircleAvatar(
            backgroundImage: AssetImage("lib/ui/assets/image/logo.png"),
            radius: 85,
            backgroundColor: Colors.lightBlueAccent,
          ),
          SizedBox(
            height: 20,
          ),
          buildWelcomeButton("@autoBi", 26),
          SizedBox(
            height: 50,
          ),
          FontText(
            text: "THANKYOU",
            fontsize: 60,
            maxLine: 27,
            fontFam: "poppinss",
            fam: FontWeight.w900,
            color: Colors.blue[400],
          ),
          SizedBox(
            height: 30,
          ),
          FontText(
              text:
                  "welcome to Autobi, the best place for your car service and maintainance",
              fontsize: 21,
              fontFam: "poppinss",
              // fam: FontWeight.w100,
              color: Colors.black),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildWelcomeButton("Instagram", 5),
              SizedBox(
                width: 10,
              ),
              buildWelcomeButton("Youtube", 5),
            ],
          )
        ],
      ),
    );
  }
}
