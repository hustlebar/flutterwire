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
          Center(
            child: Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Increment'),
                  onPressed: _increment,
                ),
                RaisedButton(
                  child: Text('Decrement'),
                  onPressed: _decrement,
                ),
                RaisedButton(
                  child: Text('Normalize'),
                  onPressed: _normalize,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('Init state is called');
  }

  void _increment() {
    print('_increment called');
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    print('_decrement called');
    setState(() {
      _counter--;
    });
  }

  void _normalize() {
    setState(() {
      _counter = 0;
    });
  }
}