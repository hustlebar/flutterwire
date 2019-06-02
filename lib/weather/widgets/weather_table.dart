import 'package:flutter/material.dart';

class WeatherTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return createTable();
  }

  Table createTable() {
    return Table(
      border: TableBorder.all(color: Colors.red),
      defaultColumnWidth: FixedColumnWidth(150.0),
      children: List.generate(2, (int index) {
        return TableRow(
          children: [
            TableCell(
              child: Text('Title $index'),
            ),
            TableCell(
              child: Text('$index'),
            )
          ]
        );
      }),
    );
  }
}