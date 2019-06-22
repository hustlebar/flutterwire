import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product details'),
      ),

      body: _buildChildren(context),
    );
  }

  Widget _buildChildren(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Details page'),
        RaisedButton(
          child: Text('Go back'),
          onPressed: () => _onBack(context),
        )
      ],
    );
  }

  void _onBack(BuildContext context) {
    Navigator.pop(context);
  }
}