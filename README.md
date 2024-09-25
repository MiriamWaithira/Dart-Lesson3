# Dart-Lesson3
This is the third lesson of Dart. The topics discussed are as follows.

1. Object Oriented Programming (OOP) in Dart.
    
    1. Classes- a blueprint for creating objects, encapsulating data (properties) and behavior (methods) in a single entity. In Dart, classes are created using the 'class' keyword.
    They allow you to organize your code by grouping related functionality.
    
    2. Objects- an object is an instance of a class, representing an individual entity created from the class blueprint.
    
    3. Constructors- are special methods used to initialize objects when they are created. They are defined using the class name. There are two main types namely
        1. Default Constructors- Automatically provided if no constructor is explicitly defined.

        2. Parameterized Constructor- Allows initialization of properties with specific values.
    
    4. Getters and Setters- Getters are used to retrieve the value of properties, and setters are used to modify them, providing control over how fields are accessed and modified.
    They are defined using the 'get' and 'set' keywords.

    5. Inheritance- allows a class to inherit properties and methods from another class, promoting code reuse.
    Uses the 'extends' keyword.

    6. Polymorphism- allows objects of different classes to be treated as objects of a common superclass, enabling different implementations of a method to be called through the same interface.

    7. Abstraction- is the concept of hiding implementation details and showing only the necessary features.
    This is achieved using abstract classes and methods.
    Abstract classes are declared using the 'abstract' keyword and cannot be instantiated.

2. Factory Methods- A factory method is a special constructor that provides more control over object creation. It can return an existing instance instead of creating a new one or contain logic before deciding what instance to return.
They are defined using the 'factory' keyword.
They are useful for implementing design patterns like Singleton.

3. Singleton Pattern- The Singleton Pattern ensures that a class has only one instance and provides a global access point to that instance.
This pattern is commonly implemented using a private constructor and a static instance.
It is useful when you need a single instance of a class to coordinate actions across the application, like in logging or managing a database connection.

4. Mixins- Mixins are a way to reuse a class's code in multiple class hierarchies without using inheritance. They are like classes but cannot be instantiated. They allow functionality to be shared across different classes.
They are defined using the 'mixin' keyword and mixed into a class using the with keyword.

5. Extension Methods- Extension methods allow you to add new functionality to existing libraries or classes without modifying their source code. They enable adding methods to pre-existing types in Dart.
They are defined using the 'extension' keyword.
They enhance the readability and functionality of existing classes without altering their structure.

NOTES

Data encapsulation is the process of keeping a class' implementation details hidden from the user through an object's functions.

Encapsulation primarily focuses on Classes, Objects, and Getters/Setters because they directly deal with bundling and protecting data.

Factory Methods and Singleton Patterns are design patterns that add another layer of encapsulation by controlling how objects are created and accessed.

Mixins and Extension methods are useful for code reuse and extending functionality.However, they do not directly contribute to encapsulation because they don't deal with the direct access or protection of class properties and methods.

HAPPY CODING!!!