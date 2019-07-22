import 'dart:async';
class BroadcastBurgerStand {
  StreamController<Order> _controller = new StreamController.broadcast();

  Cook grillCook = new Cook();
  Cook friesCook = new Cook();

  Stream get onNewBurgerOrder =>
      _controller.stream.where((Order order) => (order is Burger));

  Stream get onNewFriesOrder =>
      _controller.stream.where((Order order) => (order is Fries));
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