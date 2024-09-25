// Abstraction refers to the user’s interaction with just a subset of an object’s characteristics and operations.
// To access a complicated item, abstraction uses simpler, high-level techniques.
// No objects for abstract classes.

// Abstract class Shape
abstract class Shape {
  // Abstract method (no implementation)
  double calculateArea();

  // Abstract method to return the name of the shape
  String getShapeName();

  // Concrete method (with implementation)
  void printInfo() {
    print("This is a ${getShapeName()}.");
  }
}

// Concrete class Circle extends Shape
class Circle extends Shape {
  double radius;

  // Constructor for Circle
  Circle(this.radius);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  // Override method to return the name of the shape
  @override
  String getShapeName() {
    return "Circle";
  }
}

// Concrete class Rectangle extends Shape
class Rectangle extends Shape {
  double width;
  double height;

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Override the abstract method to provide specific implementation
  @override
  double calculateArea() {
    return width * height;
  }

  // Override method to return the name of the shape
  @override
  String getShapeName() {
    return "Rectangle";
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(10.0, 20.0);

  // Using the common interface provided by the Shape abstract class
  circle.printInfo();  // Calls the concrete method in the abstract class
  print("Circle Area: ${circle.calculateArea()}\n");

  rectangle.printInfo();  // Calls the concrete method in the abstract class
  print("Rectangle Area: ${rectangle.calculateArea()}");
}
