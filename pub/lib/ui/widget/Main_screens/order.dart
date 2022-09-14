// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pub/ui/entries/Active/active_screen.dart';
import 'package:pub/ui/entries/Active/ative_widget.dart';
import 'package:pub/ui/entries/completed/completed_screen.dart';
import 'package:pub/ui/entries/completed/completed_widget.dart';
import 'package:pub/ui/widget/fontText.dart';

class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(
                  Icons.local_taxi_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                FontText(
                  text: "My Orders",
                  fam: FontWeight.bold,
                  fontsize: 20,
                  color: Colors.black,
                ),
              ]),
              Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  Icon(
                    Icons.local_activity_outlined,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          child: TabBar(
              controller: _tabController,
              indicatorWeight: 5,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                    child: FontText(
                        text: "Active",
                        fontsize: 14,
                        color: Colors.black,
                        fam: FontWeight.bold)),
                Tab(
                    child: FontText(
                        text: "Completed",
                        fontsize: 14,
                        color: Colors.black,
                        fam: FontWeight.bold)),
              ]),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.maxFinite,
          height: 500,
          child: TabBarView(
              controller: _tabController,
              children: [ActiveWidget(), CompletedWidget()]),
        )
      ],
    );
  }
}
