import 'package:flutter/material.dart';

import 'package:pub/ui/entries/render.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReponsiveDetector extends StatefulWidget {
  const ReponsiveDetector({Key? key}) : super(key: key);

  @override
  State<ReponsiveDetector> createState() => _ReponsiveDetectorState();
}

class _ReponsiveDetectorState extends State<ReponsiveDetector> {
  @override
  //this is the widget that manage the reponsiveness of the app weather it is desktop or mobile
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Render(screenSize: size);
    });
  }
}
