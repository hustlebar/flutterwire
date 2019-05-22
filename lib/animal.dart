import 'animal_type.dart';
class Animal {
  String name;
  AnimalType type;

  Animal(this.name, this.type) {
    print('Constructor called with $name and $type');
  }

  factory Animal.fromProps(String name, AnimalType type) {
    return new Animal(name, type);
  }
}