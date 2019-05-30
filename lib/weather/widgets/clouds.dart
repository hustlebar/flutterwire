import 'package:flutter/material.dart';

class Clouds extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}

class CloudsPainter extends CustomPainter {
  final Paint cloudPaint;
  final bool isRain;

  CloudsPainter({this.cloudPaint, this.isRain});

  @override
  void paint(Canvas canvas, Size size) {
    var rectTop = 110.0;
    var rectBottom = rectTop + 40.0;

    var leftEdge = size.width / 4;
    var rightEdge = size.width - 90.0;
    var center = size.width / 2;
    
    Rect cloudBaseRect = Rect.fromPoints(
      Offset(leftEdge, rectTop),
      Offset(rightEdge, rectBottom)
    );

    RRect cloudBase = RRect.fromRectAndRadius(
      cloudBaseRect, Radius.circular(10.0)
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}