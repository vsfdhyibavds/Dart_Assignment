import 'dart:io';

void main() {
  // Prompt the user for a number
  print("Enter a number:");
  
  // Read the user input as a string and convert it to an integer
  int? number = int.tryParse(stdin.readLineSync()!);
  
  // Check if the input is valid
  if (number != null) {
    // Compare the number with 10 and print the appropriate message
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } else {
    // If the input is not a valid integer, print an error message
    print("Invalid input. Please enter a valid number.");
  }
}
