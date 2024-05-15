void main() {
  Car car = Car();
  print(car.noOfWheels); // 4
  print(car.returnVehicleName()); // Car
}

//implements and extends

class Vehicle {
  int noOfWheels = 2;
  String returnVehicleName() {
    return "Bike";
  }
}

// implement is basically a set of instructions which makes you to define all the properties and methods of the super class but overriding the values of it
class Car implements Vehicle {
  @override
  int noOfWheels = 4;

  @override
  String returnVehicleName() {
    return "Car";
  }
}
