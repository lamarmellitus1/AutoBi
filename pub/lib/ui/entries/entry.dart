import 'package:flutter/material.dart';
import 'package:pub/ui/forms/signIn_page.dart';
import 'package:pub/ui/forms/signUp_Page.dart';
import 'package:pub/ui/forms/welcome_page_form.dart';

class Entry extends StatelessWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              },
              child: Text("press here")),
        ),
      ),
    );
  }
}
