// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/widget/fontText.dart';

class ReviewScreen extends StatefulWidget {
  ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  TextEditingController _reviewController = TextEditingController();
  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  List<String> _reviews = ["excellent", "Goood", "bad", "Not now"];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(27), topRight: Radius.circular(27))),
        child: Flexible(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: FontText(
                  text: "Leave a Review",
                  fam: FontWeight.bold,
                  fontsize: 27,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.31,
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.kPrimaryGrey),
                              child: Image.asset(
                                "lib/ui/assets/image/benz4.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          //==============RHS column==========================>
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FontText(
                                  text: "Porshe Sports",
                                  fam: FontWeight.bold,
                                  fontsize: 27,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //===============first Row in the RHS================>
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 22,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    FontText(
                                      text: "red",
                                      fontsize: 20,
                                      fam: FontWeight.w300,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.kPrimaryGrey,
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FontText(
                                          text: "completed",
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                //===============second Row in the RHS================>

                                Row(
                                  children: [
                                    FontText(
                                      text: "\$172,600",
                                      fam: FontWeight.bold,
                                      fontsize: 27,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.KPrimaryBlack,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: FontText(
                text: "How is Your Car?",
                fam: FontWeight.bold,
                fontsize: 27,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: FontText(
                text: "please give your rating & also your review",
                fam: FontWeight.normal,
                fontsize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half_outlined),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: InkWell(
                onTap: () => _revieewDialogue(),
                child: TextField(
                    controller: _reviewController,
                    decoration: InputDecoration(
                        hintText: "please select your review",
                        enabled: false,
                        suffixIcon: Icon(Icons.image),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(thickness: 1),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: AppColors.kPrimaryGrey),
                      child: TextButton(
                          onPressed: () {
                            Navigator.canPop(context)
                                ? Navigator.pop(context)
                                : null;
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            child: FontText(
                                text: "cancel",
                                fontsize: 14,
                                color: Colors.black),
                          ))),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.black),
                      child: TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            child: FontText(
                              text: "submit",
                              color: Colors.white,
                              fontsize: 14,
                            ),
                          ))),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _revieewDialogue() {
    Size size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Row(
              children: [
                Text(
                  "Leave your Reviews",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.red,
                  size: 22,
                ),
              ],
            ),
            content: Container(
              width: size.width * 0.9,
              // height: size.height * 0.9,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _reviews.length,
                  itemBuilder: (context, index) {
                    final cat = _reviews[index];
                    return InkWell(
                      onTap: (() {
                        setState(() {
                          _reviewController.text = _reviews[index];
                        });
                        Navigator.pop(context);
                      }),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            color: Colors.red[200],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cat,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
