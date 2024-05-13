// main function is the entry point and it should enclose all the function calls to be run
void main() {
  // printName();
  // print(number());

  // can not assign the const variable here because function are not stable and can be changed

  // var finalNumber = number();
  // print(finalNumber);

  // named and positional arguments in functions
  String name = "Prince";
  int age = 10;

// Here you need to pass the arguments in the same position and order in which they are called in the funciton definition. Used for less than 3 args.
  namedFunction(name, age);
// Here you are declaring the relations so you can pass them in any order. Used when there are 3 or more than 3 args
  positionalFuntions(name: name, age: age);

// here you can destructure the values like below by giving any name to the variables cause theire names are not defined when returning
  final (number, stringValue) = moreThan1NamedReturn();
  print(number);
  print(stringValue);

// here it does not provides the destructured values. but you get the values
  final finalValue = moreThan1PositionalReturn();
  print(finalValue.number1);
  print(finalValue.text);
}

// not returning anything.
void printName() {
  print("Prince Singh");
}

int number() {
  return 5;
}

void namedFunction(String name, int age) {
  print(name);
  print(age);
}

// Need to mention the requried or nullable types. You need to provide the datatype else it will infer as dynamic and will lose the type properties
// use ? to make the parameters optional else need to pass them explicitly with required
void positionalFuntions({required String name, int? age}) {
  print(name);
  print(age);
}

// returning more than one data type using named return
(int, String) moreThan1NamedReturn() {
  return (5, "Prince");
}

({int number1, String text}) moreThan1PositionalReturn() {
  return (number1: 20, text: "HI");
}
