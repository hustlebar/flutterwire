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
    onNewBurgerOrder.listen((newOrder) {
      grillCook.prepareOrder(newOrder);
    });
    onNewFriesOrder.listen((newOrder) {
      friesCook.prepareOrder(newOrder);
    });
  }

  void newOrder(Order order) {
    _controller.add(order);
  }
}

class Cook {
  void prepareOrder(Order order) {
    print("Preparing order: $order");
  }
}

class Order {

}

class Burger extends Order {

}

class Fries extends Order {

}