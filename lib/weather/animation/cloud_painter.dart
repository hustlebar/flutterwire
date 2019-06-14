import 'package:flutter/material.dart';

class CloudPainter extends CustomPainter {
  final Paint _brush;
  CloudPainter(this._brush);

  @override
  void paint(Canvas canvas, Size size) {
    var width = size.width / 2;
    var height = size.height / 2;

    var _rect = Rect.fromPoints(
      Offset(160, height - 30),
      Offset(450, height + 70)
    );

    var _rrect = RRect.fromRectAndRadius(_rect, Radius.circular(10.0));

    canvas.drawCircle(Offset(width, height), 50.0, _brush);
    canvas.drawCircle(Offset(width + 50, height - 20), 75.0, _brush);
    canvas.drawCircle(Offset(width + 120, height - 30), 100.0, _brush);
    canvas.drawRRect(_rrect, _brush);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}