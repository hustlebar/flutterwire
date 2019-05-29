import 'package:flutter/material.dart';
import '../sun.dart';

class Forecast extends StatefulWidget {
  @override
  _ForecastState createState() {
    return new _ForecastState();
  }
}

class _ForecastState extends State<Forecast> with SingleTickerProviderStateMixin {
  ColorTween tween = new ColorTween(
    begin: Colors.red,
    end: Colors.amber,
  );

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this);
    _animationController.forward(from: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Sun(animation: tween.animate(_animationController));
  }
}