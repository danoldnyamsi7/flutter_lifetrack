import 'package:flutter/material.dart';
import 'package:todo_app_ui/utils/bgcolor.dart';
import 'package:todo_app_ui/utils/device_width.dart';

class ContainerClipper extends StatelessWidget {
  late double height;
  late Color color;
  ContainerClipper(double height, Color color) {
    this.height = height;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth(context),
      height: height,
      alignment: Alignment.center,
      color: color,
    );
  }
}


