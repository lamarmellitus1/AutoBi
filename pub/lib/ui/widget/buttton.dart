import 'package:flutter/material.dart';
import 'package:pub/ui/design/params.dart';

class Button extends StatelessWidget {
  final VoidCallback onPresed;
  final Widget? child;
  final double? radius;
  final double? pad;

  const Button({
    Key? key,
    this.radius,
    this.pad,
    required this.onPresed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: symntric - 5, horizontal: pad!),
      child: ElevatedButton(
        onPressed: onPresed,
        child: child,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!))),
      ),
    );
  }
}
