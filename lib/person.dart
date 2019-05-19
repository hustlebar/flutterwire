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
    for (var greeting in greetings) {
      print('Hello $greeting');
    }
  }
}