// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pub/ui/widget/fontText.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  Widget formTextForm(String hintText) {
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: HexColor("#EFF0F2"),
          filled: true,
          contentPadding: EdgeInsets.all(20),
          isDense: true,
          hintText: hintText),
    );
  }

  Widget formText(
    String text,
  ) {
    return FontText(
        text: text,
        fontFam: "poppinss",
        color: HexColor("#4D5959"),
        fontsize: 14,
        fam: FontWeight.w900);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              FontText(
                fontFam: "poppinss",
                text: "Welcome to AutoBi",
                fontsize: 40,
                fam: FontWeight.w900,
                maxLine: 72,
                color: HexColor("#043133"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                    // left: 40,
                    // right: 7,
                    ),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    formText("Full Name"),
                    SizedBox(
                      height: 7,
                    ),
                    formTextForm("John Doe"),
                    SizedBox(
                      height: 30,
                    ),
                    formText("Email"),
                    SizedBox(
                      height: 7,
                    ),
                    formTextForm("Enter Your Email here"),
                    SizedBox(
                      height: 30,
                    ),
                    formText("Password"),
                    SizedBox(
                      height: 7,
                    ),
                    formTextForm("Enter Your Password here"),
                  ],
                )),
              ),
              SizedBox(
                height: 35,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 21, horizontal: 43),
                child: FontText(
                    text: "Create Account",
                    fontsize: 26,
                    space: 2,
                    maxLine: 39,
                    fam: FontWeight.w500,
                    color: Colors.white),
                color: HexColor("#007074"),
                onPressed: () {},
              ),
              SizedBox(height: 14),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FontText(
                  text: "Already have an account?",
                  fontFam: "poppinss",
                  fontsize: 15,
                  fam: FontWeight.w300,
                ),
                SizedBox(
                  width: 3,
                ),
                FontText(
                    text: "Log in",
                    color: HexColor("#007074"),
                    fontsize: 18,
                    fam: FontWeight.w400)
              ]),
              SizedBox(
                height: 20,
              ),
              FontText(
                text: "OR",
                fontFam: "poppinss",
                fontsize: 20,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 60,
                child: RaisedButton(
                  elevation: 0.8,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/ui/assets/image/Google.png"),
                      SizedBox(
                        width: 8,
                      ),
                      FontText(
                        fontFam: "poppinss",
                        text: "sign up with Google",
                        fontsize: 17,
                        space: 2,
                        maxLine: 12,
                        fam: FontWeight.w100,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
