// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pub/ui/entries/home_page/home_page.dart';
import 'package:pub/ui/entries/landing_page/landingPage_params.dart';
import 'package:pub/ui/entries/landing_page/bi.dart';
import 'package:pub/ui/entries/landing_page/font_textDesc.dart';
import 'package:pub/ui/forms/signUp_Page.dart';
import 'package:pub/ui/forms/web_form.dart';
import 'package:pub/ui/forms/welcome_page_form.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  Widget _myInkWell(BuildContext context, String title, VoidCallback onClick) {
    return InkWell(
      onTap: onClick,
      child: FontTextDesc(
        text: title,
        color: Colors.white,
        fontFam: "Montserrat",
        size: 19,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  color: HexColor("#373D3C"),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, right: 50, left: 50, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => HomePage()));
                              },
                              icon: Icon(Icons.menu, size: 25),
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            InkWell(
                              onTap: () {},
                              child: FontTextDesc(
                                text: "menu",
                                color: Colors.white,
                                fontFam: "Montserrat",
                                size: 19,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            _myInkWell(context, 'about', () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => WelcomePageForm()));
                            }),
                            SizeBox(),
                            _myInkWell(context, 'contact us', () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => WebForm()));
                            }),
                            SizeBox(),
                            RaisedButton(
                              elevation: 2,
                              padding: EdgeInsets.all(20),
                              color: Colors.black54,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SignUpPage()));
                              },
                              child: FontTextDesc(
                                text: "get started",
                                color: Colors.white,
                                fontFam: "Montserrat",
                                size: 19,
                                FontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        )
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //this is the bi page statrts
                  Bi()
                ],
              )),
        ));
  }
}
