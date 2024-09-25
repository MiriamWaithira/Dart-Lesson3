// Data Encapsulation- is the process of keeping a class' implementation details hidden from the user through an object's functions.
// Achieved by declaring the class properties as private.
// GETTER AND SETTER METHODS
// Getter and setter methods are used to access and update the value of private property.
// Getter Methods are used to access the value of private property.
// Setter Methods are used to update the value of private property.
// EXAMPLE 1
class Circle {
  //private variable
  double _radius;

  //constructor
  Circle(this._radius);

  //Getter for the radius
  double get radius => _radius;

  //Setter for the radius with validation- to update
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Invalid radius! It must be greater than 0.');
    }
  }

  //Method to calculate the area of the circle-Function
  double calculateArea() {
    return 3.14 * _radius * _radius;
  }
}
// The Main Function
void main() {
  //Creating the instance/object for the Circle class
  Circle myCircle = Circle(7.0);

  //Accessing the radius using the getter
  print('Initial Radius: ${myCircle.radius}');

  //Updating the circle radius using the setter method
  myCircle.radius = 7.0;

  //Accessing the update radius and calculate the area
  print('Updated/New Radius: ${myCircle.radius}');
  print('Area: ${myCircle.calculateArea()}');
}