import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key key}): super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('Counter: $_counter');
    return Container(
      child: Column(
        children: <Widget>[
          Text('Hello $_counter'),
          FlatButton(
            child: Text('Click'),
            onPressed: _onPressed,
          )
        ],
      ),
    );
  }

  void _onPressed() {
    print('_onPressed called');
    setState(() {
      _counter++;
    });
  }
}