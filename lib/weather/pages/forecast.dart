import 'package:flutter/material.dart';
import 'package:flutterwire/weather/widgets/sun.dart';

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

  Tween offsetTween = new Tween<Offset>(
    begin: Offset(0.0, 100.0),
    end: Offset(150.0, 120.0));

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 500), vsync: this);
    _animationController.forward(from: 10);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Sun(animation: tween.animate(_animationController),)
//        SlideTransition(
//        position: offsetTween.animate(
//          _animationController.drive(
//            CurveTween(curve: Curves.easeIn),
//            ),
//          ),
//          child: Sun(animation: tween.animate(_animationController),),
//        )
      ],
    );
//    return Sun(animation: tween.animate(_animationController));
  }
}