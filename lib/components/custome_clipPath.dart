import 'package:flutter/material.dart';

class Lifetrack_clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width ;
    final double _yScaling = size.height;
    path.lineTo(298 * _xScaling, 186 * _yScaling);
    path.cubicTo(
      451 * _xScaling,
      461 * _yScaling,
      576 * _xScaling,
      417 * _yScaling,
      673 * _xScaling,
      350 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

