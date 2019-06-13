import 'package:flutter/material.dart';
import 'cloud_painter.dart';

class Cloud extends StatefulWidget {
  @override
  CloudState createState() {
    return CloudState();
  }
}

class CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    return _build;
  }

  Widget get _build {
    Paint _brush = Paint()
      ..color = Colors.orange
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    var _size = MediaQuery.of(context).size;

    return Container(
      child: CustomPaint(
        painter: CloudPainter(_brush),
        size: _size,
      ),
    );
  }
}