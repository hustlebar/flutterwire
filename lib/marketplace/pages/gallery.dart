import 'package:flutter/material.dart';
import 'package:flutterwire/marketplace/model/product.dart';
import 'package:flutterwire/marketplace/pages/detail.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    print('Gallery._build() called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: _buildProducts(context),
    );
  }

  Widget _buildProducts(BuildContext context) {
    final List<Product> products = List<Product>.generate(
        10,
        (i) => Product('$i', 'Product $i')
    );
    
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].title),
          onTap: () => _onTap(context, products[index]),
        );
      }
    );
  }

  void _onTap(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetail(product: product)
      )
    );
  }
}