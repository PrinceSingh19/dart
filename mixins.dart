void main() {
  Car car = Car();
  car.fn();

  OtherClass otherClass = OtherClass();
  otherClass.printFunction();
}

// Mixins are a way of defining code that can be reused in multiple class hierarchies. They are intended to provide member implementations en masse.
//To use a mixin, use the with keyword followed by one or more mixin names.
mixin Vehicle {
  int number = 5;
}

mixin AnotherVehicle {
  String type = "FourWheeler";
}

// it can have single or multiple mixins
class Car with Vehicle, AnotherVehicle {
  void fn() {
    print(number);
    print(type);
  }
}

// defining a mixin class and impleting it
mixin class Animal {
  bool isBool = true;
}

//Mixins are meant to provide reusable behavior across multiple class hierarchies, but they don’t directly expose their properties to the classes that use them.
//class OtherClass with Car {    => it won't work
class OtherClass extends Car {
  void printFunction() {
    print(number);
  }
}

abstract mixin class Musician {
  // No 'on' clause, but an abstract method that other types must define if
  // they want to use (mix in or extend) Musician:
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician {
  // Use Musician as a mixin
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }
}

class Novice extends Musician {
  // Use Musician as a class
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
  }
}
