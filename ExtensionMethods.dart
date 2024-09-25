// An extension method is a feature in Dart that allows developers to add new methods to existing classes or interfaces without changing their original implementation.
// These methods can be used as if they were part of the original class.
// In other words, extensions enable developers to add functionality to a class or interface that they did not write and don’t control.


// Extending the String class with an extension method
extension StringExtensions on String {
 // Method to capitalize the first letter of a string
 String capitalizeFirstLetter() {
  if (this.isEmpty) {
   return this;
  }
  return this[0].toUpperCase() + this.substring(1);
 }
 
}

void main() {
 // Create a String object
 String message = "hello, world!";
 // Use the extension method to capitalize the first letter
 String capitalizedMessage = message.capitalizeFirstLetter();
 // Print the result
 print(capitalizedMessage); // Output: Hello, world!
}