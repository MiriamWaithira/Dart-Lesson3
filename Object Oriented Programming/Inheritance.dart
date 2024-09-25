

// EXAMPLE 1
// PARENT CLASS VEHICLE
class Vehicle {
  //attributes of the class
  String brand;
  int year;

  //constructor with the vehicle's properties
  Vehicle(this.brand, this.year);

  void displayInfo(){
    print('Vehicle Information is: $year $brand');
  }
}
// Inheritance begins
// Derived class that inherits from Vehicle
class Car extends Vehicle {
  //Child properties/attributes
  String model;
  
  //Child constructor
  Car(String brand, this.model, int year) : super(brand, year); //colon means referring to the super/parent

  //method showing childs info
  void displayCarInfo() {
    print('Car Information is: $year $brand $model');
  }
}
//The Main application
void main() {
  //creating an instance of the Car class
  Car myCar = Car('Toyota', 'Camry', 2022);

  //Accessing and displaying info using methods from both Vehicle and Car classes
  myCar.displayInfo();
  myCar.displayCarInfo();
}


// // EXAMPLE 2
// // Base class
// class Animal {
//   String name;
//   int age;

//   // Constructor
//   Animal(this.name, this.age);

//   // Method to describe the animal
//   void makeSound() {
//     print('Some generic animal sound');
//   }

//   void displayInfo() {
//     print('Name: $name, Age: $age');
//   }
// }

// // Subclass Dog inherits from Animal
// class Dog extends Animal {
//   String breed;

//   Dog(String name, int age, this.breed) : super(name, age);

//   // Overriding the makeSound method
//   @override
//   void makeSound() {
//     print('$name the dog barks: Woof Woof!');
//   }

//   void displayBreed() {
//     print('$name is a $breed');
//   }
// }

// // Subclass Cat inherits from Animal
// class Cat extends Animal {
//   String color;

//   Cat(String name, int age, this.color) : super(name, age);

//   // Overriding the makeSound method
//   @override
//   void makeSound() {
//     print('$name the cat meows: Meow!');
//   }

//   void displayColor() {
//     print('$name has a beautiful $color coat');
//   }
// }

// void main() {
//   // Creating a Dog instance
//   Dog dog = Dog('Buddy', 4, 'Golden Retriever');
//   dog.displayInfo();  // From Animal class
//   dog.makeSound();    // Overridden in Dog class
//   dog.displayBreed(); // Specific to Dog class

//   // Creating a Cat instance
//   Cat cat = Cat('Whiskers', 2, 'black');
//   cat.displayInfo();  // From Animal class
//   cat.makeSound();    // Overridden in Cat class
//   cat.displayColor(); // Specific to Cat class
// }

//Run one example at a time. One needs to be commented out so the other can run