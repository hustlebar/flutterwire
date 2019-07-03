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
        child: Column(
          children: <Widget>[
            SelectionButton(),
            _asyncButton()
          ],
        ),
      )
    );
  }
}

Widget _asyncButton() {
  return RaisedButton(
    child: Text('Async button'),
    onPressed: _onAsync,
  );
}

void _onAsync() async {
  await _onFuture('Hello').then((onValue) => print('Value from future $onValue'));
}

Future<String> _onFuture(String value) {
  return Future.delayed(Duration(seconds: 10))
  .then((onValue) => value + '1')
  .catchError((error) => print(error));
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _onSelection(context),
      child: Text('Select your choice'),
    );
  }

  void _onSelection(BuildContext ctx) async {
    final result = await Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) => SelectionScreen())
    );
    
    Scaffold.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
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
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Yep!'),
              onPressed: () {
                Navigator.pop(ctx, 'Yep!');
              },
            ),
            RaisedButton(
              child: Text('Nope'),
              onPressed: () {
                Navigator.pop(ctx, 'Nope');
              },
            )
          ],
        ),
      ),
    );
  }
}