import 'package:flutter/material.dart';
import 'package:todo_app_ui/utils/device_height.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class LifetrackClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

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
