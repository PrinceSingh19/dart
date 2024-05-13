void main() {
  // Here I am creating the multiple instance of the same class whenever I am calling it with parenthesis;
  print(Cookie().returnNumber());
  final cookie = Cookie();
  print(cookie.name);

  //since you are already printing the values in the baking method then you don't need to include it in the print method
  cookie.baking();

  // cookie is an object and Cookie is a class

  //  We are accessing the cookie name then changing its name property value. Here cookie object is a final variable so you might think we can not change the name property but the reason is that cookie object is the final not the name property.

  print(cookie.name);
  cookie.name = "Prinshu";
  print(cookie.name);

  print("-----");

  // Another version where I am creating the multiple instances of the same class and try to set the properties on that
  // Output of the below code will be "Prince" /n "Prince"
  // cause we are creating the new instance of the objects
  print(Cookie().name);
  Cookie().name = "Princess";
  print(Cookie().name);
}

class Cookie {
  //variables
  String name = "Prince";
  int number = 9373;

// method
  int returnNumber() {
    return number;
  }

  void baking() {
    print("Baking has started");
  }
}
