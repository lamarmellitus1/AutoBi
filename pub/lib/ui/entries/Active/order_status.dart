// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pub/ui/design/color_palattee.dart';
import 'package:pub/ui/widget/fontText.dart';

class OrderStatus extends StatelessWidget {
  OrderStatus({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> _orderStatus = [
    {
      "order": "Order.. Delivery(Train)-Dec 17",
      "address": "32 manchester Ave uwani"
    },
    {
      "order": "Order.. Custom Parts-Dec -16",
      "address": "32 manchester Ave uwani"
    },
    {"order": "Order are.. Train-Dec 17", "address": "32 manchester Ave uwani"},
    {
      "order": "Order is in Packing-Dec 14",
      "address": "32 manchester Ave uwani"
    },
    {
      "order": "Order.. Verified payment-Dec 15",
      "address": "32 manchester Ave uwani"
    },
    {
      "order": "Order.. Verified payment-Dec 15",
      "address": "32 manchester Ave uwani"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: _orderStatus.length,
          itemBuilder: (context, int index) {
            return ListTile(
              leading: Icon(
                Icons.circle_outlined,
                size: 23,
                color: AppColors.KPrimaryBlack,
              ),
              title: FontText(
                text: _orderStatus[index]["order"],
                space: 2,
                fontFam: " openSans",
                fontsize: 19,
                fam: FontWeight.bold,
              ),
              subtitle: FontText(
                  text: _orderStatus[index]["address"],
                  fontsize: 16,
                  space: 2,
                  fam: FontWeight.normal),
              trailing: FontText(text: "19.43pm"),
            );
          }),
    );
  }
}
