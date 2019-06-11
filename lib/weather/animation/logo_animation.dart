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
  Animation<double> animation;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return _build;
  }

  Widget get _build {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: animation.value,
      width: animation.value,
      child: FlutterLogo(),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
    );

    animation = Tween<double>(begin: 0, end: 200).animate(_controller)
      ..addListener(() {
        setState(() {

        });
      });

    startAnimation();
  }

  Future<void> startAnimation() async {
    await _controller.forward();
  }
}