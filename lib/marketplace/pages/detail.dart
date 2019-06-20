import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('detail');
  }

  Widget _build() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product details'),
      ),

      body: Text('Details page'),
    );
  }
}