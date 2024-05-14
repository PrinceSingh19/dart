void main() {
  final car = Car();
  print(car.isEngineWorking);
  car.totalCapacity();
  print(car.totalVehicles);
  car.increaseTotalVehicles();
  print(car.totalVehicles);
}

// extending classes. You can extend from a single class. Cause multiple inheritance is not allowed in dart.

// can extend the from the super class also which is the parent of the class from which we are inheriting
class SuperClass {
  int totalVehicles = 10;

  int increaseTotalVehicles() {
    totalVehicles += 25;
    return totalVehicles;
  }
}

class Vehicle extends SuperClass {
  int noOfWheel = 4;
  bool isEngineWorking = true;

  void totalCapacity() {
    print("Total capacity is 10");
  }

  @override
  // we can use the @override annotation to override the parent method by the child method
  int increaseTotalVehicles() {
    totalVehicles += 20;
    return totalVehicles;
  }
}

class Car extends Vehicle {
  bool isMovable = true;
}
