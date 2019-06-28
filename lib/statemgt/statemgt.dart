import 'package:flutter/material.dart';

class StateMgt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Container(
        child: Center(
          child: Text('State management module'),
        ),
      ),
    );
  }
}