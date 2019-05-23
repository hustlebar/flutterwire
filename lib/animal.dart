import 'animal_type.dart';
class Animal {
  String name;
  AnimalType type;

  Animal(this.name, this.type) {
    print('Constructor called with $name and $type');
    printType(type);
  }

  factory Animal.fromProps(String name, AnimalType type) {
    return new Animal(name, type);
  }

  void printType(AnimalType type) {
    switch(type) {
      case AnimalType.Cat:
        print('This is a cat');
        break;
      case AnimalType.Dog:
        print('This is a dog');
        break;
      case AnimalType.Horse:
        print('This is a horse');
        break;
      default:
        print('Default type is cat');
        break;
    }
  }
}