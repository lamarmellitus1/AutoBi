// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pub/ui/entries/home_page/home_page.dart';
import 'package:pub/ui/widget/Main_screens/inbox.dart';
import 'package:pub/ui/widget/Main_screens/order.dart';
import 'package:pub/ui/widget/Main_screens/profile.dart';
import 'package:pub/ui/widget/Main_screens/wallet.dart';

import '../../entries/wishlist/wishList_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List _pages = [
    HomePage(),
    Order(),
    Inbox(),
    Wallet(),
    WishListScreen(),
    Profile(),
  ];

  int selected = 0;

  void selctedPages(index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: selctedPages,
        elevation: 0,
        currentIndex: selected,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        iconSize: 30,
        selectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        // unselectedFontSize: 16,
        unselectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.message), label: "Inbox"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.activity), label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile), label: "Profile"),
        ],
      ),
    );
  }
}
