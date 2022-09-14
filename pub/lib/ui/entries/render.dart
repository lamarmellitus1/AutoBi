import 'package:flutter/material.dart';
import 'package:pub/ui/entries/Web_screen.dart';
import 'package:pub/ui/entries/mobile_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:pub/reponsive/reponsive_config.dart';

class Render extends StatefulWidget {
  final SizingInformation screenSize;

  const Render({Key? key, required this.screenSize})
      : super(
          key: key,
        );

  @override
  State<Render> createState() => _RenderState();
}

class _RenderState extends State<Render> {
  @override
  Widget build(BuildContext context) {
    return widget.screenSize.isDesktop || Responsive.isTablet(context)
        ? WebScreen()
        : MobileScreen();
  }
}
