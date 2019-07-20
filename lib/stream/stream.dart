import 'package:flutter/material.dart';
import 'burger_stand.dart';

class StreamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _build(context);
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream App.'),
      ),

      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    var burgerStand = new BurgerStand();
    burgerStand.onOrder();

    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Click'),
              onPressed: _onPressed,
            ),
            RaisedButton(
              child: Text('Order Burger'),
              onPressed: () => _onBurgerOrder(burgerStand),
            )
          ],
        ),
      ),
    );
  }

  void _onBurgerOrder(BurgerStand burgerStand) {
    burgerStand.order("Burger");
  }

  void _onPressed() {
    print('Enters StreamApp._onPressed');
//    futurePrint(Duration(microseconds: 5000), "I am first").then((onValue) => print(onValue));
//    futurePrint(Duration(microseconds: 20), "I am Second").then((onValue) => print(onValue));
//    futurePrint(Duration(microseconds: 1000), "I am Third").then((onValue) => print(onValue));
    _onAsync();
  }

  void _onAsync() async {
    await futurePrint(Duration(microseconds: 1000), "I am first").then((onValue) => print(onValue));
    await futurePrint(Duration(microseconds: 20), "I am Second").then((onValue) => print(onValue));
    await futurePrint(Duration(microseconds: 1000), "I am Third").then((onValue) => print(onValue));
  }

  Future futurePrint(Duration duration, String message) {
    return Future.delayed(duration)
      .then((onValue) => message)
      .catchError((error) => print(error));
  }
}