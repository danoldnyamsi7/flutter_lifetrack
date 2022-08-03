import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  late EdgeInsetsGeometry padding;
  late String hintText;
  late double width;
  late bool obscureText;

  TextField1(
      {required this.padding,
      required this.hintText,
      required this.width,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintStyle:
              TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          contentPadding: padding,
          border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
          // labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}

class TextFieldWithChild extends StatefulWidget {
  late EdgeInsetsGeometry padding;
  late String hintText;
  late double width;
  late bool obscureText;
  late Widget child;

  TextFieldWithChild(
      {required this.padding,
      required this.width,
      required this.hintText,
      required this.obscureText,
      required this.child});

  @override
  State<TextFieldWithChild> createState() => _TextFieldWithChildState();
}

class _TextFieldWithChildState extends State<TextFieldWithChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
