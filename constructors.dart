void main() {
  // when I pass the values from here through constructore then existing values in the class gets overrieden
  final cookie = Cookie("Prinshu", 25);
  print(cookie.name);
  print(cookie.age);

  final namedClass = NamedClass(name: "P", age: 21);
  print(namedClass.name);
}

class Cookie {
  String name = "Prince";
  int age = 24;

  // Constuctor is a special method that is used to initialize and set the values of the class members when they are initialized
// parameterised construtor
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


// example of named constructor
class NamedClass {
  String name = "Prinshu";
  int age = 18;
  NamedClass({required this.name, required this.age});
}
