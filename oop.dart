import 'dart:io';

// Base class
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name makes a sound.');
  }
}

// Interface
abstract class Pet {
  void showAffection();
}

// Derived class implementing the interface and overriding a method
class Dog extends Animal implements Pet {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void makeSound() {
    print('$name barks.');
  }

  void run() {
    print('$name is running.');
  }

  @override
  void showAffection() {
    print('$name shows affection.');
  }

  void performTricks(List<String> tricks) {
    for (var trick in tricks) {
      print('$name performs $trick.');
    }
  }
}

// Function to initialize a Dog instance from a file
Future<Dog> initializeDogFromFile(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();
  final name = lines[0];
  final breed = lines[1];
  return Dog(name, breed);
}

void main() async {
  // Initialize Dog instance from file
  var myDog = await initializeDogFromFile('dog_data.txt');

  // Accessing properties and calling methods
  print('Name: ${myDog.name}');
  print('Breed: ${myDog.breed}');

  myDog.makeSound();
  myDog.run();
  myDog.showAffection();

  // Demonstrating use of a loop
  var tricks = ['sit', 'roll over', 'play dead'];
  myDog.performTricks(tricks);
}
