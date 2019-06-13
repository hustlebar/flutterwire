import 'package:flutter/material.dart';
//import 'pages/forecast.dart';
//import 'widgets/weather_table.dart';
//import 'widgets/weather_tab.dart';

//import 'widgets/weather_list.dart';
//import 'widgets/weather_gesture.dart';
//import 'widgets/login.dart';
//import 'animation/logo_animation.dart';
import 'animation/cloud.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Cloud()
    );
  }
}