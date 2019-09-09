import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 8.0 / 9.0,
      children: _buildChildren(context),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    List<Widget> children = List();

    
    return children;
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