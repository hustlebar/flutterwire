import 'package:flutter/material.dart';

class WeatherList extends StatefulWidget {
  @override
  WeatherListState createState() => WeatherListState();
}

class WeatherListState extends State<WeatherList> {
  List<City> cities;

  @override
  void initState() {
    cities = new List();
    cities.add(City('Chennai', 1));
    cities.add(City('Kovai', 10));
    cities.add(City('Madurai', 21));
    cities.add(City('Pondy', 11));
    cities.add(City('Trichy', 18));
    cities.add(City('Nellai', 19));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return createList(context);
  }

  Widget createList(BuildContext context) {
//    _initCities();

    return Expanded(
      child: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          City city = cities[index];
          return ListTile(
            title: Text(city.name),
          );
        }
      ),
    );
  }

//  void _initCities() {
//    cities = new List();
//    cities.add(City('Chennai', 1));
//    cities.add(City('Kovai', 10));
//    cities.add(City('Madurai', 21));
//    cities.add(City('Pondy', 11));
//  }
}

class City {
  String name;
  int popularity;

  City(this.name, this.popularity);
}