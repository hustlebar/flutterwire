import 'package:flutter/material.dart';
import 'pages/forecast.dart';
import 'widgets/weather_table.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
//      child: Forecast(),
      child: WeatherTable(),
    );
  }
}