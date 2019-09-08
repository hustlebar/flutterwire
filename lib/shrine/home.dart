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
      ),
    );
  }

  Widget _buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, semanticLabel: 'menu',),
    );
  }
}