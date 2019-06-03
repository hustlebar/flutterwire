import 'package:flutter/material.dart';

class WeatherList extends StatefulWidget {
  @override
  WeatherListState createState() => WeatherListState();
}

class WeatherListState extends State<WeatherList> {
  List<City> cities;
  
  @override
  void initState() {
    cities.add(City('Chennai', 1));
    cities.add(City('Kovai', 10));
    cities.add(City('Madurai', 21));
    cities.add(City('Pondy', 11));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return createList(context);
  }

  Text createList(BuildContext context) {
    return Text('Weather List');
  }
}

class City {
  String name;
  int popularity;

  City(this.name, this.popularity);
}