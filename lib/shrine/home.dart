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
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: _buildChildren(context),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    List<Widget> children = List();

    children.add(Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Image.asset('assets/images/logo.png'),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Title'),
                SizedBox(height: 8.0,),
                Text('Secondary title')
              ],
            ),
          )
        ],
      ),
    ));
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