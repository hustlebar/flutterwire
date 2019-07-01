import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation with return'),
      ),
      body: Center(
        child: SelectionButton(),
      )
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _onSelection(context),
      child: Text('Select an option'),
    );
  }

  void _onSelection(BuildContext ctx) async {
    final result = await Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) => SelectionScreen())
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSelection(context);
  }

  Widget _buildSelection(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
    );
  }
}