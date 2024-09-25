// Mixins are a way of reusing a class’s code in different class hierarchies.
// For example, you might have a class called Employee which has methods like clockIn.
// The code in those classes may be useful for both Bartender and Nurse.
// But, now imagine you're introducing a class called Doctor.
// You probably have some functionality on Nurse (such as a method called takeTemperature) that you'd like on Doctor, but not that you want to add to Employee.
// This is a great place to use a mixin called Medical.

// Base class Employee
class Employee {
  String name;

  // Constructor for Employee
  Employee(this.name);

  // Method that simulates an employee clocking in
  void clockIn() {
    print("$name clocked in");
  }
}

// Mixin for medical-related functionality
mixin Medical {
  // Method that simulates taking a patient's temperature
  int takeTemperature(String name) {
    print("$name taking the temperature");
    return 98; // Returns a sample temperature value
  }
}

// Class Nurse extends Employee and mixes in Medical
class Nurse extends Employee with Medical {
  Nurse(String name) : super(name);
  // Inherits clockIn from Employee
  // Inherits takeTemperature from Medical
}

// Class Doctor extends Employee and mixes in Medical
class Doctor extends Employee with Medical {
  Doctor(String name) : super(name);
  // Inherits clockIn from Employee
  // Inherits takeTemperature from Medical

  // Method specific to Doctor for performing surgery
  void performSurgery() {
    print("$name performing surgery");
  }
}

// Class Bartender extends Employee but does not mix in Medical
class Bartender extends Employee {
  Bartender(String name) : super(name);
  // Inherits clockIn from Employee
  // Does not have access to takeTemperature or performSurgery
}

void main() {
  // Create instances of different employee types
  Nurse nurse = Nurse("Nurse");
  Doctor doctor = Doctor("Doctor");
  Bartender bartender = Bartender("Bartender");

  // Use inherited methods
  nurse.clockIn(); // Nurse clocked in
  nurse.takeTemperature(nurse.name); // Nurse taking temperature

  doctor.clockIn(); // Doctor clocked in
  doctor.takeTemperature(doctor.name); // Doctor taking temperature
  doctor.performSurgery(); // Doctor performing surgery

  bartender.clockIn(); // Bartender clocked in
}
