import 'package:flutter/material.dart';
import 'cloud_painter.dart';

class Cloud extends StatefulWidget {
  @override
  CloudState createState() {
    return CloudState();
  }
}

class CloudState extends State<Cloud> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Tween<Offset> _positionAnimation;


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
    _initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return _slideTransition;
  }

  void _initAnimation() {
    _positionAnimation = Tween(
      begin: Offset(100, 150),
      end: Offset(300, 350)
    );
  }

  Widget get _slideTransition {
    return SlideTransition(
      position: _positionAnimation.animate(
        _controller.drive(
          CurveTween(curve: Curves.bounceIn)
        )
      ),
      child: _build,
    );
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