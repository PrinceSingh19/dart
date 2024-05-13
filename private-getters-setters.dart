void main() {
  Cookie cookie = Cookie();
  cookie.printHeight();

  cookie._height = 20;
// we can change the value of private variables from outside the class also
  cookie.printHeight();

  print(cookie.height);

  // setting the value of the private variable through setter.
  print(cookie.setHeight(40));
}

class Cookie {
  // private variable
  //? private variables are private to the file not class in the dart unlike java where private is private to its class only. Here private variable is accessible outside the class but in the same file only.

  int _height = 10;

  // getters in dart
  int get height => _height;

  //setters in dart
  // These are useful when you want to do something more than just assigning a value to the variable. Like assigning a variable and then performing some complex calculation immediately
  int setHeight(int h) {
    return _height = h;
  }

  void printHeight() {
    print(_height);
  }
}
