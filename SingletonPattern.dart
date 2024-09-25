// The singleton pattern is a pattern used in object-oriented programming which ensures that a class has only one instance.
// It also provides a global point of access to it.
// Singleton class to manage file system operations

class FileSystemManager {
  // Static and final instance variable to hold the single instance of the class
  static final FileSystemManager _instance = FileSystemManager._internal();

  // Private constructor to restrict external instantiation
  FileSystemManager._internal() { //meaning it can only be accessed within the FileSystemManager class
     //Initialization logic here
    print('Singleton instance created.');
  }
 
  // Factory constructor to ensure only one instance is created
  factory FileSystemManager() {
    return _instance; // Always returns the same instance
  }

  // Method to simulate opening a file
  void openFile(String fileName) {
    print('Opening file: $fileName');
  }

  // Method to simulate writing to a file
  void writeFile(String fileName, String content) {
    print('Writing to file: $fileName with content: "$content"');
  }
}

void main() {
  // Create two instances of the FileSystemManager singleton instance
  FileSystemManager manager1 = FileSystemManager(); // Uses factory constructor
  FileSystemManager manager2 = FileSystemManager(); // Returns the same instance

  // Verify that both references point to the same singleton instance
  print('Are manager1 and manager2 the same instance? ${identical(manager1, manager2)}');
  print('HashCode of manager1: ${manager1.hashCode}');
  print('HashCode of manager2: ${manager2.hashCode}');

  // The verification can also be achieved using this code
  // print(manager1.hashCode == manager2.hashCode); //Output: true

  // Calling methods of FileSystemManager
  manager1.openFile("data.txt"); // Opens the file using manager1
  manager2.writeFile("data.txt", "Hello, Dart!"); // Writes to the file using manager2
}