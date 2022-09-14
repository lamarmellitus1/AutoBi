// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/entries/transaction_history/topUp.dart';
import 'package:pub/ui/widget/fontText.dart';

import '../../entries/transaction_history/topUp_amount.dart';
import '../../entries/transaction_history/tx_history_screen.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const Icon(
                    Icons.local_taxi_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FontText(
                    text: "Profile",
                    fam: FontWeight.bold,
                    fontsize: 20,
                    color: Colors.black,
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_open_outlined,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: Container(

                  // height: size.width * 0.29,
                  // width: size.width * 0.29,
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 27, horizontal: 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FontText(
                                text: "Andrew Ainsley",
                                color: Colors.white,
                                fontsize: 22,
                                fam: FontWeight.bold,
                                fontFam: "opensans"),
                            FontText(
                                color: Colors.white,
                                text: "VISA",
                                fontsize: 30,
                                fam: FontWeight.bold,
                                fontFam: "opensans"),
                          ],
                        ),
                        FontText(
                            color: Colors.white,
                            text: "...................43556",
                            fontsize: 17,
                            fam: FontWeight.normal,
                            fontFam: "opensans"),
                        SizedBox(
                          height: 22,
                        ),
                        FontText(
                            color: Colors.white,
                            text: "Your balance",
                            fontsize: 17,
                            fam: FontWeight.normal,
                            fontFam: "opensans"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FontText(
                                color: Colors.white,
                                text: "\$299,677",
                                space: 3,
                                fontsize: 22,
                                fam: FontWeight.bold,
                                fontFam: "opensans"),
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return TopUp();
                                }));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.payment),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FontText(
                                          text: "Top Up",
                                          fontsize: 19,
                                          fam: FontWeight.bold,
                                          fontFam: "opensans"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            FontText(
              text: "Transaction History",
              fontsize: 20,
              fam: FontWeight.bold,
              fontFam: "opensans",
            ),
            Flexible(child: TransactionHistorySCreen())
          ],
        ),
      ),
    );
  }
}
