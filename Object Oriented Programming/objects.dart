// An object is an instance of a class
// It represents a real-world entity with attributes (properties) and behaviors (methods).

// Declaring a simple class in Dart
class Car {
  //the attributes of the class
 String brand;
 String model;

 Car(this.brand, this.model);

 void showDetails() {
  print('Brand: $brand, Model: $model');
 }
}
void main() {
 // Creating an object of the Car class
 Car myCar = Car('Toyota', 'Corolla'); //This is the instance of the class
 // Calling the method using the object
 myCar.showDetails(); // Output: Brand: Toyota, Model: Corolla
}