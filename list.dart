void main() {
  // By default all Lists are of type object and have the dynamic values. So if you don't specify, they take all the data types
  List arraysOfObjects = [10, 20, 30, "Prince", false, 20.0];
  print(arraysOfObjects);

// Here we are specifying the specific type to accept by using generics inside the angle brackets.
  List<String> names = ["prince", "prinshu", "priyanka"];
  print(names);

  final studentPrince = Student("Prince", 20);

  print("=====");
  List<Student> students = [
    studentPrince,
    Student("Prinshu", 50),
    Student("Priyanka", 40)
  ];
// can access the properties of each individual object like below
  print(students[2].name);

// so we can not assign the value to the list whose index don't exist.
  // students[3].name = "Phe";
  // print(students[3].name);

  print(students);

  // using the add method on the list
  students.add(Student("Santara", 30));
  print(students[3].name);
  print(students.toString());

// it didn't removed the Prince cause we are creating the new instance of the Student while removing
  // students.remove(Student("Prince"));

  // here we are not creating the new instance just utilizing the existing the final student class. So It will remove the student
  students.remove(studentPrince);
  print(students.toString());

  // By using this type of Class Instance we can have the dynamic type
  //final vehicleName = Vehicle("Ferrari");

  // By using it like this we enable the strict type checking while giving args to the class;
  final vehicleName = Vehicle<String>("Ferrari");
  print(vehicleName.vehicleName);

  // filtering the list based on certain conditions
  final finalStudents = students.where((student) => student.marks > 20);
  // but it gives the iterable
  //print(finalStudents);

  // we can convert it to list using the following toList() method
  print(finalStudents.toList());

// we can filter and convert into list and after that assign the same to  previous variable also
  //students = students.where((student) => student.marks > 20).toList();

// set removes the duplicates while it doesn't gives error intiallly but filters the duplicate values
  Set<int> numbers = {20, 30, 40, 40, 20, 10};
  print(numbers.toList());
}

class Student {
  //final int mark;
  String name;
  final int marks;
  Student(this.name, this.marks);

  @override
  String toString() => 'Student ${name}';
}

class Vehicle<T> {
  final T vehicleName;

  Vehicle(this.vehicleName);
}
