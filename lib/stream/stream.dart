import 'package:flutter/material.dart';

class StreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream App'),
      ),

      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text('Click'),
          onPressed: _onPressed,
        ),
      ),
    );
  }

  void _onPressed() {
    print('Enters StreamApp._onPressed');
  }
}