void main() {
  final employee1 = Employee("SWE", EmployeeType.swe);
  final employee2 = Employee("Marketing", EmployeeType.marketing);
  employee1.fn();
  employee2.fn();

  employee1.funtionPrint();
  employee2.funtionPrint();
}

enum EmployeeType {
  // we can add default value to the enum also
  swe(20000),
  marketing(10000),
  hr(5000);

  final int salary;
  const EmployeeType(this.salary);
}

class Employee {
  final EmployeeType profession;
  final String name;
  Employee(this.name, this.profession);

  void funtionPrint() {
    print(profession.salary);
  }

  void fn() {
    // in switch statement while utilizing the enums you need to mention the all the type exhaustively if not using default
    switch (profession) {
      case EmployeeType.swe:
        print('Ocuccpation is : swe');
        break;
      case EmployeeType.marketing:
        print('Ocuccpation is : marketing');
        break;
      default:
        print('Ocuccpation is : null');
    }
  }
}
