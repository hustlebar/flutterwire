import 'package:flutter/material.dart';
import 'package:flutterwire/marketplace/model/product.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    print('Enters ProductDetails._build()');
    final Product product = ModalRoute.of(context).settings.arguments;
    print('Product through route ${product.title} and ${product.id}');
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