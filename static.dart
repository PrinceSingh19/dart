void main() {
  print(Constants.number);
  Constants.number = 10;
  print(Constants.number);
  Constants.printHello();
}

// static variable and methods are used when you are sure that this value is constant throughout the appplication.

// It helps you to save the memory since you don't need to create any instance of the class and can be invoked directly.
class Constants {
  static int number = 5;
  static void printHello() {
    print("Hello how are you?");
  }
}
