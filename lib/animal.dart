class Animal {
  String name;
  String type;

  Animal(this.name, this.type) {
    print('Constructor called with $name and $type');
  }

  factory Animal.fromProps(String name, String type) {
    return new Animal(name, type);
  }
}