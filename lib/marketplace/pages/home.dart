import 'package:flutter/material.dart';
import 'package:flutterwire/marketplace/util/marketplace_route.dart';
import 'package:flutterwire/marketplace/model/product.dart';

class MarketplaceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace'),
      ),
      body: _body(context),
    );
  }

  Widget _body(context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () => _onTapGallery(context),
          child: Icon(
            Icons.smartphone,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        GestureDetector(
          onTap: () => _onTapDetail(context),
          child: Icon(
            Icons.map,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  void _onTapDetail(BuildContext context) {
    print('Enters _onTapDetail');

    Navigator.pushNamed(
      context,
      MarketPlaceRoute.detail,
      arguments: Product(
        '1', 'Computer'
      )
    );
  }

  void _onTapGallery(BuildContext context) {
    print('Enters _onTapGallery');
    Navigator.pushNamed(context, MarketPlaceRoute.gallery);
  }
}