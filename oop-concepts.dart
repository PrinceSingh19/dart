void main() {
  // polymorphism-
  //Polymorphism in Dart is the ability of objects of different classes to be treated as if they are objects of a common superclass1. Polymorphism is achieved through inheritance and method overriding, which are marked by the @override metatag

  // Here both Cat and Dog are extending the same Animal Class
  Cat cat = Cat();
  cat.sound();
  Dog dog = Dog();
  dog.sound();

  //abstraction example
  Animal animal1 = Cat();
  animal1.sound();
  Animal animal2 = Cat();
  animal2.sound();

  // inheritance is the inheriting the parent class properties
  // encapsulation is making the variables and methods private and using them
//   Encapsulation in Dart is a concept of wrapping up data and functions into a single unit using classes and objects1. It is used to hide the implementation details of a class from the user and restrict access to data members
  final hide = Hide();
  print(hide._hide);
}

// class Animal {
//   void sound() {
//     print("Animal is making sound");
//   }
// }

abstract class Animal {
  void sound();
}

class Hide {
  bool _hide = true;
}

class Cat extends Animal {
  void sound() {
    print("Cat is making sound");
  }
}

class Dog extends Animal {
  void sound() {
    print("Dog is making sound");
  }
}
