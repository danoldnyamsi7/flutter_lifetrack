import 'package:flutter/material.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class LifetrackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 150);
    // path.lineTo(size.width, size.height);
    path.quadraticBezierTo(
        size.width - 170, size.height + 50, size.width, size.height - 75);
    path.lineTo(size.width, 0);
    path.close();

    return path;
    // TODO: implement getClip
    // throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class OnboardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height / 3.5);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 3.5);
    // path.lineTo(size.width / 1.3, size.height * 0);
    path.quadraticBezierTo(size.width / 1.4, 0, size.width / 2.2, size.height*0.05);
    // path.lineTo(size.width / 3, size.height / 14);
    path.quadraticBezierTo(size.width / 3, size.height*0.05, 0, size.height / 3.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
