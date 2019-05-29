import 'package:flutter/material.dart';
import 'pages/forecast.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Forecast(),
    );
  }
}