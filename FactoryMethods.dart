// Factory constructors or methods are used to provide alternative ways to create instances of a class.
// They are useful when you need to control the instantiation process or return an instance of a subclass.

import 'dart:math'; // Import math library to use pi
// Circle Class Definition
class Circle {
  double radius; // Instance variable to store the radius of the circle

  // Constructor to initialize the radius
  Circle(this.radius);

  // Factory constructor to create circles with different radii
  factory Circle.create(double radius) {
    // Ensure the radius is positive before creating the instance
    if (radius <= 0) {
      throw ArgumentError('Radius must be greater than zero');      
    }
    return Circle(radius); // Return a new Circle instance
    }

  // Method to calculate the area of the circle
  double calculateArea() {
    return pi * radius * radius; // Area formula: pi * radius^2
  }
}

void main() {
  // Using the factory constructor to create circle instances
  var circle1 = Circle.create(5.0); // Create a circle with radius 5.0
  var circle2 = Circle.create(10.0); // Create a circle with radius 10.0
  var circle3 = Circle.create(3.0); //

  // Print the area of the circles by calling the calculateArea method
  print('Circle 1 Area: ${circle1.calculateArea()}'); // Output: Circle 1 Area
  print('Circle 2 Area: ${circle2.calculateArea()}'); // Output: Circle 2 Area
  print('Circle 3 Area: ${circle3.calculateArea()}');

}