// A class defines the properties and methods that an object will have.

// Declaring a class in Dart
class Person {
 // Properties of the class
 String name;
 int age;

 // Constructor
 Person(this.name, this.age);
// Method to display person details- is the behaviour
 void displayInfo() {
 print('Name: $name, Age: $age');
 }
}
void main() {
  // Creating an instance of Person
  Person person = Person('Alice', 25);
  
  // Calling the displayInfo method
  person.displayInfo();
}