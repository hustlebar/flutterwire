import 'dart:async';

import 'package:flutter/material.dart';

class LogoAnimationWidget extends StatefulWidget {
  @override
  LogoAnimationState createState() {
    return LogoAnimationState();
  }
}

class LogoAnimationState extends State<LogoAnimationWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _sizeAnimation;
  Animation<Color> _colorAnimation;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return _build;
  }

  Widget get _build {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: _sizeAnimation.value,
      width: _sizeAnimation.value,
      color: _colorAnimation.value,
      child: FlutterLogo(),
    );
  }

  @override
  void initState() {
    super.initState();

    _buildAnimationController();

    _sizeAnimation = Tween<double>(begin: 0, end: 200).animate(_controller)
      ..addListener(() {
        setState(() {

        });
      });

    _colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.red)
      .animate(_controller)
      ..addListener(() {
        setState(() {

        });
      });

    startAnimation();
  }

  void _buildAnimationController() {
    _controller?.dispose();
    _controller = AnimationController(
        duration: Duration(seconds: 2),
        vsync: this
    );
  }

  Future<void> startAnimation() async {
    await _controller.forward();
  }
}