// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pub/ui/widget/fontText.dart';

class TopUp extends StatefulWidget {
  const TopUp({
    Key? key,
  }) : super(key: key);

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  TextEditingController _topUpController = TextEditingController();
  @override
  void dispose() {
    _topUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: FontText(
                  text: "Top Up Wallet",
                  fontsize: 22,
                  fontFam: "opensans",
                  fam: FontWeight.bold)),
          FontText(
              text: "Enter the amount of top up",
              fontsize: 16,
              fontFam: "opensans",
              fam: FontWeight.normal),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 29),
            child: TextField(
                maxLines: 6,
                controller: _topUpController,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "\$100,000",
                    hintStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black)),
                    focusColor: Colors.black)),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topUp(
                    amount: "\$10,000",
                  ),
                  topUp(
                    amount: "\$20,000",
                  ),
                  topUp(
                    amount: "\$30,000",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topUp(
                    amount: "\$40,000",
                  ),
                  topUp(
                    amount: "\$50,000",
                  ),
                  topUp(
                    amount: "\$60,000",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topUp(
                    amount: "\$70,000",
                  ),
                  topUp(
                    amount: "\$80,000",
                  ),
                  topUp(
                    amount: "\$90,000",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.black),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: FontText(
                      textAlign: TextAlign.center,
                      text: " continue",
                      fontsize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget topUp({required String amount}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: FontText(
          text: amount,
          fontsize: 18,
          fam: FontWeight.bold,
        ),
      ),
    );
  }
}
