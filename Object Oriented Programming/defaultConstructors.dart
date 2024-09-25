// A constructor in programming is a special method or function that is automatically called when an object is created.

// DEFAULT CONSTRUCTOR
// A default constructor is automatically created if no other constructor is specified.
// No parameter required.
// The int can be 0 and the string can be null
class MyDetails { //class declaration
//attributes of the class
  String name = 'Unknown';
  int age = 0;
}

void main() {
  MyDetails myDetails = MyDetails();
  print("Name: ${myDetails.name}, Age: ${myDetails.age}");
}