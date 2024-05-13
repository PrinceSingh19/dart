void main() {
  // when I pass the values from here through constructore then existing values in the class gets overrieden
  final cookie = Cookie("Prinshu", 25);
  print(cookie.name);
  print(cookie.age);
}

class Cookie {
  String name = "Prince";
  int age = 24;

  // Constuctor is a special method that is used to initialize and set the values of the class members when they are initialized

  Cookie(this.name, this.age) {
    print(name);
    print("Cookie is baking");
    baking();
  }
  void baking() {
    print("Baking the cookie");
  }

  bool isAdult() {
    return true;
  }
}
