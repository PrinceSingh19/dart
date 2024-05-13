void main() {
  // With final, var and const you loose the type inference features
  // A way to declare the null in the dart
  int? number;
  String? name = "Prince";
  print(number);
  print(name);

  number = 10;
  print(number);
  number = null;
  print(number?.isEven);
  print(number?.isNaN);

  // You can use ! to force that this value exists and not optional unlike ?
//classic example saying that you are sure that number value exists and yet you wants to check that it exists or not and print the 0
  // print(number!.isEven??0);
}
