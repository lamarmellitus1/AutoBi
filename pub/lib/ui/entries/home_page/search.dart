// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // ignore: prefer_final_fields
  TextEditingController _textController = TextEditingController(text: "");
  FocusNode? _focusNode;
  bool focusnode = false;
  @override
  void initState() {
    _focusNode;
    if (focusnode) {
      setState(() {
        focusnode == false;
        Colors.orange;
      });
    } else {
      setState(() {
        focusnode == true;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: TextFormField(
        focusNode: FocusNode(),
        controller: _textController,
        // textAlign: TextAlign.center,
        // maxLines: 3,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14
        ),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            hintText: "Enter your search",
            hintStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            suffixIcon: Icon(
              Icons.dashboard,
              size: 30,
              color: Colors.black,
            )),
      ),
    ));
  }
}
