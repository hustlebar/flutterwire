import 'package:flutter/material.dart';

class WeatherTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return createTable();
  }

  Table createTable() {
    return Table(
      border: TableBorder.all(color: Colors.red),
    );
  }
}