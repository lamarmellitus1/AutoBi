import 'package:flutter/material.dart';

class Reppairs extends StatelessWidget {
  const Reppairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "this is repair page",
          style: TextStyle(color: Colors.red, fontSize: 30),
        )),
      ),
    );
  }
}
