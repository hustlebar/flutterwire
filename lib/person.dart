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
}