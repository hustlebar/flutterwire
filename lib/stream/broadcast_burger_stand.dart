import 'dart:async';
class BroadcastBurgerStand {
  StreamController<Order> _controller = new StreamController.broadcast();

  Cook grillCook = new Cook();
  Cook friesCook = new Cook();

  Stream get onNewBurgerOrder =>
      _controller.stream.where((Order order) => (order is Burger));

  Stream get onNewFriesOrder =>
      _controller.stream.where((Order order) => (order is Fries));

  void onNewOrder() {
    onNewBurgerOrder.listen((order) {
      grillCook.prepareOrder(order);
    });
    onNewFriesOrder.listen((order) {
      friesCook.prepareOrder(order);
    });
  }

  void newOrder(Order order) {
    _controller.add(order);
  }
}

class Cook {
  void prepareOrder(Order order) {
    print("Received... Preparing order: $order");
  }
}

class Order {

}

class Burger extends Order {

}

class Fries extends Order {

}