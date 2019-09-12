import 'package:flutter/material.dart';
import 'package:flutterwire/shrine/product.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrine - Home'),
        leading: _buildLeading(context),
        actions: _buildActions(context),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: _buildCards(context, 6),
    );
  }

  //Will be used in the future
  List<Card> _buildChildren(BuildContext context) {
    List<Product> products;
    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    return products.map((product) {
      return Card();
    }).toList();
  }

  List<Card> _buildCards(BuildContext context, int count) {
    List<Card> cards = List.generate(count,
      (int index) => _buildCard(context)
    );

    return cards;
  }

  Card _buildCard(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset(
              'assets/images/sample.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: theme.textTheme.title,
                ),
                SizedBox(height: 8.0,),
                Text(
                  'Secondary title',
                  style: theme.textTheme.body2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    List<Widget> actions = List();

    actions.add(IconButton(
      icon: Icon(
        Icons.search,
        semanticLabel: 'search',
      ),
      onPressed: () {
        print('Search clicked');
      },
    ));

    actions.add(IconButton(
      icon: Icon(
        Icons.tune,
        semanticLabel: 'tune',
      ),
      onPressed: () {
        print('Tune clicked');
      },
    ));
    
    return actions;
  }

  Widget _buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, semanticLabel: 'menu',),
      onPressed: () {
        print('Menu button clicked');
      },
    );
  }
}