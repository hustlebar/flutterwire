import 'package:flutter/material.dart';

class CloudPainter extends CustomPainter {
  final Paint _brush;
  CloudPainter(this._brush);

  @override
  void paint(Canvas canvas, Size size) {
    var width = size.width / 2;
    var height = size.height / 2;

    canvas.drawCircle(Offset(width, height), 50.0, _brush);
    canvas.drawCircle(Offset(width - 10, height), 75.0, _brush);
    canvas.drawCircle(Offset(width - 20, height), 100.0, _brush);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}