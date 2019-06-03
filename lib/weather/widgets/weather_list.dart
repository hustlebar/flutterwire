import 'package:flutter/material.dart';

class WeatherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return createList(context);
  }

  Text createList(BuildContext context) {
    return Text('Weather List');
  }
}