import 'dart:async';

class BurgerStand {
  StreamController _controller = new StreamController();
  Stream get onNewOrder  => _controller.stream;

  Cook cook = new Cook();

  void onOrder() {
    onNewOrder.listen((onOrder) {
      cook.prepareOrder(onOrder);
    });
  }
}

class Cook {
  void prepareOrder(String order) {
    print("Preparing the order $order");
  }
}