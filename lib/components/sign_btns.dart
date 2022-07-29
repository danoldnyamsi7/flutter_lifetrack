import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// Filled Buttons

class FilledButtons extends StatelessWidget {
  // final double y;
  final double x;
  final EdgeInsetsGeometry padding;
  final Color color;
  final String text;
  final VoidCallback action;
  final double borderRadius;
  final TextStyle textStyle;

  FilledButtons(
      {required this.x,
      required this.padding,
      required this.color,
      required this.text,
      required this.action,
      required this.borderRadius,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: deviceWidth(context) * .75,
      width: x,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
            // primary: Color(0XFFFF535E),
            primary: color,
            // padding: EdgeInsets.all(16),
            padding: padding,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}

// Text Buttons

class CustomeTextButtons extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Color color;
  final String text;
  final VoidCallback action;
  final double borderRadius;
  final TextStyle textStyle;
  final double x;

  CustomeTextButtons(
      {required this.padding,
      required this.color,
      required this.text,
      required this.action,
      required this.borderRadius,
      required this.textStyle,
      required this.x});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: x,
      child: TextButton(
        onPressed: action,
        style: TextButton.styleFrom(
            padding: padding,
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
