void main() {
// Three variabls sytem-
  // var, final , const

  //Difference:
  // var - Can be reassigned for the same data type
  // final - Can be reassgined for the runtime data
  // const - Can not be reassigned for the runtime data also and can't be changed once declared

  // built in type inference system
  var name = "Prince";
  print(name.runtimeType);

  var number = 10;
  print(number.runtimeType);

  var isTrue = true;
  print(isTrue);

  final firstName = "PrinceSingh";
  const lastName = "Singh";

  print(firstName);
  print(lastName);

  final date = DateTime.now();
  //const todayDate = DateTime.now();

  print(date);
}
