import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter({this.name});

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Widget _buildUi(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Child text'),
        RaisedButton(
          child: Text('Counter'),
          onPressed: _onPressed,
        )
      ],
    );
  }

  void _onPressed() {
    print('Enters _onPressed');
  }
}