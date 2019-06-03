import 'package:flutter/material.dart';
//import 'pages/forecast.dart';
//import 'widgets/weather_table.dart';
//import 'widgets/weather_tab.dart';

import 'widgets/weather_list.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
//      child: Forecast(),
//      child: WeatherTable(),
//      child: WeatherTabBar(startIndex: 0,),
      child: WeatherList(),
    );
  }
}