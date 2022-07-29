import 'package:flutter/material.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class SignCustomeClipper extends CustomClipper<Path> {
  @override

  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height + 10, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    throw UnimplementedError();
  }
}

class SignCustomeClipper2 extends CustomClipper<Path> {
  @override

  late double inclinationStopx;
  late double inclinationStopy;

  SignCustomeClipper2(inclinationStopx, inclinationStopy) {
    this.inclinationStopx = inclinationStopx;
    this.inclinationStopy = inclinationStopy;
  }

  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 90);
    // path.lineTo(size.width, size.height-50);
    path.quadraticBezierTo(
        size.width / 2, size.height + 10, size.width, size.height - 90);
    path.lineTo(size.width, 0);
    path.lineTo(inclinationStopx, 0);
    path.lineTo(size.width * 0, inclinationStopy);
    // path.quadraticBezierTo(
    //     size.width * .1, size.height * 0, size.width * 0, size.height - 260);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    throw UnimplementedError();
  }
}
