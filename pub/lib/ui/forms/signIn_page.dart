// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pub/ui/widget/fontText.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  Widget formTextForm(String hintText) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          fillColor: HexColor("#EFF0F2"),
          filled: true,
          hintText: hintText),
    );
  }

  Widget formText(
    String text,
  ) {
    return FontText(
      text: text,
      color: HexColor("#4D5959"),
      fontsize: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            FontText(
              text: "Welcome to AutoBi",
              fontsize: 48,
              space: 3,
              fam: FontWeight.w600,
              maxLine: 72,
              color: HexColor("#043133"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 7, right: 7),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  formText("Email"),
                  SizedBox(
                    height: 7,
                  ),
                  formTextForm("Enter Your Email here"),
                  SizedBox(
                    height: 20,
                  ),
                  formText("Password"),
                  SizedBox(
                    height: 7,
                  ),
                  formTextForm("Enter Your Password here"),
                ],
              )),
            ),
            formText("forgot password")
          ],
        ),
      ),
    );
  }
}
