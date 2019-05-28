import 'package:flutter/material.dart';
import 'sun.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorTween tween = new ColorTween(
      begin: Colors.red,
      end: Colors.amber,
    );
    AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    return Container(
      child: Sun(animation: tween.animate(parent),),
    );
  }
}