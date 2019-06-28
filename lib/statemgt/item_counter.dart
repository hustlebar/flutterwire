import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter({this.name});

  @override
  _ItemCounterState createState() => _ItemCounterState(name);
}

class _ItemCounterState extends State<ItemCounter> {
  String _name;
  int _count = 0;
  _ItemCounterState(this._name);


  @override
  void initState() {
    _count = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Widget _buildUi(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_name + ' $_count'),
        RaisedButton(
          child: Text('Counter'),
          onPressed: _onPressed,
        )
      ],
    );
  }

  void _onPressed() {
    print('Enters _onPressed');
    setState(() {
      _count++;
    });
  }
}