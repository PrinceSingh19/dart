void main() {
  Car car = Car();
  car.printBrand();
  car.printName();
  print(car.number);
  Truck truck = Truck();
  truck.printBrand();
}

// abstract classes are declared usign abstract keyword
abstract class Vehicle {
  // abstract class methods are declared as the below only. They are not intialized.
  void printName();
  void printBrand();
  int number = 5;
}

// for extending it is fine it all the properties and methods of the superclas are not reinitialized for the abstract class.
class Car extends Vehicle {
  void printName() {
    print("This is car");
  }

  void printBrand() {
    print("Brand is Audi");
  }
}

// for extending it is mandatory for  all the properties and methods of the superclas are not reinitialized for the abstract class.
class Truck implements Vehicle {
  void printName() {
    print("This is Truck");
  }

  int number = 10;

  void printBrand() {
    print("Brand is Ashoka");
  }
}
