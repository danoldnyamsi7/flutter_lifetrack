import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  late EdgeInsetsGeometry padding;
  late String hintText;
  late double width;
  late bool obscureText;

  TextField1({required this.padding, required this.hintText, required this.width, required this.obscureText});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        
        obscureText: obscureText,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          contentPadding: padding,
          border: OutlineInputBorder(borderSide: BorderSide(width: 5)),
          // labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
