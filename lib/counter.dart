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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Increment'),
                  color: Colors.green,
                  onPressed: _increment,
                ),
                RaisedButton(
                  child: Text('Decrement'),
                  color: Colors.red,
                  onPressed: _decrement,
                ),
                RaisedButton(
                  child: Text('Normalize'),
                  color: Colors.blue,
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