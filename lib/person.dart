class Person {
  final bool isComplete;
  String _name;

  Person({
    this.isComplete = true,
  });

  String get getName => _name;
  void setName(String name) {
    _name = name;
  }

  @override
  String toString() => 'Person is $_name';

  List<String> greetings = ['World', 'Mars', 'Oregon', 'Barry'];
  void sayGreetings() {
    for (String greeting in greetings) {
      print('Hello $greeting');
    }

    print('Another way of for loop');
    greetings.forEach((greeting) => print('Hello from $greeting'));

    print('Arrow => function');
    String makeGreeting(String name) => 'Hello $name';
    print(makeGreeting('Tham'));
  }

  int total(int a, int b) {
    int total = a + b;
//    if (total % 2 == 0) {
//      print('Total is an even number');
//    } else {
//      print('Total is an odd number');
//    }
    String message;
    message = (total % 2 == 0 ? 'Even Number' : 'Odd number');
    print(message);

    return total;
  }

  void nameParam({String name}) {
    print('Named parameters: $name}');
  }
}