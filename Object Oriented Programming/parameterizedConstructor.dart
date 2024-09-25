// Parameterized constructors allow you to pass a value during object creation.
// They allow you to initialize instance variables with specific values.

// Define our class named Dog
class Dog {
  //declare the instance variables for name, age and breed
  //attributes of the class
  String name;
  int age;
  String breed;

  //the parameterized constructor for the class Dog
  //a constructor that cntains a list of properties
  //the parameter should have the same name as the class name
  Dog(this.name, this.age, this.breed);

  //Using arrow functions for the methods/behaviour of the class
  //Method/ function to make the dog bark
  void bark() => print('$name barks!');
  //Method/ function to make the dog eat
  void eat() => print('$name is eating!');
  //Method/ function to make the dog sleep
  void sleep() => print('$name is sleeping!');
}

//The Main function
void main(){
  //creating the instance(object) of the Dog
  //the instance is named myDog
  Dog myDog = Dog('Bruno', 3, 'Labrador');

  //printing the info about the dog, the name age and breed
  print('Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.breed}');

  //Calling the functions
  //calling the bark function
  myDog.bark();
  //calling the eat function
  myDog.eat();
  //calling the sleep function
  myDog.sleep();
}